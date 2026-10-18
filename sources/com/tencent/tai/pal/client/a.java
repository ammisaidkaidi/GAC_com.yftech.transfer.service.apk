package com.tencent.tai.pal.client;

import android.content.Context;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.client.PALServiceManager;

/* compiled from: IServiceManager.java */
/* loaded from: /home/user/work/dex/classes.dex */
public interface a {
    <T> T a(Class<T> cls) throws IllegalArgumentException, IllegalStateException;

    void a(Context context, PALServiceManager.ManagerStateListener managerStateListener) throws RuntimeException;

    void a(PALServiceManager.ManagerStateListener managerStateListener);

    boolean a();

    PlatformSupportInfo b();

    void b(PALServiceManager.ManagerStateListener managerStateListener);

    String c();
}
