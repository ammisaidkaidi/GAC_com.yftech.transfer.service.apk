package com.tencent.tai.pal;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ClientInfo.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Map<Integer, VersionInfo> f44a = new ConcurrentHashMap();

    public static void a(int i, VersionInfo versionInfo) {
        f44a.put(Integer.valueOf(i), versionInfo);
    }

    public static void a() {
        f44a.clear();
    }
}
