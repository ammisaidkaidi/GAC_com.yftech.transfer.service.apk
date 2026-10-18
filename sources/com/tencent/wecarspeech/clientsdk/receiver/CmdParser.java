package com.tencent.wecarspeech.clientsdk.receiver;

import android.content.Intent;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.impl.SpeechClientMgr;
import com.tencent.wecarspeech.clientsdk.utils.AuthUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class CmdParser {
    public static final String EVENT_TYPE = "eventType";
    public static final String EVENT_TYPE_SR = "SR";
    public static final String EVENT_TYPE_WAKEUP = "wakeup";
    public static final String KEY_APPID = "appId";
    public static final String KEY_DOA_DIRECTION = "doaDirection";
    public static final String KEY_DOMAIN = "domain";
    public static final String KEY_SCENE_ID = "sceneId";
    public static final String KEY_SEMANTIC = "semantic";
    public static final String KEY_SKILL = "skill";
    public static final String KEY_TASKID = "taskId";
    public static final String KEY_WORD = "word";
    public static final String SIGNATURE = "signature";
    private static final String SIGN_KEY_BRO = "cf1f7f5b7d4c6aa8c2ab918855a7b3e4404e9942aea5d9daaa0959be872bc5e6";
    private static final String TAG = "CmdParser";

    public static void cmdExecute(Intent intent) {
        String stringExtra = intent.getStringExtra(EVENT_TYPE);
        long longExtra = intent.getLongExtra("taskId", 0L);
        String stringExtra2 = intent.getStringExtra("appId");
        String stringExtra3 = intent.getStringExtra(SIGNATURE);
        LogUtils.d(TAG, "onReceive eventType = " + stringExtra);
        LogUtils.d(TAG, "onReceive taskId = " + longExtra);
        LogUtils.d(TAG, "onReceive appId = " + stringExtra2);
        LogUtils.d(TAG, "onReceive signature = " + stringExtra3);
        if (TextUtils.isEmpty(stringExtra3)) {
            LogUtils.e(TAG, "signature verify failed,signature is empty");
            return;
        }
        String hmacHexString = AuthUtils.hmacHexString(stringExtra2 + stringExtra + longExtra, SIGN_KEY_BRO);
        StringBuilder sb = new StringBuilder();
        sb.append("onReceive calSign = ");
        sb.append(hmacHexString);
        LogUtils.d(TAG, sb.toString());
        if (!stringExtra3.equals(hmacHexString)) {
            LogUtils.e(TAG, "signature verify failed,invalid signature");
            return;
        }
        if (EVENT_TYPE_SR.equals(stringExtra)) {
            String stringExtra4 = intent.getStringExtra("semantic");
            String stringExtra5 = intent.getStringExtra(KEY_DOMAIN);
            String stringExtra6 = intent.getStringExtra(KEY_SKILL);
            int intExtra = intent.getIntExtra(KEY_DOA_DIRECTION, 0);
            LogUtils.d(TAG, "onReceive semantic = " + stringExtra4);
            LogUtils.d(TAG, "onReceive domainStr = " + stringExtra5);
            LogUtils.d(TAG, "onReceive skillStr = " + stringExtra6);
            LogUtils.d(TAG, "onReceive doaDirection = " + intExtra);
            SpeechClientMgr.getInstance().dispatchSystemSkill(stringExtra2, longExtra, stringExtra5, stringExtra6, stringExtra4, intExtra, 0);
            return;
        }
        if (EVENT_TYPE_WAKEUP.equals(stringExtra)) {
            String stringExtra7 = intent.getStringExtra(KEY_WORD);
            String stringExtra8 = intent.getStringExtra(KEY_SCENE_ID);
            LogUtils.d(TAG, "onReceive word = " + stringExtra7 + " sceneId = " + stringExtra8);
            SpeechClientMgr.getInstance().dispatchSystemWakeup(stringExtra2, longExtra, stringExtra8, stringExtra7, intent.getIntExtra(KEY_DOA_DIRECTION, 0));
        }
    }
}
