package com.so;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class GpsManager {
    private static String TAG = "GpsManager";
    private static GpsManager gpsManager;
    private static final HashSet<GpsObservor> observors;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class GpsObservor {
        public void onGetData(String str, String str2) {
        }
    }

    public native void init();

    public native void updateEncoder(double d, double d2, double d3, double d4, double d5, double d6, double d7, int i, int i2);

    public native void updateGps(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, int i);

    public static GpsManager getInstance() {
        if (gpsManager == null) {
            synchronized (GpsManager.class) {
                if (gpsManager == null) {
                    gpsManager = new GpsManager();
                }
            }
        }
        return gpsManager;
    }

    static {
        System.loadLibrary("transfer");
        observors = new HashSet<>();
    }

    public void onGetData(int i, byte[] bArr, int i2, byte[] bArr2) {
        String str = new String(bArr, 0, i);
        String str2 = new String(bArr2, 0, i2);
        Iterator<GpsObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onGetData(str, str2);
        }
    }

    public static void registerObservor(GpsObservor gpsObservor) {
        observors.add(gpsObservor);
    }

    public static void unregisterObservor(GpsObservor gpsObservor) {
        observors.remove(gpsObservor);
    }

    public static boolean isregisterObservor(GpsObservor gpsObservor) {
        return observors.contains(gpsObservor);
    }
}
