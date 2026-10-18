package com.yftech.transfer.pki;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class PkiManager {
    private static String TAG = "PkiManager";
    private static PkiManager pkiManager;
    int cycleHour;
    int cycleMin;
    int did;

    public native void init();

    public native String szitrusCertParse();

    public native int szitrusCertPass(String str);

    public native int szitrusCertStatus();

    public native int szitrusDid();

    public native int szitrusSignature();

    public native void szitrusSync(String str, String str2);

    public native int szitrusSyncCert();

    public native int szitrusSyncDevice(String str, String str2);

    public native int szitrusSyncDomain(String str, int i);

    public native int szitrusSyncPolicy(int i, int i2, int i3, int i4);

    public native int szitrusVerify(String str, String str2, int i, String str3, int i2, String str4, String str5, int i3);

    public native String szitrusgetVersion();

    public static PkiManager getInstance() {
        if (pkiManager == null) {
            synchronized (PkiManager.class) {
                Log.d(TAG, "PkiManager");
                if (pkiManager == null) {
                    pkiManager = new PkiManager();
                }
            }
        }
        return pkiManager;
    }

    static {
        System.loadLibrary("ioTSecuSrv_interface");
    }
}
