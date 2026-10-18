package com.tencent.wecarbase.client;

import android.content.Context;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.policy.Response;

/* loaded from: /home/user/work/dex/classes.dex */
public class GuiPolicyManager extends BasePolicyManager {
    public static final int CALLBACK_GRANT = 301;
    public static final int CALLBACK_IGNORE = 303;
    public static final int CALLBACK_INTERRUPT = 302;
    public static final int MESSAGE = 30;
    public static final int PHONE = 10;
    public static final int RECORD = 20;
    public static final int REQUEST_GRANT = 101;
    public static final int REQUEST_REJECT = 102;
    public static final int REQUEST_WAIT = 103;
    private static volatile GuiPolicyManager mInstance;

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

    public static GuiPolicyManager getInstance() {
        if (mInstance == null) {
            synchronized (GuiPolicyManager.class) {
                if (mInstance == null) {
                    mInstance = new GuiPolicyManager();
                }
            }
        }
        return mInstance;
    }

    private GuiPolicyManager() {
        super(SDKConfig.ACTION_GUI_POLICY_SERVICE);
    }
}
