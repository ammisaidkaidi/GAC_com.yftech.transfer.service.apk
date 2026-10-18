package com.tencent.wecarspeech.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener;
import com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import com.tencent.wecarspeech.sdk.util.ServiceUtils;
import com.tencent.wecarspeech.sdk.util.SpeechServerTool;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASConfigManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f175a = LogUtils.GLOBAL_LOG_TAG + TASConfigManager.class.getSimpleName();
    private static volatile TASConfigManager b;
    private b c;
    private Context d;
    private boolean e = false;
    private TASInitParam f;
    private TASInitListener g;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TASInitListener {
        public static final int ERR_ID_FAILED = 1;
        public static final int ERR_ID_SUCCESS = 0;

        void onInit(int i, String str);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TASInitParam {

        /* renamed from: a, reason: collision with root package name */
        private String f177a;
        private String b;
        private String c;
        private String d;
        private boolean e;
        private ArrayList<String> f;
        private Integer g;

        public TASInitParam() {
        }

        @Deprecated
        public TASInitParam(String str, String str2) {
            this.f177a = str;
            this.b = str2;
        }

        public void setCustomWakeWordThreshold(int i) {
            this.g = Integer.valueOf(i);
        }

        public void setDeviceUniqueId(String str) {
            this.c = str;
        }

        public void setFloatBtnEnabled(boolean z) {
            this.e = z;
        }

        @Deprecated
        public void setStorageRootPath(String str) {
            this.d = str;
        }

        public void setWakeupKeywords(ArrayList<String> arrayList) {
            this.f = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public abstract class a {
        private Context d;
        private String e;
        private final String c = LogUtils.GLOBAL_LOG_TAG + getClass().getSimpleName();
        private IInterface f = null;
        private boolean g = false;

        /* renamed from: a, reason: collision with root package name */
        protected Handler f178a = new Handler(Looper.getMainLooper());
        private C0061a h = null;
        private ServiceConnection i = new ServiceConnection() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.a.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                LogUtils.i(a.this.c, "onServiceConnected");
                if (a.this.e.equals("com.tencent.wecarspeech.WeCarSpeechTaesSdkService")) {
                    a.this.f = IWeCarSpeechSdkService.Stub.asInterface(iBinder);
                }
                a.this.a(a.this.f);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                LogUtils.i(a.this.c, "onServiceDisconnected ok");
                a.this.f = null;
                a.this.b();
                if (a.this.g || a.this.d == null) {
                    return;
                }
                Intent explicitIntent = ServiceUtils.getExplicitIntent(a.this.d, new Intent(a.this.e), SpeechServerTool.getServerPackage(a.this.d));
                LogUtils.i(a.this.c, "intent outer:" + explicitIntent);
                if (explicitIntent == null) {
                    a.this.f178a.postDelayed(new Runnable() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str;
                            String str2;
                            if (a.this.g || a.this.d == null) {
                                return;
                            }
                            Intent explicitIntent2 = ServiceUtils.getExplicitIntent(a.this.d, new Intent(a.this.e), SpeechServerTool.getServerPackage(a.this.d));
                            LogUtils.i(a.this.c, "intent inner:" + explicitIntent2);
                            if (explicitIntent2 == null) {
                                a.this.f178a.postDelayed(this, 2000L);
                                str = a.this.c;
                                str2 = "intent is null, retry startService, bind";
                            } else {
                                a.this.d.bindService(explicitIntent2, a.this.i, 1);
                                str = a.this.c;
                                str2 = "mContext.startService, bind in handler";
                            }
                            LogUtils.i(str, str2);
                        }
                    }, 1000L);
                } else {
                    a.this.d.bindService(explicitIntent, a.this.i, 1);
                    LogUtils.i(a.this.c, "mContext.startService, bind out handler");
                }
            }
        };

        /* renamed from: com.tencent.wecarspeech.sdk.TASConfigManager$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private class C0061a extends Thread {

            /* renamed from: a, reason: collision with root package name */
            public boolean f182a;

            private C0061a() {
                this.f182a = true;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                LogUtils.d(a.this.c, "SDK ServiceKeepAliveThread start Success, mIsRunning = " + this.f182a);
                while (this.f182a) {
                    try {
                        a.this.c();
                        Thread.sleep(2000L);
                    } catch (InterruptedException e) {
                        LogUtils.i(a.this.c, e.toString());
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        }

        protected a(String str) {
            this.e = str;
            LogUtils.i(this.c, "sdk version:3.0.3");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            String str;
            String exc;
            if (this.f == null) {
                LogUtils.e(this.c, "checkServiceState, mIInterface is null, reconnect");
                if (this.g || this.d == null) {
                    return;
                }
                String serverPackage = SpeechServerTool.getServerPackage(this.d);
                Intent explicitIntent = ServiceUtils.getExplicitIntent(this.d, new Intent(this.e), serverPackage);
                LogUtils.i(this.c, "checkServiceState intent:" + explicitIntent);
                if (explicitIntent != null) {
                    this.d.bindService(explicitIntent, this.i, 1);
                    str = this.c;
                    exc = "checkServiceState startService and bind 1";
                } else {
                    try {
                        Intent intent = new Intent();
                        intent.setAction(this.e);
                        intent.setPackage(serverPackage);
                        this.d.bindService(intent, this.i, 1);
                        LogUtils.i(this.c, "checkServiceState startService and bind 2");
                        return;
                    } catch (Exception e) {
                        str = this.c;
                        exc = e.toString();
                    }
                }
                LogUtils.i(str, exc);
            }
        }

        private void d() {
            if (this.f == null) {
                Intent explicitIntent = ServiceUtils.getExplicitIntent(this.d, new Intent(this.e), SpeechServerTool.getServerPackage(this.d));
                if (explicitIntent == null) {
                    LogUtils.w(this.c, "startAndBindService error, intent null");
                    return;
                }
                try {
                    Context context = this.d;
                    ServiceConnection serviceConnection = this.i;
                    Context context2 = this.d;
                    context.bindService(explicitIntent, serviceConnection, 1);
                } catch (Exception e) {
                    LogUtils.e(this.c, "startAndBindService error", e);
                }
            }
        }

        protected IInterface a() {
            return this.f;
        }

        public void a(Context context) {
            LogUtils.i(this.c, "init start");
            if (context == null) {
                throw new RuntimeException("context is null");
            }
            this.d = context.getApplicationContext();
            this.g = false;
            d();
            LogUtils.i(this.c, "init end");
            this.f178a.postDelayed(new Runnable() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.h = new C0061a();
                    a.this.h.start();
                }
            }, 2000L);
        }

        protected abstract void a(IInterface iInterface);

        protected abstract void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public class b extends a {
        private final String d;

        public b() {
            super("com.tencent.wecarspeech.WeCarSpeechTaesSdkService");
            this.d = LogUtils.GLOBAL_LOG_TAG + b.class.getSimpleName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public IWeCarSpeechSdkService c() {
            return (IWeCarSpeechSdkService) super.a();
        }

        private void d() {
            final IWeCarSpeechSdkListener.Stub stub = new IWeCarSpeechSdkListener.Stub() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.b.1
                @Override // com.tencent.wecarspeech.sdk.IWeCarSpeechSdkListener
                public byte[] actionCallback(String str, String str2, byte[] bArr, int i) {
                    return c.a().a(str, str2, bArr, i);
                }
            };
            this.f178a.postDelayed(new Runnable() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.c() == null) {
                        LogUtils.e(b.this.d, "getWeCarSpeechSdkService() is null, postDelayed retry");
                        b.this.f178a.postDelayed(this, 200L);
                        return;
                    }
                    try {
                        b.this.c().setWeCarSpeechSdkListener(stub);
                        LogUtils.i(b.this.d, "setWeCarSpeechSdkListener OK");
                    } catch (Exception e) {
                        LogUtils.e(b.this.d, "setWeCarSpeechSdkListener error", e);
                    }
                }
            }, 200L);
        }

        @Override // com.tencent.wecarspeech.sdk.TASConfigManager.a
        protected void a(IInterface iInterface) {
            d();
            com.tencent.wecarspeech.sdk.a.a().a((IWeCarSpeechSdkService) iInterface);
            c.a().a(true);
            TASConfigManager.this.a(TASConfigManager.this.f);
        }

        @Override // com.tencent.wecarspeech.sdk.TASConfigManager.a
        protected void b() {
            if (TASConfigManager.this.g != null) {
                TASConfigManager.this.e = false;
                TASConfigManager.this.g.onInit(1, "speech sdk init failed");
            }
            com.tencent.wecarspeech.sdk.a.a().a((IWeCarSpeechSdkService) null);
            c.a().a(false);
        }
    }

    private TASConfigManager() {
    }

    private void a() {
        String str = Environment.getExternalStorageDirectory().toString() + "/wecarspeech_log_on/";
        LogUtils.i(f175a, "switchPath : " + str);
        if (new File(str).exists()) {
            LogUtils.enableTraceLog = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TASInitParam tASInitParam) {
        if (tASInitParam == null) {
            LogUtils.e(f175a, "setTasInitParams return, mTASInitParam == null");
            return;
        }
        LogUtils.t(f175a, "+setTasInitParams, appid:" + tASInitParam.f177a + ", appToken:" + tASInitParam.b + ", deviceUniqueID:" + tASInitParam.c + ", storageRootPath:" + tASInitParam.d);
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(tASInitParam.f177a)) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_APP_ID, tASInitParam.f177a);
            }
            if (!TextUtils.isEmpty(tASInitParam.b)) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_APP_TOKEN, tASInitParam.b);
            }
            String packageName = this.d.getPackageName();
            if (!TextUtils.isEmpty(packageName)) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_PACKAGE_NAME, packageName);
            }
            if (!TextUtils.isEmpty(tASInitParam.c)) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_DEVICE_ID, tASInitParam.c);
            }
            if (!TextUtils.isEmpty(tASInitParam.d)) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_STORAGE_PATH, tASInitParam.d);
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_SDK_VERSION, getSdkVersion());
            jSONObject.put(ActionCallbackDef.EXTRA_K_FLOAT_BTN_ENABLED, tASInitParam.e);
            if (tASInitParam.f != null && !tASInitParam.f.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = tASInitParam.f.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_WORDS, jSONArray);
            }
            if (tASInitParam.g != null) {
                jSONObject.put(ActionCallbackDef.EXTRA_K_CUSTOM_WAKE_WORD_THRESHOLD, tASInitParam.g);
            }
        } catch (JSONException e) {
            LogUtils.e(f175a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_CONFIG_INIT, jSONObject.toString().getBytes());
        LogUtils.t(f175a, "-setTasInitParams, appid:" + tASInitParam.f177a + ", appToken:" + tASInitParam.b + ", deviceUniqueID:" + tASInitParam.c + ", storageRootPath:" + tASInitParam.d);
    }

    public static TASConfigManager getInstance() {
        if (b == null) {
            synchronized (TASConfigManager.class) {
                if (b == null) {
                    b = new TASConfigManager();
                }
            }
        }
        return b;
    }

    public String getSdkVersion() {
        return "3.0.3";
    }

    public void init(Context context, TASInitListener tASInitListener) {
        init(context, null, tASInitListener);
        a();
    }

    public void init(Context context, TASInitParam tASInitParam, TASInitListener tASInitListener) {
        LogUtils.t(f175a, "+init(), param:" + tASInitParam);
        this.d = context.getApplicationContext();
        this.g = tASInitListener;
        this.f = tASInitParam;
        c.a().a(context);
        com.tencent.wecarspeech.sdk.a.a().a(context);
        c.a().a(TASConfigManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASConfigManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                if (!FocusCallbackDef.CALLBACK_CONFIG_INIT_SUCCESS.equals(str2) || TASConfigManager.this.g == null) {
                    return null;
                }
                TASConfigManager.this.e = true;
                TASConfigManager.this.g.onInit(0, "speech sdk init success");
                return null;
            }
        });
        if (this.c == null) {
            this.c = new b();
        }
        this.c.a(context);
        a();
        LogUtils.t(f175a, "-init(), param:" + tASInitParam);
    }

    public boolean isInited() {
        return this.e;
    }

    public void setFloatBtnHidden(boolean z) {
        LogUtils.t(f175a, "+setFloatBtnHidden, hidden:" + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_FLOAT_BTN_HIDDEN, z);
        } catch (JSONException e) {
            LogUtils.e(f175a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_CONFIG_SET_FLOAT_BTN_HIDDEN, jSONObject.toString().getBytes());
        LogUtils.t(f175a, "-setFloatBtnHidden, hidden:" + z);
    }

    public void setLogEnable(boolean z) {
        LogUtils.t(f175a, "+setLogEnable, enable:" + z);
        LogUtils.setOpenLog(z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_LOG_ENABLED, z);
        } catch (JSONException e) {
            LogUtils.e(f175a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_CONFIG_SET_LOG_ENABLED, jSONObject.toString().getBytes());
        LogUtils.t(f175a, "-setLogEnable, enable:" + z);
    }

    public void setWakeupKeywords(ArrayList<String> arrayList) {
        String str = f175a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setWakeupKeywords, wakeupKeywords:");
        sb.append(arrayList == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (arrayList == null || arrayList.isEmpty()) {
            com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_CONFIG_CLEAR_WAKEUP_WORDS, new byte[0]);
        }
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_CONFIG_SET_WAKEUP_WORDS, jSONArray.toString().getBytes());
        String str2 = f175a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setWakeupKeywords, wakeupKeywords:");
        sb2.append(arrayList == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
