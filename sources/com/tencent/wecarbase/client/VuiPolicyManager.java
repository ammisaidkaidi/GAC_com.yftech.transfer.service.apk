package com.tencent.wecarbase.client;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.policy.Response;

/* loaded from: /home/user/work/dex/classes.dex */
public class VuiPolicyManager extends BasePolicyManager {

    @Deprecated
    public static final int ASSISTANT = 20;

    @Deprecated
    public static final int ASSISTANT_RECORD = 100;
    public static final int CALLBACK_GRANT = 3000;
    public static final int CALLBACK_IGNORE = 3002;
    public static final int CALLBACK_INTERRUPT = 3004;
    public static final int CALLBACK_MIX = 3001;
    public static final int CALLBACK_MUTE_WAIT = 3003;

    @Deprecated
    public static final int INFORMATION = 60;

    @Deprecated
    public static final int MEDIA_STREAM = 110;

    @Deprecated
    public static final int MESSAGING = 30;

    @Deprecated
    public static final int NAVI_GUIDANCE_L1 = 60;

    @Deprecated
    public static final int NAVI_GUIDANCE_L2 = 50;

    @Deprecated
    public static final int NOTIFICATION = 90;

    @Deprecated
    public static final int PHONE = 10;
    public static final int REQUEST_ERROR = 1000;
    public static final int REQUEST_GRANT = 1001;

    @Deprecated
    public static final int REQUEST_GRANT_DIDI = 1003;
    public static final int REQUEST_GRANT_MIX = 1002;
    public static final int REQUEST_REJECT = 1005;
    public static final int REQUEST_WAIT = 1004;
    public static final int TX_IM_TTS = 30;
    public static final int TX_MEDIA = 110;
    public static final int TX_NAVI_GUIDANCE_L1 = 60;
    public static final int TX_NAVI_GUIDANCE_L2 = 50;
    public static final int TX_NOTIFICATION = 80;
    public static final int TX_PHONE = 10;
    public static final int TX_TTS = 90;
    public static final int TX_VR = 100;
    public static final int TX_VR_TTS = 20;
    public static final int UNDEFINED = 0;
    private static volatile VuiPolicyManager mInstance;
    private String mLabel;

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager
    public /* bridge */ /* synthetic */ String dumpState() {
        return super.dumpState();
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager, com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void init(Context context) {
        super.init(context);
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void reInitIfNeed(Context context) {
        super.reInitIfNeed(context);
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager
    public /* bridge */ /* synthetic */ Response requestJudge(int i, IPolicyCallBack iPolicyCallBack) {
        return super.requestJudge(i, iPolicyCallBack);
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager
    public /* bridge */ /* synthetic */ Response requestJudge(int i, IPolicyCallback2 iPolicyCallback2) {
        return super.requestJudge(i, iPolicyCallback2);
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager
    public /* bridge */ /* synthetic */ Response requestJudge(int i, IPolicyCallback3 iPolicyCallback3) {
        return super.requestJudge(i, iPolicyCallback3);
    }

    @Override // com.tencent.wecarbase.client.BasePolicyManager
    public /* bridge */ /* synthetic */ void stopJudge(int i) {
        super.stopJudge(i);
    }

    public static VuiPolicyManager getInstance() {
        if (mInstance == null) {
            synchronized (VuiPolicyManager.class) {
                if (mInstance == null) {
                    mInstance = new VuiPolicyManager();
                }
            }
        }
        return mInstance;
    }

    private VuiPolicyManager() {
        super(SDKConfig.ACTION_VUI_POLICY_SERVICE);
    }

    @VisibleForTesting
    VuiPolicyManager(String str) {
        super(SDKConfig.ACTION_VUI_POLICY_SERVICE);
        this.mLabel = str;
    }

    public String toString() {
        return "VuiPolicyManager{mLabel='" + this.mLabel + "'}";
    }
}
