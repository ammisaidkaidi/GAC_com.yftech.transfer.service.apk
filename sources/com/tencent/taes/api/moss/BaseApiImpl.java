package com.tencent.taes.api.moss;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.mosssdk.IMossApiCallback;
import com.tencent.taes.impl.base.AbstractApi;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseApiImpl extends AbstractApi {
    protected static final String OR = "||";
    private final ArrayList<String> SERVICE_API = new ArrayList<>(Arrays.asList("onMusicStatusChange", "onMusicInfoChange", "loadAllAppsFromNet", "recentAppDataChange", "loadAllAppsFromCache", "minAppFrontChange", "requestRecommendAppList", "requestDetailRecommendAppList", "requestLbsRecommend"));
    private String TAG = "BaseApiImpl";
    protected IMossApiCallback.Stub mMossApiCallback = new IMossApiCallback.Stub() { // from class: com.tencent.taes.api.moss.BaseApiImpl.1
        @Override // com.tencent.mosssdk.IMossApiCallback
        public String mossApiCallback(String str, String str2) throws RemoteException {
            Method declaredMethod;
            String invokeFunc = BaseApiImpl.this.getInvokeFunc(str);
            if (TextUtils.isEmpty(invokeFunc)) {
                Log.e(BaseApiImpl.this.TAG, "unhandled invoke from client page " + str + "\n\tparamJson:" + str2);
                return "";
            }
            try {
                if (BaseApiImpl.this.object == null) {
                    return "";
                }
                Class<?> cls = BaseApiImpl.this.object.getClass();
                if (Build.VERSION.SDK_INT > 10) {
                    declaredMethod = cls.getMethod(invokeFunc, String.class, String.class);
                } else {
                    declaredMethod = cls.getDeclaredMethod(invokeFunc, String.class, String.class);
                }
                declaredMethod.setAccessible(true);
                return (String) declaredMethod.invoke(BaseApiImpl.this.object, str, str2);
            } catch (Throwable th) {
                Log.e(BaseApiImpl.this.TAG, "Invoke from client page failed! " + str + "\n\targs:" + str2);
                th.printStackTrace();
                return "";
            }
        }
    };
    private Object object;

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    public String getInvokeFunc(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (SERVICE_API().contains(str)) {
            return str;
        }
        Iterator<String> it = SERVICE_API().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains(OR) && next.contains(str)) {
                return next.substring(0, next.indexOf(OR));
            }
        }
        return null;
    }

    public void setObject(Object obj) {
        this.object = obj;
    }

    private ArrayList<String> SERVICE_API() {
        return this.SERVICE_API;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkAppExit(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (Exception e) {
            Log.e(this.TAG, "checkAppExit", e);
            return false;
        }
    }
}
