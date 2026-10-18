package com.tencent.wecar.tts.client.presenter;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.tencent.taes.report.EventHelper;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecar.tts.client.TtsManagerInner;
import com.tencent.wecar.tts.client.login.ILoginStateListener;
import com.tencent.wecar.tts.client.login.TtsLogin;
import com.tencent.wecar.tts.client.net.INetWorkCallBack;
import com.tencent.wecar.tts.client.net.INetWorkPicCallBack;
import com.tencent.wecar.tts.client.net.TtsNetWork;
import com.tencent.wecar.tts.client.ttslist.beans.TtsData;
import com.tencent.wecar.tts.client.ttslist.dao.TtsRecordDao;
import com.tencent.wecar.tts.client.view.IPersonaliseView;
import com.tencent.wecar.tts.larklite.utils.ThreadUtils;
import com.tencent.wecar.tts.log.TtsLog;
import com.yftech.transfer.service.CarAppList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class PersonaliseTTSPresenter {
    private static final int ACTION_DATA_SIZE = 48;
    private static final String BASIC_URL = "https://gw.tai.qq.com/personaltts";
    private static final String LIST_DATA_URL = "/getCarTTSList";
    private static final String QRCODE_URL = "/qrcode";
    private static final String TAG = "PersonaliseTTSPresenter";
    private IPersonaliseView mView;
    private boolean mIsCurrentRequestPicture = false;
    private ILoginStateListener mLoginStateListener = new ILoginStateListener() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.1
        @Override // com.tencent.wecar.tts.client.login.ILoginStateListener
        public void onLoginSuccess() {
            TtsLog.d(PersonaliseTTSPresenter.TAG, "onLoginSuccess");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.1.1
                @Override // java.lang.Runnable
                public void run() {
                    PersonaliseTTSPresenter.this.mView.showLoginButton(false);
                    PersonaliseTTSPresenter.this.mView.showAttentionPicture(false);
                    PersonaliseTTSPresenter.this.mView.setInfo("正在加载");
                    PersonaliseTTSPresenter.this.mView.showRecordButton(true);
                    TtsData queryByInChose = new TtsRecordDao().queryByInChose(true, TtsLogin.getUserId());
                    if (queryByInChose != null && !queryByInChose.getModelname().isEmpty() && !queryByInChose.getNickname().isEmpty()) {
                        TtsManagerInner.getInstance().getITtsApi().setChooseTts(queryByInChose.getModelname(), queryByInChose.getNickname());
                    }
                    PersonaliseTTSPresenter.this.listDataRequest();
                }
            });
        }

        @Override // com.tencent.wecar.tts.client.login.ILoginStateListener
        public void onLoginFail(int i, String str) {
            TtsLog.d(PersonaliseTTSPresenter.TAG, "onLoginFail errorCode=" + i + ",msg=" + str);
        }

        @Override // com.tencent.wecar.tts.client.login.ILoginStateListener
        public void onLogout() {
            TtsLog.d(PersonaliseTTSPresenter.TAG, "onLogout");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.1.2
                @Override // java.lang.Runnable
                public void run() {
                    PersonaliseTTSPresenter.this.mView.showAppletQRCode(false);
                    PersonaliseTTSPresenter.this.mView.showRecordButton(false);
                    PersonaliseTTSPresenter.this.mView.showLoginButton(true);
                    PersonaliseTTSPresenter.this.mView.showAttentionPicture(true);
                    PersonaliseTTSPresenter.this.mView.setInfo("无自制语音包，录制语音包需先登录");
                    PersonaliseTTSPresenter.this.mView.showTtsList(false);
                }
            });
        }
    };
    private INetWorkCallBack mNetCallBack = new INetWorkCallBack() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.2
        @Override // com.tencent.wecar.tts.client.net.INetWorkCallBack
        public void onResult(int i, String str, String str2) {
            TtsLog.d(PersonaliseTTSPresenter.TAG, "INetWorkCallBack onResult ret=" + i + "，url=" + str2 + "response =" + str);
            if (i == -1) {
                PersonaliseTTSPresenter.this.showErrorMsgByUrl(str2);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str).getJSONObject("data");
                int optInt = jSONObject.optInt("errcode", 0);
                jSONObject.optString("errmsg", "成功");
                if (optInt != 0) {
                    PersonaliseTTSPresenter.this.showErrorMsgByUrl(str2);
                } else {
                    if (!str2.contains(PersonaliseTTSPresenter.LIST_DATA_URL)) {
                        TtsNetWork.requestPicture(jSONObject.optString("qrcodeUrl"), PersonaliseTTSPresenter.this.mNetPicCallBack);
                        return;
                    }
                    TtsLog.d(PersonaliseTTSPresenter.TAG, jSONObject.toString());
                    PersonaliseTTSPresenter.this.mTtsDataList.addAll(PersonaliseTTSPresenter.this.makeList(jSONObject.getJSONArray("ttsDataList")));
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PersonaliseTTSPresenter.this.mView.showLoadLinearLayout(false);
                            PersonaliseTTSPresenter.this.mView.showInfoView(PersonaliseTTSPresenter.this.mTtsDataList);
                        }
                    });
                }
            } catch (JSONException e) {
                e.printStackTrace();
                PersonaliseTTSPresenter.this.showErrorMsgByUrl(str2);
            }
        }
    };
    private INetWorkPicCallBack mNetPicCallBack = new INetWorkPicCallBack() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.3
        @Override // com.tencent.wecar.tts.client.net.INetWorkPicCallBack
        public void onResult(int i, byte[] bArr) {
            TtsLog.d(PersonaliseTTSPresenter.TAG, "INetWorkPicCallBack onResult ret=" + i);
            if (i == -1 || bArr == null || bArr.length < 1) {
                PersonaliseTTSPresenter.this.showErrMsg("加载失败", false);
                return;
            }
            final Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (decodeByteArray == null) {
                PersonaliseTTSPresenter.this.showErrMsg("加载失败", false);
            } else {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PersonaliseTTSPresenter.this.mView.showLoadingView(false);
                        PersonaliseTTSPresenter.this.mView.setAppletQRCode(decodeByteArray);
                        PersonaliseTTSPresenter.this.mView.showInfoView(null);
                        PersonaliseTTSPresenter.this.mView.setInfo("微信扫码，手机录制语音包");
                        PersonaliseTTSPresenter.this.mView.showAttentionPicture(false);
                        ArrayMap arrayMap = new ArrayMap(48);
                        arrayMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
                        EventHelper.getInstance().userAction("customtts_qrcode", arrayMap);
                    }
                });
            }
        }
    };
    private ArrayList<String> mLocalDbData = new ArrayList<>();
    private ArrayList<TtsData> mTtsDataList = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TtsData> makeList(JSONArray jSONArray) {
        ArrayList<TtsData> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    Iterator<TtsData> it = this.mTtsDataList.iterator();
                    while (it.hasNext()) {
                        TtsData next = it.next();
                        if (next.getTaskid().equals(jSONObject.optString(TtsData.COLUMNNAME_TASKID)) && !TextUtils.isEmpty(next.getNickname()) && !next.getNickname().equals(jSONObject.optString("nickname"))) {
                            next.setNickname(jSONObject.optString("nickname"));
                            new TtsRecordDao().update(next);
                            TtsManagerInner.getInstance().getITtsApi().setChooseTts(next.getModelname(), next.getNickname());
                        }
                    }
                    if (!this.mLocalDbData.contains(jSONObject.optString(TtsData.COLUMNNAME_TASKID)) && !TextUtils.isEmpty(jSONObject.optString("nickname"))) {
                        arrayList.add(new TtsData(jSONObject.optString("demoWavPath"), jSONObject.optString("modelPath"), jSONObject.getInt("modelSize"), jSONObject.optString(TtsData.COLUMNNAME_NAME), jSONObject.optString("nickname"), jSONObject.optString(NotificationCompat.CATEGORY_STATUS), jSONObject.optString(TtsData.COLUMNNAME_TASKID), jSONObject.getInt("trainProgress"), jSONObject.getInt("voiceType"), TtsLogin.getUserId()));
                        ArrayMap arrayMap = new ArrayMap(48);
                        arrayMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
                        arrayMap.put("voicetype", jSONObject.optString("voiceType"));
                        arrayMap.put("nickname", jSONObject.optString("nickname"));
                        EventHelper.getInstance().userAction("customtts_voicepacket_count", arrayMap);
                    }
                } catch (Exception e) {
                    TtsLog.d(TAG, e.getMessage());
                    e.printStackTrace();
                    return arrayList;
                }
            } catch (Throwable unused) {
                return arrayList;
            }
        }
        return arrayList;
    }

    public PersonaliseTTSPresenter(IPersonaliseView iPersonaliseView) {
        this.mView = iPersonaliseView;
    }

    public void init() {
        TtsLog.d(TAG, "init");
        this.mIsCurrentRequestPicture = false;
        TtsLogin.registerLoginStateListener(this.mLoginStateListener);
        showUI();
    }

    private void showUI() {
        if (TtsLogin.isLogged()) {
            this.mView.showLoginButton(false);
            this.mView.setInfo("正在加载");
            this.mView.showRecordButton(true);
            listDataRequest();
            return;
        }
        this.mView.showAttentionPicture(true);
        this.mView.setInfo("无自制语音包，录制语音包需先登录");
        this.mView.showLoginButton(true);
        this.mView.showRecordButton(false);
    }

    public void login() {
        TtsLog.d(TAG, "Login");
        TtsLogin.login();
    }

    public void recordVoice() {
        this.mIsCurrentRequestPicture = true;
        this.mView.showRecordButton(false);
        this.mView.showLoadLinearLayout(false);
        this.mView.showRetryButton(false);
        this.mView.showAppletQRCode(false);
        this.mView.showTtsList(false);
        this.mView.showLoadingView(true);
        this.mView.setInfo("正在加载二维码");
        this.mView.showLoginButton(false);
        this.mView.showAttentionPicture(false);
        HashMap hashMap = new HashMap();
        hashMap.put("seqId", "QRCode");
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_VER, CarAppList.MediaPage.PAGE_FM);
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
        hashMap.put("wecarid", TtsLogin.getWeCarId());
        TtsNetWork.request("https://gw.tai.qq.com/personaltts/qrcode", hashMap, this.mNetCallBack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrMsg(final String str, final boolean z) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter.4
            @Override // java.lang.Runnable
            public void run() {
                PersonaliseTTSPresenter.this.mView.showLoadingView(false);
                PersonaliseTTSPresenter.this.mView.showLoadLinearLayout(false);
                PersonaliseTTSPresenter.this.mView.setInfo("");
                PersonaliseTTSPresenter.this.mView.showToast(str);
                if (z) {
                    PersonaliseTTSPresenter.this.mView.showRetryButton(true);
                    if (PersonaliseTTSPresenter.this.mLocalDbData.size() < 1) {
                        PersonaliseTTSPresenter.this.mView.setInfo("网络不佳，未能同步录音");
                        return;
                    }
                    return;
                }
                PersonaliseTTSPresenter.this.mView.showRetryButton(false);
                PersonaliseTTSPresenter.this.mView.showQRCodeRefreshView();
                PersonaliseTTSPresenter.this.mView.setInfo("二维码加载失败");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void listDataRequest() {
        this.mTtsDataList.addAll(new TtsRecordDao().queryByUserId(TtsLogin.getUserId()));
        if (this.mTtsDataList != null && this.mTtsDataList.size() > 0) {
            Iterator<TtsData> it = this.mTtsDataList.iterator();
            while (it.hasNext()) {
                this.mLocalDbData.add(it.next().getTaskid());
            }
            this.mView.showInfoView(this.mTtsDataList);
            this.mView.showLoadLinearLayout(true);
        } else {
            this.mView.showLoadingView(true);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("seqId", "listData");
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_VER, CarAppList.MediaPage.PAGE_FM);
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
        hashMap.put("wecarid", TtsLogin.getWeCarId());
        TtsNetWork.request("https://gw.tai.qq.com/personaltts/getCarTTSList", hashMap, this.mNetCallBack);
    }

    public void retry() {
        this.mIsCurrentRequestPicture = false;
        this.mView.showRetryButton(false);
        if (this.mLocalDbData.size() > 0) {
            this.mView.showLoadLinearLayout(true);
        } else {
            this.mView.setInfo("正在加载");
            this.mView.showLoadingView(true);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("seqId", "listData");
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_VER, CarAppList.MediaPage.PAGE_FM);
        hashMap.put(FeedBackConstants.CALLBACK_PARAM_USERID, TtsLogin.getUserId());
        hashMap.put("wecarid", TtsLogin.getWeCarId());
        TtsNetWork.request("https://gw.tai.qq.com/personaltts/getCarTTSList", hashMap, this.mNetCallBack);
    }

    void showErrorMsgByUrl(String str) {
        if (str.contains(LIST_DATA_URL)) {
            if (this.mIsCurrentRequestPicture) {
                return;
            }
            showErrMsg("加载失败", true);
            return;
        }
        showErrMsg("加载失败", false);
    }

    public void onDestroy() {
        TtsLog.d(TAG, "onDestroy");
        TtsLogin.unregisterLoginStateListener(this.mLoginStateListener);
    }
}
