package com.tencent.wecar.tts.client.ttslist;

import android.content.Context;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.taes.remote.api.tts.listener.IPlayingListener;
import com.tencent.taes.report.EventHelper;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecar.tts.R;
import com.tencent.wecar.tts.client.TtsManagerInner;
import com.tencent.wecar.tts.client.login.TtsLogin;
import com.tencent.wecar.tts.client.net.DownLoadModlelCallBack;
import com.tencent.wecar.tts.client.net.HttpConnectionUtil;
import com.tencent.wecar.tts.client.ttslist.PlayerMgr;
import com.tencent.wecar.tts.client.ttslist.beans.TtsData;
import com.tencent.wecar.tts.client.ttslist.dao.TtsRecordDao;
import com.tencent.wecar.tts.larklite.utils.ContextHolder;
import com.tencent.wecar.tts.larklite.utils.MemFormat;
import com.tencent.wecar.tts.larklite.utils.StorageUtils;
import com.tencent.wecar.tts.larklite.utils.ThreadUtils;
import com.tencent.wecar.tts.log.TtsLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsItemsAdapter extends RecyclerView.Adapter<TtsViewHolder> {
    private static final String TAG = "TtsItemsAdapter";
    private final Context mContext;
    private ArrayList<TtsData> mLocalDataSet;
    private Typeface mTf;
    private boolean mNeedSetModel = false;
    private int mPlayingPos = -1;
    private TtsData mCurrentChoseTts = null;
    private boolean mIsNetPlaying = false;
    private boolean mIsTtsPlaying = false;
    private IPlayingListener mPlayingListener = z -> {
        if (z && this.mIsNetPlaying) {
            PlayerMgr.getInstance().stop();
        }
        this.mIsTtsPlaying = z;
        Log.d(TAG, "tts onPlayingChanged,mIsTtsPlaying =" + this.mIsTtsPlaying);
    };
    private final TtsRecordDao mTtsRecordDao = new TtsRecordDao();

    /* loaded from: /home/user/work/dex/classes.dex */
    public class TtsViewHolder extends RecyclerView.ViewHolder {
        public final ImageView cb;
        public final DownLoadingView ivDo;
        public final ImageView ivHead;
        public final ImageView ivPlay;
        public final LinearLayout llDelete;
        public final TextView tvCancel;
        public final TextView tvDelete;
        public final TextView tvName;
        public final TextView tvStatus;

        public TtsViewHolder(View view) {
            super(view);
            this.tvDelete = (TextView) view.findViewById(R.id.tv_delete);
            this.cb = (ImageView) view.findViewById(R.id.iv_choose);
            this.tvCancel = (TextView) view.findViewById(R.id.tv_cancel);
            this.llDelete = (LinearLayout) view.findViewById(R.id.ll_delete);
            this.tvName = (TextView) view.findViewById(R.id.tv_name);
            this.tvStatus = (TextView) view.findViewById(R.id.tv_status);
            this.tvStatus.setTypeface(TtsItemsAdapter.this.mTf);
            this.ivHead = (ImageView) view.findViewById(R.id.iv_head);
            this.ivPlay = (ImageView) view.findViewById(R.id.iv_play);
            this.ivPlay.setOnClickListener(view2 -> {
                if (TtsItemsAdapter.this.mIsNetPlaying) {
                    PlayerMgr.getInstance().stop();
                    if (TtsItemsAdapter.this.mPlayingPos != getLayoutPosition()) {
                        startPlay();
                        return;
                    }
                    return;
                }
                startPlay();
            });
            this.ivDo = (DownLoadingView) view.findViewById(R.id.iv_do);
            view.setOnClickListener(view3 -> {
                TtsData ttsData = (TtsData) TtsItemsAdapter.this.mLocalDataSet.get(getLayoutPosition());
                String localPath = ttsData.getLocalPath();
                if (TtsItemsAdapter.this.mCurrentChoseTts != ttsData && !TextUtils.isEmpty(localPath)) {
                    PlayerMgr.getInstance().stop();
                    TtsManagerInner.getInstance().getITtsApi().setAppendTtsSpeakerPath(localPath.substring(0, localPath.lastIndexOf(File.separator)));
                    TtsManagerInner.getInstance().getITtsApi().setChooseTts(ttsData.getModelname(), ttsData.getNickname());
                    if (TtsItemsAdapter.this.mCurrentChoseTts != null) {
                        TtsItemsAdapter.this.mCurrentChoseTts.setInChose(false);
                        TtsItemsAdapter.this.mTtsRecordDao.update(TtsItemsAdapter.this.mCurrentChoseTts);
                    }
                    ttsData.setInChose(true);
                    TtsLog.d(TtsItemsAdapter.TAG, "set TtsSpeakerPath=" + localPath.substring(0, localPath.lastIndexOf(File.separator)) + ",Modelname=" + ttsData.getModelname());
                    this.cb.setVisibility(0);
                    this.tvStatus.setText("已选中");
                    this.tvStatus.setTextColor(TtsItemsAdapter.this.mContext.getResources().getColor(R.color.in_chose_text_color));
                    TtsItemsAdapter.this.mCurrentChoseTts = ttsData;
                    TtsItemsAdapter.this.mTtsRecordDao.update(ttsData);
                    ArrayMap arrayMap = new ArrayMap(48);
                    Date date = new Date();
                    arrayMap.put("entrytype", TtsItemsAdapter.this.mContext.getPackageName());
                    arrayMap.put("time", date.toLocaleString());
                    arrayMap.put(TtsData.COLUMNNAME_TASKID, ttsData.getTaskid());
                    EventHelper.getInstance().userAction("customtts_voicepacket_use", arrayMap);
                }
                Iterator it = TtsItemsAdapter.this.mLocalDataSet.iterator();
                while (it.hasNext()) {
                    ((TtsData) it.next()).mIsShowDelete = false;
                }
                TtsItemsAdapter.this.notifyDataSetChanged();
            });
            this.ivDo.setOnClickListener(view4 -> {
                if (getLayoutPosition() >= 0) {
                    if (getLayoutPosition() > TtsItemsAdapter.this.mLocalDataSet.size() - 1) {
                        return;
                    }
                    TtsData ttsData = (TtsData) TtsItemsAdapter.this.mLocalDataSet.get(getLayoutPosition());
                    TtsLog.d(TtsItemsAdapter.TAG, "model status=" + ttsData.getStatus());
                    if (!"FINISHED".equals(ttsData.getStatus())) {
                        Toast.makeText(ContextHolder.getContext(), "无法下载", 0).show();
                        return;
                    }
                    if (this.ivDo.mNotFinished) {
                        ttsData.mIsShowDelete = false;
                        this.ivDo.setVisibility(0);
                        this.llDelete.setVisibility(8);
                        TtsLog.d(TtsItemsAdapter.TAG, "isDownLoading=" + ttsData.mIsDownLoading + ttsData.getNickname());
                        if (ttsData.mIsDownLoading) {
                            return;
                        }
                        TtsItemsAdapter.this.mNeedSetModel = getLayoutPosition() == 0;
                        TtsItemsAdapter.this.startDownLoad(ttsData, this.ivDo, this.tvStatus, this.cb);
                        return;
                    }
                    if (!ttsData.getInChose()) {
                        Iterator it = TtsItemsAdapter.this.mLocalDataSet.iterator();
                        while (it.hasNext()) {
                            ((TtsData) it.next()).mIsShowDelete = false;
                        }
                        ttsData.mIsShowDelete = true;
                        TtsItemsAdapter.this.notifyDataSetChanged();
                        return;
                    }
                    Toast.makeText(ContextHolder.getContext(), "当前角色已选中", 0).show();
                }
            });
            this.tvDelete.setOnClickListener(view5 -> {
                TtsData ttsData = (TtsData) TtsItemsAdapter.this.mLocalDataSet.get(getLayoutPosition());
                new File(ttsData.getLocalPath()).delete();
                TtsItemsAdapter.this.mTtsRecordDao.delete(ttsData);
                ttsData.setLocalPath("");
                ttsData.setProgress(0);
                ttsData.setInChose(false);
                ttsData.mIsShowDelete = false;
                TtsItemsAdapter.this.mTtsRecordDao.delete(ttsData);
                this.cb.setVisibility(8);
                TtsItemsAdapter.this.mLocalDataSet.remove(getLayoutPosition());
                TtsItemsAdapter.this.mLocalDataSet.add(ttsData);
                TtsItemsAdapter.this.notifyDataSetChanged();
            });
            this.tvCancel.setOnClickListener(view6 -> {
                ((TtsData) TtsItemsAdapter.this.mLocalDataSet.get(getLayoutPosition())).mIsShowDelete = false;
                resetView();
            });
        }

        private void startPlay() {
            Log.d(TtsItemsAdapter.TAG, "try startPlay net,mIsTtsPlaying =" + TtsItemsAdapter.this.mIsTtsPlaying);
            if (TtsItemsAdapter.this.mIsTtsPlaying) {
                return;
            }
            TtsItemsAdapter.this.mPlayingPos = getLayoutPosition();
            PlayerMgr.getInstance().play(((TtsData) TtsItemsAdapter.this.mLocalDataSet.get(TtsItemsAdapter.this.mPlayingPos)).getDemoWavPath(), new PlayerMgr.SimplePlayCallBack() { // from class: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter.TtsViewHolder.1
                @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.SimplePlayCallBack, com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
                public void onPlayStart(String str) {
                    Log.d(TtsItemsAdapter.TAG, "onStartPlay:" + str);
                    TtsItemsAdapter.this.mIsNetPlaying = true;
                }

                @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.SimplePlayCallBack, com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
                public void onPlayStop() {
                    TtsLog.d(TtsItemsAdapter.TAG, "onPlayStop");
                    TtsItemsAdapter.this.mIsNetPlaying = false;
                }

                @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.SimplePlayCallBack, com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
                public void onPlayEnd(MediaPlayer mediaPlayer) {
                    TtsLog.d(TtsItemsAdapter.TAG, "onEndPlay");
                    TtsItemsAdapter.this.mIsNetPlaying = false;
                }
            });
        }

        public void resetView() {
            this.llDelete.setVisibility(8);
            this.ivDo.setVisibility(0);
        }
    }

    private boolean isNetworkConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        return connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDownLoad(TtsData ttsData, DownLoadingView downLoadingView, TextView textView, ImageView imageView) {
        if (!isNetworkConnected()) {
            Toast.makeText(this.mContext, "网络不可用", 0).show();
        } else {
            ttsData.mIsDownLoading = true;
            ThreadUtils.runOnWorkerThread(new AnonymousClass1(ttsData, downLoadingView, textView, imageView));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ ImageView val$cb;
        final /* synthetic */ DownLoadingView val$ivDo;
        final /* synthetic */ TtsData val$ttsData;
        final /* synthetic */ TextView val$tvStatus;

        AnonymousClass1(TtsData ttsData, DownLoadingView downLoadingView, TextView textView, ImageView imageView) {
            this.val$ttsData = ttsData;
            this.val$ivDo = downLoadingView;
            this.val$tvStatus = textView;
            this.val$cb = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StorageUtils.getAvailableInternalMemorySize() < 100.0f) {
                Toast.makeText(ContextHolder.getContext(), "存储空间小于100Mb", 0).show();
                return;
            }
            HttpConnectionUtil.downloadFile(this.val$ttsData.getModelPath(), "/" + TtsLogin.getUserId(), new DownLoadModlelCallBack() { // from class: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter.1.1
                @Override // com.tencent.wecar.tts.client.net.DownLoadModlelCallBack
                public void onStart(long j, long j2, float f) {
                }

                @Override // com.tencent.wecar.tts.client.net.DownLoadModlelCallBack
                public void onProgress(final long j, final long j2, final float f) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1.this.val$ivDo.setProgress((int) f);
                            AnonymousClass1.this.val$tvStatus.setText(MemFormat.formatSize2StrMb(Long.valueOf(j)) + "/" + MemFormat.formatSize2StrMb(Long.valueOf(j2)));
                        }
                    });
                }

                @Override // com.tencent.wecar.tts.client.net.DownLoadModlelCallBack
                public void onFinish(final File file) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter.1.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1.this.val$ttsData.mIsDownLoading = false;
                            AnonymousClass1.this.val$ivDo.setProgress(100);
                            AnonymousClass1.this.val$tvStatus.setText("已下载");
                            if (file != null) {
                                String absolutePath = file.getAbsolutePath();
                                AnonymousClass1.this.val$ttsData.setLocalPath(absolutePath);
                                AnonymousClass1.this.val$ttsData.setProgress(100);
                                TtsLog.d(TtsItemsAdapter.TAG, "mNeedSetModel=" + TtsItemsAdapter.this.mNeedSetModel);
                                if (TtsItemsAdapter.this.mNeedSetModel) {
                                    TtsManagerInner.getInstance().getITtsApi().setAppendTtsSpeakerPath(absolutePath.substring(0, absolutePath.lastIndexOf(File.separator)));
                                    TtsManagerInner.getInstance().getITtsApi().setChooseTts(AnonymousClass1.this.val$ttsData.getModelname(), AnonymousClass1.this.val$ttsData.getNickname());
                                    TtsLog.d(TtsItemsAdapter.TAG, "set TtsSpeakerPath=" + absolutePath.substring(0, absolutePath.lastIndexOf(File.separator)) + ",Modelname=" + AnonymousClass1.this.val$ttsData.getModelname());
                                    AnonymousClass1.this.val$cb.setVisibility(0);
                                    AnonymousClass1.this.val$tvStatus.setText("已选中");
                                    AnonymousClass1.this.val$tvStatus.setTextColor(TtsItemsAdapter.this.mContext.getResources().getColor(R.color.in_chose_text_color));
                                    AnonymousClass1.this.val$ttsData.setInChose(true);
                                    TtsItemsAdapter.this.mCurrentChoseTts = AnonymousClass1.this.val$ttsData;
                                }
                                TtsItemsAdapter.this.mTtsRecordDao.insertOrUpdate(AnonymousClass1.this.val$ttsData);
                                TtsItemsAdapter.this.mLocalDataSet.remove(AnonymousClass1.this.val$ttsData);
                                TtsItemsAdapter.this.mLocalDataSet.add(0, AnonymousClass1.this.val$ttsData);
                                TtsItemsAdapter.this.notifyDataSetChanged();
                                TtsLog.d(TtsItemsAdapter.TAG, "下载完成=" + absolutePath);
                                ArrayMap arrayMap = new ArrayMap(48);
                                arrayMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
                                arrayMap.put("voicetype", AnonymousClass1.this.val$ttsData.getVoiceType() + "");
                                arrayMap.put("nickname", AnonymousClass1.this.val$ttsData.getNickname());
                                EventHelper.getInstance().userAction("customtts_voicepacket_download", arrayMap);
                                return;
                            }
                            TtsLog.d(TtsItemsAdapter.TAG, "file = null");
                        }
                    });
                }

                @Override // com.tencent.wecar.tts.client.net.DownLoadModlelCallBack
                public void onError(String str) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter.1.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(ContextHolder.getContext(), "下载失败", 0).show();
                            AnonymousClass1.this.val$ttsData.mIsDownLoading = false;
                            AnonymousClass1.this.val$ivDo.setProgress(0);
                            AnonymousClass1.this.val$tvStatus.setText("下载失败");
                        }
                    });
                }
            });
        }
    }

    public TtsItemsAdapter(ArrayList<TtsData> arrayList, Context context) {
        this.mLocalDataSet = arrayList;
        this.mContext = context.getApplicationContext();
        this.mTf = Typeface.createFromAsset(context.getAssets(), "font/din_medium.otf");
        TtsManagerInner.getInstance().getITtsApi().addPlayingListener(this.mPlayingListener);
    }

    public TtsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new TtsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.tts_row_item, viewGroup, false));
    }

    public void onBindViewHolder(TtsViewHolder ttsViewHolder, int i) {
        ttsViewHolder.tvName.setText(handleName(this.mLocalDataSet.get(i).getNickname()));
        if (!this.mLocalDataSet.get(i).mIsShowDelete) {
            ttsViewHolder.llDelete.setVisibility(8);
            ttsViewHolder.ivDo.setVisibility(0);
        } else {
            ttsViewHolder.llDelete.setVisibility(0);
            ttsViewHolder.ivDo.setVisibility(8);
        }
        ttsViewHolder.tvStatus.setText(this.mLocalDataSet.get(i).getProgress() >= 100 ? "已下载" : MemFormat.formatSize2StrMb(Long.valueOf(this.mLocalDataSet.get(i).getModelSize())));
        ttsViewHolder.ivDo.setProgress(this.mLocalDataSet.get(i).getProgress());
        ttsViewHolder.ivHead.setImageResource(getImage(this.mLocalDataSet.get(i).getVoiceType()));
        if (this.mLocalDataSet.get(i).getInChose()) {
            this.mCurrentChoseTts = this.mLocalDataSet.get(i);
        }
        ttsViewHolder.cb.setVisibility(this.mLocalDataSet.get(i).getInChose() ? 0 : 8);
        if (this.mLocalDataSet.get(i).getProgress() >= 100 && this.mLocalDataSet.get(i).getInChose()) {
            ttsViewHolder.tvStatus.setText("已选中");
            ttsViewHolder.tvStatus.setTextColor(this.mContext.getResources().getColor(R.color.in_chose_text_color));
        } else {
            ttsViewHolder.tvStatus.setTextColor(this.mContext.getResources().getColor(R.color.not_in_chose_text_color));
        }
    }

    private String handleName(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() <= 18) {
            return str;
        }
        return str.substring(0, 16) + "...";
    }

    private int getImage(int i) {
        switch (i) {
            case 0:
                return R.drawable.girl_avatar;
            case 1:
                return R.drawable.avatar;
            case 2:
                return R.drawable.women_avatar;
            case 3:
                return R.drawable.men_avatar;
            default:
                return R.drawable.girl_avatar;
        }
    }

    public int getItemCount() {
        return this.mLocalDataSet.size();
    }

    public void removePlayingListener() {
        if (this.mPlayingListener != null) {
            TtsManagerInner.getInstance().getITtsApi().removePlayingListener(this.mPlayingListener);
        }
    }
}
