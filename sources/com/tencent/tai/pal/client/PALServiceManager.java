package com.tencent.tai.pal.client;

import android.content.Context;
import android.util.Log;
import com.tencent.tai.pal.INoProguardClass;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.client.cs.c;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class PALServiceManager implements INoProguardClass {
    public static final int ADAPTATION_TYPE_DEFAULT = 0;
    public static final int ADAPTATION_TYPE_LOCAL = 2;
    public static final int ADAPTATION_TYPE_REMOTE = 1;
    public static final int ADAPTATION_TYPE_UNKNOWN = -1;
    public static final int ERROR_BIND_SERVICE_EXCEPTION = 3;
    public static final int ERROR_BIND_SERVICE_FAILURE = 4;
    public static final int ERROR_REMOTE_INNER_ERROR = 2;
    public static final int ERROR_REMOTE_VERSION_NOT_MATCH = 1;
    public static final int ERROR_UNKNOWN = -1;

    /* renamed from: a, reason: collision with root package name */
    private static final List<ManagerStateListener> f63a = new ArrayList();
    private static volatile a b;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum AdaptationMode implements INoProguardClass {
        REMOTE_ADAPTATION_FIRST,
        REMOTE_ADAPTATION_ONLY,
        LOCAL_ADAPTATION_FIRST,
        LOCAL_ADAPTATION_ONLY,
        DEFAULT_ADAPTATION_ONLY
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ManagerStateListener extends INoProguardInterface {
        void onConnected(PlatformSupportInfo platformSupportInfo);

        void onDisconnected();

        void onError(int i);
    }

    public static int getCurrentAdaptationType() throws IllegalStateException {
        return 1;
    }

    private PALServiceManager() {
    }

    public static void registerManagerStateListener(final ManagerStateListener managerStateListener) {
        com.tencent.tai.pal.util.a.b(new Runnable() { // from class: com.tencent.tai.pal.client.PALServiceManager.1
            @Override // java.lang.Runnable
            public void run() {
                if (PALServiceManager.b == null) {
                    PALServiceManager.f63a.add(ManagerStateListener.this);
                } else {
                    PALServiceManager.b.a(ManagerStateListener.this);
                }
            }
        });
    }

    public static void unregisterManagerStateListener(final ManagerStateListener managerStateListener) {
        com.tencent.tai.pal.util.a.b(new Runnable() { // from class: com.tencent.tai.pal.client.PALServiceManager.2
            @Override // java.lang.Runnable
            public void run() {
                if (PALServiceManager.b == null) {
                    PALServiceManager.f63a.remove(ManagerStateListener.this);
                } else {
                    PALServiceManager.b.b(ManagerStateListener.this);
                }
            }
        });
    }

    public static boolean isServiceConnected() {
        return b != null && b.a();
    }

    public static void init(Context context, ManagerStateListener managerStateListener) throws RuntimeException {
        init(new PALConfig.Builder(context).listener(managerStateListener).build());
    }

    public static void init(Context context, ManagerStateListener managerStateListener, boolean z) throws RuntimeException {
        init(new PALConfig.Builder(context).listener(managerStateListener).build());
    }

    public static void init(Context context, ManagerStateListener managerStateListener, AdaptationMode adaptationMode) throws RuntimeException {
        init(new PALConfig.Builder(context).listener(managerStateListener).build());
    }

    public static void init(PALConfig pALConfig) {
        if (pALConfig == null) {
            throw new IllegalArgumentException("Illegal argument config:null");
        }
        final ManagerStateListener managerStateListener = pALConfig.getManagerStateListener();
        final Context context = pALConfig.getContext();
        com.tencent.tai.pal.util.a.b(new Runnable() { // from class: com.tencent.tai.pal.client.PALServiceManager.3
            @Override // java.lang.Runnable
            public void run() {
                Log.i(SDKConstants.TAG, "PALServiceManager.init context=" + context + " listener=" + managerStateListener + " sServiceManager=" + PALServiceManager.b);
                if (PALServiceManager.b == null) {
                    a unused = PALServiceManager.b = new c();
                    Iterator it = PALServiceManager.f63a.iterator();
                    while (it.hasNext()) {
                        PALServiceManager.b.a((ManagerStateListener) it.next());
                    }
                    PALServiceManager.f63a.clear();
                }
                PALServiceManager.b.a(context, managerStateListener);
            }
        });
    }

    public static <T> T getService(Class<T> cls) throws IllegalArgumentException, IllegalStateException, FeatureNotSupportedException {
        if (!isServiceConnected()) {
            throw new IllegalStateException("PALServiceManager : service NOT connected.");
        }
        if (b.a(getPlatformSupportInfo(), cls)) {
            return (T) b.a(cls);
        }
        throw new FeatureNotSupportedException("service Not supported:" + cls.getName());
    }

    public static VersionInfo getLocalVerison() {
        return VersionInfo.getLocalVersion();
    }

    public static VersionInfo getRemoteVersion() throws IllegalStateException {
        if (!isServiceConnected()) {
            throw new IllegalStateException("PALServiceManager : service NOT connected.");
        }
        return VersionInfo.getRemoteVersion();
    }

    public static PlatformSupportInfo getPlatformSupportInfo() throws IllegalStateException {
        if (!isServiceConnected()) {
            throw new IllegalStateException("PALServiceManager : service NOT connected.");
        }
        return b.b();
    }

    public static String getCurrentAdaptationPackageName() throws IllegalStateException {
        if (!isServiceConnected()) {
            throw new IllegalStateException("PALServiceManager : service NOT connected.");
        }
        return b.c();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class PALConfig implements INoProguardClass {

        /* renamed from: a, reason: collision with root package name */
        private ManagerStateListener f68a;
        private Context b;

        private PALConfig() {
        }

        public ManagerStateListener getManagerStateListener() {
            return this.f68a;
        }

        public Context getContext() {
            return this.b;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder implements INoProguardClass {

            /* renamed from: a, reason: collision with root package name */
            private Context f69a;
            private ManagerStateListener b;

            public Builder(Context context) {
                if (context == null) {
                    throw new IllegalArgumentException("illegal argument null context");
                }
                this.f69a = context;
            }

            public Builder listener(ManagerStateListener managerStateListener) {
                this.b = managerStateListener;
                return this;
            }

            public PALConfig build() {
                PALConfig pALConfig = new PALConfig();
                pALConfig.b = this.f69a;
                pALConfig.f68a = this.b;
                return pALConfig;
            }
        }
    }
}
