package com.baidu.navisdk.hudsdk.util;

import android.content.Context;
import com.baidu.lbsapi.auth.navisdkhud.LBSAuthManager;
import com.baidu.lbsapi.auth.navisdkhud.LBSAuthManagerListener;
import com.baidu.navisdk.hudsdk.HUDModuleManager;
import java.util.Hashtable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SDKAuthManager {
    private static final int AUTH_STATUS_SUCC = 0;
    private static final String LBS_SERVICE_HUD_SDK = "lbs_navi_hudsdk";
    private static final String TAG = "SDKAuthManager";
    private static SDKAuthManager sInstance;
    private LBSAuthManagerListener mAppAuthListener;
    private LBSAuthManager mAuthManager;
    private boolean mIsAuthFailed = false;
    private LBSAuthManagerListener mAuthManagerListener = new LBSAuthManagerListener() { // from class: com.baidu.navisdk.hudsdk.util.SDKAuthManager.1
        @Override // com.baidu.lbsapi.auth.navisdkhud.LBSAuthManagerListener
        public void onAuthResult(int i, String str) {
            String authStatusDesc = SDKAuthManager.this.getAuthStatusDesc(i);
            LogUtil.e(SDKAuthManager.TAG, "onAuthResult: status: " + i + "/" + authStatusDesc + ", msg: " + str);
            SDKAuthManager.this.mIsAuthFailed = i != 0;
            if (SDKAuthManager.this.mAppAuthListener != null) {
                SDKAuthManager.this.mAppAuthListener.onAuthResult(i, str);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public String getAuthStatusDesc(int i) {
        if (i == 0) {
            return "通过校验";
        }
        if (i == 2) {
            return "参数错误";
        }
        if (i == 5) {
            return "ak不存在";
        }
        if (i == 210) {
            return "无请求权限";
        }
        switch (i) {
            case 101:
                return "该服务已经被开发者禁用";
            case 102:
                return "mcode签名值不正确";
            default:
                switch (i) {
                    case 231:
                        return "用户uid，ak不存在";
                    case 232:
                        return "用户、ak被封禁";
                    case 233:
                        return "无请求权限";
                    default:
                        return (i < 202 || i > 205) ? (i < 301 || i > 355) ? "未知状态码" : "配额不存在" : "无请求权限";
                }
        }
    }

    public static SDKAuthManager getInstance() {
        if (sInstance == null) {
            synchronized (SDKAuthManager.class) {
                if (sInstance == null) {
                    sInstance = new SDKAuthManager(HUDModuleManager.getContext());
                }
            }
        }
        return sInstance;
    }

    private SDKAuthManager(Context context) {
        this.mAuthManager = LBSAuthManager.getInstance(context);
    }

    public void authenticate(LBSAuthManagerListener lBSAuthManagerListener) {
        this.mAppAuthListener = lBSAuthManagerListener;
        authenticate();
    }

    private void authenticate() {
        int authenticate = this.mAuthManager.authenticate(false, LBS_SERVICE_HUD_SDK, new Hashtable(), this.mAuthManagerListener);
        LogUtil.e(TAG, "authenticate: code " + authenticate);
        if (authenticate == 0) {
            this.mIsAuthFailed = false;
            return;
        }
        switch (authenticate) {
            case 601:
                this.mIsAuthFailed = false;
                return;
            case LBSAuthManager.CODE_AUTHENTICATING /* 602 */:
                return;
            default:
                this.mIsAuthFailed = true;
                return;
        }
    }

    public boolean isAuthFailed() {
        return this.mIsAuthFailed;
    }
}
