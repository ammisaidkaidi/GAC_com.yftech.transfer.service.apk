package com.tencent.wecarspeech.clientsdk.report;

import android.support.annotation.Keep;
import android.support.v4.provider.FontsContractCompat;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.interfaces.ISpeechClient;
import java.util.HashMap;
import java.util.Map;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TaskReporter {
    private static final String ACTION = "speech_use_20483";
    private ISpeechClient mSpeechClient;
    private long mTaskId;
    private long mLoadStartTime = 0;
    private long mLoadEndTime = 0;
    private long mLoadTotalTime = 0;
    private String mResultCode = "";
    private String mResultMsg = "";
    private Map<String, String> mMap = new HashMap();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ResultCode {
        public static String EXECUTE_ERROR = "execute_error";
        public static String INTERRUPT = "interrupt";
        public static String NETWORK_ERROR = "network_error";
        public static String NOT_SUPPORT = "not_support";
        public static String RESOURCE_NOT_FOUND = "resource_not_found ";
        public static String SEMANTIC_ERROR = "semantic_error";
        public static String SUCCESS = "success";
        public static String TIMEOUT_ERROR = "timeout_error";
    }

    public static TaskReporter create(long j, ISpeechClient iSpeechClient) {
        return new TaskReporter(j, iSpeechClient);
    }

    private TaskReporter(long j, ISpeechClient iSpeechClient) {
        this.mTaskId = 0L;
        this.mTaskId = j;
        this.mSpeechClient = iSpeechClient;
    }

    public TaskReporter loadStartTime(long j) {
        this.mLoadStartTime = j;
        return this;
    }

    public TaskReporter loadEndTime(long j) {
        this.mLoadEndTime = j;
        return this;
    }

    public TaskReporter resultCode(String str) {
        this.mResultCode = str;
        return this;
    }

    public TaskReporter resultMsg(String str) {
        this.mResultMsg = str;
        return this;
    }

    public TaskReporter keyValue(String str, String str2) {
        if (!TextUtils.isEmpty("key")) {
            this.mMap.put(str, str2);
        }
        return this;
    }

    public void report() {
        this.mMap.put("task_id", String.valueOf(this.mTaskId));
        this.mMap.put("loading_start_time", String.valueOf(this.mLoadStartTime));
        this.mMap.put("loading_finish_time", String.valueOf(this.mLoadEndTime));
        this.mMap.put("loading_total_time", String.valueOf(this.mLoadTotalTime));
        this.mMap.put("app_id", String.valueOf(this.mSpeechClient.getAppId()));
        this.mMap.put("app_name", String.valueOf(this.mSpeechClient.getAppName()));
        this.mMap.put("app_package_name", String.valueOf(this.mSpeechClient.getPkgName()));
        this.mMap.put(FontsContractCompat.Columns.RESULT_CODE, String.valueOf(this.mResultCode));
        this.mMap.put("result_msg", String.valueOf(this.mResultMsg));
        this.mSpeechClient.reportAction(ACTION, this.mMap);
    }
}
