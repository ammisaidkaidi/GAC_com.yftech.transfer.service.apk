package com.tencent.taes.remote.impl.policy;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.policy.IGUIPolicyApi;
import com.tencent.taes.remote.api.policy.IPolicyService;
import com.tencent.taes.remote.api.policy.bean.Response;
import com.tencent.taes.remote.api.policy.listener.PolicyCallback;
import com.tencent.taes.remote.impl.BaseRemoteApi;

/* loaded from: /home/user/work/dex/classes.dex */
public class GUIPolicyRemoteApi extends BaseRemoteApi implements IGUIPolicyApi {
    private static final String TAG = "PolicyRemoteApi";
    private IPolicyService mPolicyService;

    private GUIPolicyRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mPolicyService = IPolicyService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("Policy", "com.tencent.taes.policy.impl.GuiPolicyService");
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        Log.d(TAG, "reBindBinder  binder:" + iBinder);
        this.mPolicyService = IPolicyService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    private static String build(String str, StackTraceElement stackTraceElement) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append(str);
        sb.append("]");
        if (stackTraceElement.isNativeMethod()) {
            sb.append("(Native Method)");
        } else {
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                sb.append("(Unknown Source)");
            } else {
                int lineNumber = stackTraceElement.getLineNumber();
                sb.append('(');
                sb.append(fileName);
                if (lineNumber >= 0) {
                    sb.append(':');
                    sb.append(lineNumber);
                }
                sb.append("):");
            }
        }
        return sb.toString();
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public Response requestJudge(String str, int i, @NonNull PolicyCallback policyCallback, String str2) {
        if (this.mPolicyService == null) {
            return null;
        }
        try {
            return this.mPolicyService.requestJudge(str, i, policyCallback.getInnerListener(), build(str2, new Throwable().getStackTrace()[1]));
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public void stopJudge(int i) {
        if (this.mPolicyService != null) {
            try {
                this.mPolicyService.stopJudge(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public String dumpState() {
        if (this.mPolicyService == null) {
            return null;
        }
        try {
            return this.mPolicyService.dumpState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }
}
