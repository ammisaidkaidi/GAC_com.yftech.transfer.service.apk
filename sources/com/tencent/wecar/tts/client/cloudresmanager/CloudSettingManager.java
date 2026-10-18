package com.tencent.wecar.tts.client.cloudresmanager;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.tencent.taes.cloud.CloudSetting;
import com.tencent.taes.cloud.SettingItem;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.remote.ServerCompConstant;
import com.tencent.taes.remote.api.account.IAccountApi;
import com.tencent.taes.remote.api.account.bean.WeCarAccount;
import com.tencent.taespushclient.IPushDispatchLitener;
import com.tencent.taespushclient.TaesPushClient;
import com.tencent.wecar.tts.TtsManager;
import com.tencent.wecar.tts.log.TtsLog;
import com.tencent.wecarspeech.clientsdk.receiver.CmdParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class CloudSettingManager {
    public static final String SPEAKER_DAJI = "daji";
    public static final String SPEAKER_LIBAI = "libai";
    public static final String SPEAKER_WY = "wy";
    private static final String TAG = "CloudSettingManager";
    private IAccountApi mAccountApi;
    private Context mContext;

    private CloudSettingManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Singleton {
        private static final CloudSettingManager INSTANCE = new CloudSettingManager();

        private Singleton() {
        }
    }

    public static CloudSettingManager getInstance() {
        return Singleton.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVoiceType() {
        return TtsManager.getInstance().getRemoteApi().getTtsSpeaker();
    }

    public void uploadTtsSpeakerSettings() {
        CloudSetting.uploadSettings("role_type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVoiceType(String str) {
        char c;
        CloudSetting.uploadSettings("role_type");
        int hashCode = str.hashCode();
        if (hashCode == 3810) {
            if (str.equals(SPEAKER_WY)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 3075708) {
            if (hashCode == 102965613 && str.equals("libai")) {
                c = 3;
            }
            c = 65535;
        } else {
            if (str.equals("daji")) {
                c = 2;
            }
            c = 65535;
        }
        switch (c) {
            case 2:
                TtsManager.getInstance().getRemoteApi().setTtsSpeakerInfo("daji", "妲己");
                return;
            case 3:
                TtsManager.getInstance().getRemoteApi().setTtsSpeakerInfo("libai", "李白");
                return;
            default:
                TtsManager.getInstance().getRemoteApi().setTtsSpeakerInfo(SPEAKER_WY, "叮当");
                return;
        }
    }

    public void init(@NonNull Context context) {
        this.mContext = context;
        initIAccountApi();
    }

    private void initIAccountApi() {
        TtsLog.d(TAG, "initIAccountApi");
        TAESFrameworkManager.getInstance().registerCompLoadListener("Account", new TAESCommonListener() { // from class: com.tencent.wecar.tts.client.cloudresmanager.CloudSettingManager.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                TtsLog.d(CloudSettingManager.TAG, "account registerCompLoadListener onSuccess");
                CloudSettingManager.this.initcloudSetting();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                TtsLog.d(CloudSettingManager.TAG, "account registerCompLoadListener onFail errorCode=" + i + "msg=" + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initcloudSetting() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingItem("role_type", new SettingItem.Listener() { // from class: com.tencent.wecar.tts.client.cloudresmanager.CloudSettingManager.2
            public Object getSettingValue() {
                return CloudSettingManager.this.getVoiceType();
            }

            public void setSettingValue(Object obj) {
                String str = (String) obj;
                if (Arrays.asList(CloudSettingManager.SPEAKER_WY, "daji", "libai").contains(str)) {
                    CloudSettingManager.this.setVoiceType(str);
                }
            }
        }));
        APIResult api = TAESFrameworkManager.getInstance().getApi("Account", IAccountApi.class, null);
        if (api.isSuccess() && api.data != 0) {
            this.mAccountApi = (IAccountApi) api.data;
            WeCarAccount weCarAccount = this.mAccountApi.getWeCarAccount();
            if (weCarAccount == null || TextUtils.isEmpty(weCarAccount.getWeCarId())) {
                TtsLog.i(TAG, "Tts init initcloudSetting wecarid null:");
            } else {
                String weCarId = weCarAccount.getWeCarId();
                String channel = weCarAccount == null ? null : weCarAccount.getChannel();
                String userId = weCarAccount.getWxAccount() != null ? weCarAccount.getWxAccount().getUserId() : null;
                TtsLog.i(TAG, "Tts init initcloudSetting channel:" + channel + ", wecarId : " + weCarId);
                CloudSetting.intCloudSettingsParams(this.mContext, weCarId, userId, channel, arrayList);
            }
        } else {
            TtsLog.e(TAG, "initAccount: getApi Err!");
        }
        cloudSettingPush();
    }

    private void cloudSettingPush() {
        String moduleHostPkgName = TAESFrameworkManager.getInstance().getModuleHostPkgName(ServerCompConstant.PUSH);
        TtsLog.e(TAG, "tts SceneLifeCycle.onLoadLocalCompsComplete: pushHostPkg = " + moduleHostPkgName);
        if (TextUtils.isEmpty(moduleHostPkgName)) {
            return;
        }
        TaesPushClient.getInstance().init(this.mContext, moduleHostPkgName, "com.tencent.taes.push.PushDispatchService");
        TaesPushClient.getInstance().addPushDispatchLitener(new IPushDispatchLitener() { // from class: com.tencent.wecar.tts.client.cloudresmanager.CloudSettingManager.3
            public void onMessageReceived(String str) {
                TtsLog.d(CloudSettingManager.TAG, "tts cloudSettingPush onMessageReceived msg = " + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.has(CmdParser.EVENT_TYPE) ? jSONObject.getString(CmdParser.EVENT_TYPE) : null;
                    if (!TextUtils.isEmpty(string) && "preferenceUpdated".equals(string)) {
                        Iterator<String> keys = jSONObject.getJSONObject("data").getJSONObject("content").keys();
                        ArrayList arrayList = new ArrayList();
                        while (keys.hasNext()) {
                            arrayList.add(keys.next());
                        }
                        if (arrayList.size() > 0) {
                            CloudSetting.requestSettings(arrayList);
                        }
                    }
                } catch (Exception e) {
                    TtsLog.e(CloudSettingManager.TAG, "error: ", e);
                }
            }
        });
    }
}
