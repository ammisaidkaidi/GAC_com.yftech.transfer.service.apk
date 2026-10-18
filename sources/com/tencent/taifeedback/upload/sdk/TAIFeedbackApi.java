package com.tencent.taifeedback.upload.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import com.tencent.taifeedback.upload.sdk.helper.ResultHelper;
import com.tencent.taifeedback.upload.sdk.helper.UploadHelper;
import com.tencent.taifeedback.upload.sdk.listener.ShakeListener;
import com.tencent.taifeedback.upload.sdk.utils.FileUtils;
import com.tencent.taifeedback.upload.sdk.utils.GLSurfaceUtils;
import com.tencent.taifeedback.upload.sdk.utils.SettingsUtils;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import com.tencent.taifeedback.upload.sdk.utils.ZipUtil;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIFeedbackApi {
    private static TAIFeedbackApi api;
    private String guid;
    private ShakeListener shakeListener = null;

    /* loaded from: /home/user/work/dex/classes.dex */
    interface Callback {
        void run();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface SendCallback {
        void onFail(ResultHelper resultHelper);

        void onSuccess(ResultHelper resultHelper);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface SubmitCallback {
        void onFail(String str);

        void onSuccess(String str);
    }

    public static TAIFeedbackApi getInstance() {
        if (api == null) {
            api = new TAIFeedbackApi();
        }
        return api;
    }

    public static void destroy() {
        FileUtils.getInstance().destroy();
        SettingsUtils.getInstance().destroy();
        Utils.getInstance().destroy();
        ZipUtil.getInstance().destroy();
        GLSurfaceUtils.getInstance().destroy();
        api = null;
    }

    public void createScreenShot(Activity activity) {
        Utils.getInstance().takeScreenShot(activity);
    }

    public void deleteScreenShot(Context context) {
        FileUtils fileUtils = FileUtils.getInstance();
        String storePath = FileUtils.getInstance().getStorePath(context);
        FileUtils.getInstance().getClass();
        fileUtils.deleteFileByExt(storePath, ".png");
    }

    public void deleteTempData(Context context) {
        FileUtils.getInstance().deleteSubFiles(FileUtils.getInstance().getStorePath(context));
    }

    public void pullFeedbackList(Context context, String str, String str2, String str3, Map<String, String> map, Map<String, String> map2, SubmitCallback submitCallback) {
        new PullFeedbackListTask(context, str, str2, str3, map, map2, submitCallback).execute(new Void[0]);
    }

    public void pullFeedbackMp3(Context context, String str, String str2, String str3, Map<String, String> map, Map<String, String> map2, SubmitCallback submitCallback) {
        new PullFeedbackMp3Task(context, str, str2, str3, map2, submitCallback).execute(new Void[0]);
    }

    public void bindFeedbackTask(Context context, String str, String str2, Map<String, String> map, SubmitCallback submitCallback) {
        new BindFeedbackTask(context, str, str2, map, submitCallback).execute(new Void[0]);
    }

    @TargetApi(3)
    public void submitDataAsync(Context context, String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2, List<String> list, SendCallback sendCallback, Properties properties) {
        LogUtils.d("bugreport", " bugreport submitDataAsync time = " + str3);
        new RequestTask(context, str, str2, str4, str5, str3, z, map, map2, list, sendCallback, properties).execute(new Void[0]);
    }

    public String captureLog(Context context) {
        return Utils.getInstance().seekLogcat(context);
    }

    public String captureLog(Context context, String str) {
        return Utils.getInstance().seekLogcat(context, str);
    }

    public void startShake(Context context, final Callback callback) {
        this.shakeListener = new ShakeListener(context);
        this.shakeListener.setOnShakeListener(new ShakeListener.OnShakeListener() { // from class: com.tencent.taifeedback.upload.sdk.TAIFeedbackApi.1
            @Override // com.tencent.taifeedback.upload.sdk.listener.ShakeListener.OnShakeListener
            public void onShake() {
                TAIFeedbackApi.this.shakeListener.stop();
                if (callback != null) {
                    callback.run();
                }
                TAIFeedbackApi.this.shakeListener.start();
            }
        });
    }

    public void stopShake() {
        if (this.shakeListener != null) {
            this.shakeListener.stop();
        }
    }

    @TargetApi(3)
    /* loaded from: /home/user/work/dex/classes.dex */
    private class RequestTask extends AsyncTask<Void, Void, ResultHelper> {
        private Context mContext;
        private String mDesc;
        private List<String> mExtraFileList;
        private boolean mIsCaptureLog;
        private SendCallback mListener;
        private Map<String, String> mMap;
        private String mPkg;
        private Properties mProperties;
        private Map<String, String> mSigMap;
        private String mTime;
        private String mUid;
        private String mUsername;

        public RequestTask(Context context, String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2, List<String> list, SendCallback sendCallback, Properties properties) {
            this.mContext = context;
            this.mDesc = str;
            this.mUsername = str2;
            this.mTime = str5;
            this.mUid = str3;
            this.mPkg = str4;
            this.mIsCaptureLog = z;
            this.mMap = map;
            this.mSigMap = map2;
            this.mExtraFileList = list;
            this.mListener = sendCallback;
            this.mProperties = properties;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResultHelper doInBackground(Void... voidArr) {
            if (UploadHelper.getIsFlieLock()) {
                ResultHelper resultHelper = new ResultHelper();
                resultHelper.setCode(1);
                resultHelper.setMsg(new String("上一个反馈的数据还在处理，反馈速度过快，请稍后反馈"));
                return resultHelper;
            }
            UploadHelper.setFileLock();
            if (this.mIsCaptureLog) {
                Utils.getInstance().seekLogcat(this.mContext);
            }
            if (this.mExtraFileList != null) {
                Utils.getInstance().saveExtraFile(this.mContext, this.mExtraFileList);
            }
            return new UploadHelper().prepare(this.mContext, this.mDesc, this.mUsername, this.mUid, this.mPkg, this.mTime, this.mMap, this.mSigMap, this.mProperties);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResultHelper resultHelper) {
            super.onPostExecute((RequestTask) resultHelper);
            if (resultHelper.getCode() == 0) {
                this.mListener.onSuccess(resultHelper);
            } else {
                this.mListener.onFail(resultHelper);
            }
        }
    }

    @TargetApi(3)
    /* loaded from: /home/user/work/dex/classes.dex */
    private class PullFeedbackListTask extends AsyncTask<Void, Void, ResultHelper> {
        private Context mContext;
        private SubmitCallback mListener;
        private Map<String, String> mMap;
        private String mPkg;
        private Map<String, String> mSigMap;
        private String mUserid;
        private String mWecarid;

        public PullFeedbackListTask(Context context, String str, String str2, String str3, Map<String, String> map, Map<String, String> map2, SubmitCallback submitCallback) {
            this.mContext = context;
            this.mUserid = str;
            this.mPkg = str2;
            this.mWecarid = str3;
            this.mMap = map;
            this.mSigMap = map2;
            this.mListener = submitCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResultHelper doInBackground(Void... voidArr) {
            return new UploadHelper().pullFeedbackList(this.mContext, this.mUserid, this.mPkg, this.mWecarid, this.mMap, this.mSigMap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResultHelper resultHelper) {
            super.onPostExecute((PullFeedbackListTask) resultHelper);
            if (resultHelper.getCode() == 0) {
                this.mListener.onSuccess(resultHelper.getMsg());
            } else {
                this.mListener.onFail(resultHelper.getMsg());
            }
        }
    }

    @TargetApi(3)
    /* loaded from: /home/user/work/dex/classes.dex */
    private class BindFeedbackTask extends AsyncTask<Void, Void, ResultHelper> {
        private Context mContext;
        private SubmitCallback mListener;
        private Map<String, String> mSigMap;
        private String mUid;
        private String mWecarid;

        public BindFeedbackTask(Context context, String str, String str2, Map<String, String> map, SubmitCallback submitCallback) {
            this.mContext = context;
            this.mUid = str;
            this.mWecarid = str2;
            this.mSigMap = map;
            this.mListener = submitCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResultHelper doInBackground(Void... voidArr) {
            return new UploadHelper().bindFeedback(this.mContext, this.mUid, this.mWecarid, this.mSigMap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResultHelper resultHelper) {
            super.onPostExecute((BindFeedbackTask) resultHelper);
            if (resultHelper.getCode() == 0) {
                this.mListener.onSuccess(resultHelper.getMsg());
            } else {
                this.mListener.onFail(resultHelper.getMsg());
            }
        }
    }

    @TargetApi(3)
    /* loaded from: /home/user/work/dex/classes.dex */
    private class PullFeedbackMp3Task extends AsyncTask<Void, Void, ResultHelper> {
        private String feedbackid;
        private String historyPath;
        private Context mContext;
        private SubmitCallback mListener;
        private Map<String, String> mSigMap;
        private String wecarid;

        public PullFeedbackMp3Task(Context context, String str, String str2, String str3, Map<String, String> map, SubmitCallback submitCallback) {
            this.mContext = context;
            this.wecarid = str;
            this.feedbackid = str2;
            this.historyPath = str3;
            this.mSigMap = map;
            this.mListener = submitCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResultHelper doInBackground(Void... voidArr) {
            return new UploadHelper().dowloadFeedbackMp3(this.mContext, this.wecarid, this.feedbackid, this.mSigMap, this.historyPath);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResultHelper resultHelper) {
            super.onPostExecute((PullFeedbackMp3Task) resultHelper);
            if (resultHelper.getCode() == 0) {
                this.mListener.onSuccess(resultHelper.getMsg());
            } else {
                this.mListener.onFail(resultHelper.getMsg());
            }
        }
    }

    public String getGuid() {
        return this.guid;
    }

    public void setGuid(String str) {
        this.guid = str;
    }
}
