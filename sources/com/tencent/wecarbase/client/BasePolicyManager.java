package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import com.tencent.wecarbase.policy.IPolicyListener;
import com.tencent.wecarbase.policy.PolicyService;
import com.tencent.wecarbase.policy.Response;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class BasePolicyManager extends BaseManager {
    private static final boolean DEBUG_PERF = true;
    private static final String TAG = "BasePolicyManager";
    private String appName;
    private SparseArray<IPolicyBaseCallback> mCallbackList;
    private IPolicyListener mPolicyListener;
    private PolicyService mPolicyService;

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void dispose() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasePolicyManager(String str) {
        super(str);
        this.appName = "";
        this.mCallbackList = new SparseArray<>();
        this.mPolicyListener = new IPolicyListener.Stub() { // from class: com.tencent.wecarbase.client.BasePolicyManager.1
            @Override // com.tencent.wecarbase.policy.IPolicyListener
            public boolean isConnect() {
                return true;
            }

            @Override // com.tencent.wecarbase.policy.IPolicyListener
            public void onNotify(int i, int i2, int i3) throws RemoteException {
                LogUtils.d(BasePolicyManager.TAG, "onNotify tid= " + i + " ret=" + i2 + " curType=" + i3);
                IPolicyBaseCallback iPolicyBaseCallback = (IPolicyBaseCallback) BasePolicyManager.this.mCallbackList.get(i);
                if (iPolicyBaseCallback instanceof IPolicyCallBack) {
                    ((IPolicyCallBack) iPolicyBaseCallback).onNotify(i2);
                } else if (iPolicyBaseCallback instanceof IPolicyCallback2) {
                    ((IPolicyCallback2) iPolicyBaseCallback).onNotify(i, i2);
                } else if (iPolicyBaseCallback instanceof IPolicyCallback3) {
                    ((IPolicyCallback3) iPolicyBaseCallback).onNotify(i, i2, i3);
                }
            }
        };
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceConnectedOk(IBinder iBinder) {
        this.mPolicyService = PolicyService.Stub.asInterface(iBinder);
        LogUtils.fd(TAG, this.appName + " onServiceConnectOk: " + iBinder.toString());
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceDisconnected(ComponentName componentName) {
        this.mPolicyService = null;
        this.mCallbackList.clear();
        LogUtils.fd(TAG, this.appName + " onServiceDisconnect");
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public void init(Context context) {
        super.init(context);
        this.appName = context.getPackageName();
    }

    public Response requestJudge(int i, IPolicyCallBack iPolicyCallBack) {
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            LogUtils.d(TAG, "requestJudge type=" + i + ", app=" + this.appName);
            if (this.mPolicyService == null) {
                return null;
            }
            Response requestJudge = this.mPolicyService.requestJudge(this.appName, i, this.mPolicyListener);
            if (requestJudge != null) {
                this.mCallbackList.put(requestJudge.getTaskId(), iPolicyCallBack);
                Log.d(TAG, "[TSPerf] request id:" + requestJudge.getTaskId() + " type:" + i + " cost ~ " + (SystemClock.elapsedRealtime() - elapsedRealtime));
            }
            return requestJudge;
        } catch (RemoteException e) {
            LogUtils.e(TAG, "requestJudge failed:", e);
            return null;
        }
    }

    public Response requestJudge(int i, IPolicyCallback2 iPolicyCallback2) {
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            LogUtils.d(TAG, "Request judge type=" + i + ", client=" + this.appName);
            if (this.mPolicyService == null) {
                return null;
            }
            Response requestJudge = this.mPolicyService.requestJudge(this.appName, i, this.mPolicyListener);
            if (requestJudge != null) {
                this.mCallbackList.put(requestJudge.getTaskId(), iPolicyCallback2);
                Log.d(TAG, "[TSPerf] request2 id:" + requestJudge.getTaskId() + " type:" + i + " cost ~ " + (SystemClock.elapsedRealtime() - elapsedRealtime));
            }
            return requestJudge;
        } catch (RemoteException e) {
            LogUtils.e(TAG, "Request judge failed:", e);
            return null;
        }
    }

    public Response requestJudge(int i, IPolicyCallback3 iPolicyCallback3) {
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            LogUtils.d(TAG, "Request judge type=" + i + ", client=" + this.appName);
            if (this.mPolicyService == null) {
                return null;
            }
            Response requestJudge = this.mPolicyService.requestJudge(this.appName, i, this.mPolicyListener);
            if (requestJudge != null) {
                this.mCallbackList.put(requestJudge.getTaskId(), iPolicyCallback3);
                Log.d(TAG, "[TSPerf] request3 id:" + requestJudge.getTaskId() + " type:" + i + " cost ~ " + (SystemClock.elapsedRealtime() - elapsedRealtime));
            }
            return requestJudge;
        } catch (RemoteException e) {
            LogUtils.e(TAG, "Request judge failed:", e);
            return null;
        }
    }

    public void stopJudge(int i) {
        try {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (this.mPolicyService != null) {
                    this.mPolicyService.stopJudge(i);
                }
                Log.d(TAG, "[TSPerf] stop " + i + " cost ~ " + (SystemClock.elapsedRealtime() - elapsedRealtime));
            } catch (RemoteException e) {
                LogUtils.e(TAG, "Stop judge failed: ", e);
            }
        } finally {
            this.mCallbackList.remove(i);
        }
    }

    public String dumpState() {
        try {
            return this.mPolicyService != null ? this.mPolicyService.dumpState() : "N/A";
        } catch (RemoteException e) {
            LogUtils.e(TAG, "dumpState failed:", e);
            return "N/A";
        }
    }
}
