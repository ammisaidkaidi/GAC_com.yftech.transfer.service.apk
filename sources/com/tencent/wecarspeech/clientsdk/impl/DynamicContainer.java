package com.tencent.wecarspeech.clientsdk.impl;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.exceptions.DuplicatedWakeupWordException;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.interfaces.IRejectSemanticCallBack;
import com.tencent.wecarspeech.clientsdk.interfaces.ISSRCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISSRContextCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTTListener;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTrvCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.ISemanticFilter;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class DynamicContainer {
    private static final String TAG = "DynamicContainer";
    private volatile boolean isStart;
    private volatile ISSRContextCallback mISSRContextCallback;
    private volatile IRejectSemanticCallBack mRejectSemanticCallback;
    private volatile ISSRCallback mSSRCallback;
    private volatile ISTTListener mSTTListener;
    private volatile ISTrvCallback mSTrvCallback;
    private volatile ISemanticFilter mSemanticFilter;
    private volatile long mTaskId;
    private volatile Map<String, Set<String>> mTrvSceneWords;

    public synchronized boolean isStart() {
        return this.isStart;
    }

    public synchronized void setStart(boolean z) {
        this.isStart = z;
    }

    public synchronized ISemanticFilter getSemanticFilter() {
        return this.mSemanticFilter;
    }

    public synchronized void setSemanticFilter(ISemanticFilter iSemanticFilter) {
        this.mSemanticFilter = iSemanticFilter;
    }

    public synchronized ISSRCallback getSSRCallback() {
        return this.mSSRCallback;
    }

    public synchronized void setSSRCallback(ISSRCallback iSSRCallback) {
        this.mSSRCallback = iSSRCallback;
    }

    public synchronized ISTrvCallback getSTrvCallback() {
        return this.mSTrvCallback;
    }

    public synchronized void setSTrvCallback(ISTrvCallback iSTrvCallback) {
        this.mSTrvCallback = iSTrvCallback;
    }

    public synchronized IRejectSemanticCallBack getRejectSemanticCallback() {
        return this.mRejectSemanticCallback;
    }

    public synchronized void setRejectSemanticCallback(IRejectSemanticCallBack iRejectSemanticCallBack) {
        this.mRejectSemanticCallback = iRejectSemanticCallBack;
    }

    public synchronized void setTrvSceneWords(@NonNull Map<String, Set<String>> map) {
        LogUtils.d(TAG, "setTrvSceneWords sceneWords = " + map);
        checkValidWords(map);
        this.mTrvSceneWords = map;
    }

    public synchronized void clearTrvSceneWords() {
        LogUtils.d(TAG, "clearTrvSceneWords");
        this.mTrvSceneWords = null;
    }

    public synchronized Map<String, Set<String>> getTrvSceneWords() {
        return this.mTrvSceneWords;
    }

    public synchronized ISTTListener getSTTListener() {
        return this.mSTTListener;
    }

    public synchronized void setSTTListener(ISTTListener iSTTListener) {
        this.mSTTListener = iSTTListener;
    }

    public String getIndicationByWord(String str) {
        LogUtils.d(TAG, "getIndicationByWord word = " + str);
        if (TextUtils.isEmpty(str) || this.mTrvSceneWords == null) {
            LogUtils.d(TAG, "mTrvSceneWords = " + this.mTrvSceneWords);
            return str;
        }
        for (Map.Entry<String, Set<String>> entry : this.mTrvSceneWords.entrySet()) {
            if (entry.getValue().contains(str)) {
                return entry.getKey();
            }
        }
        return str;
    }

    private void checkValidWords(Map<String, Set<String>> map) {
        HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, Set<String>>> it = map.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Set<String> value = it.next().getValue();
            i += value.size();
            hashSet.addAll(value);
        }
        if (hashSet.size() < i) {
            ExceptionCtrlManager.getInstance().throwException(new DuplicatedWakeupWordException("duplicated wakeup word in sceneWords map"));
            return;
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (!isValidWord((String) it2.next())) {
                ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("invalid sceneWord, sceneWord length should not be less than 2 or more than 10"));
                return;
            }
        }
    }

    private boolean isValidWord(String str) {
        int length;
        return !TextUtils.isEmpty(str) && (length = str.length()) >= 2 && length <= 10;
    }

    public synchronized long getTaskId() {
        return this.mTaskId;
    }

    public synchronized void setTaskId(long j) {
        this.mTaskId = j;
    }

    public ISSRContextCallback getISSRContextCallback() {
        return this.mISSRContextCallback;
    }

    public void setISSRContextCallback(ISSRContextCallback iSSRContextCallback) {
        this.mISSRContextCallback = iSSRContextCallback;
    }
}
