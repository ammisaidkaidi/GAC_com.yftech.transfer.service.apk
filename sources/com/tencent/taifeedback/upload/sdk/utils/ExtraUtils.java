package com.tencent.taifeedback.upload.sdk.utils;

import android.content.Context;
import android.net.Uri;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public class ExtraUtils {
    private static String TAG = "com.tencent.taifeedback.upload.sdk.utils.ExtraUtils";
    private static ExtraUtils utils;
    private String tcpdump = "tcpdump";
    private String bugreport = "bugreport";
    private String busybox = "busybox";
    private String pcapFile = null;
    private String reportFile = null;

    public static ExtraUtils getInstance() {
        if (utils == null) {
            utils = new ExtraUtils();
        }
        return utils;
    }

    public void destroy() {
        utils = null;
    }

    public void installBinary(Context context, String str) {
        File filesDir = context.getFilesDir();
        String str2 = filesDir.getAbsolutePath() + File.separator + str;
        if (new File(str2).exists()) {
            Utils.getInstance().log(TAG, str + " exists");
            return;
        }
        Utils.getInstance().log(TAG, "copy binary " + str);
        try {
            for (String str3 : filesDir.list()) {
                Utils.getInstance().log(TAG, str3);
            }
            FileUtils.getInstance().copy(Uri.parse("file:///android_asset/" + str).toString(), str2);
            String format = String.format("chmod 775 %s", str2);
            Utils.getInstance().log(TAG, format);
            Utils.getInstance().exec(context, format);
            for (String str4 : filesDir.list()) {
                Utils.getInstance().log(TAG, str4);
            }
            Utils.getInstance().log(TAG, "copy binary finished.");
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
    }

    public String startTcpDump(Context context) {
        installBinary(context, this.tcpdump);
        this.pcapFile = FileUtils.getInstance().getStoreFile(context, ".pcap");
        String format = String.format("%s%s%s -i any -p -s 0 -w %s", context.getFilesDir(), File.separator, this.tcpdump, this.pcapFile);
        Utils.getInstance().log(TAG, format);
        if (Utils.getInstance().isRooted()) {
            try {
                Utils.getInstance().exec(context, format);
            } catch (Exception e) {
                Utils.getInstance().log(TAG, e);
            }
        } else {
            Utils.getInstance().log(TAG, "phone has no rooted");
        }
        return this.pcapFile;
    }

    public String stopTcpDump(Context context) {
        installBinary(context, this.busybox);
        String format = String.format("%s%s%s killall %s", context.getFilesDir(), File.separator, this.busybox, this.tcpdump);
        Utils.getInstance().log(TAG, format);
        try {
            Utils.getInstance().exec(context, format);
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
        return this.pcapFile;
    }

    public String startBugReport(Context context) {
        this.reportFile = FileUtils.getInstance().getStoreFile(context, ".report");
        String format = String.format("%s > %s", this.bugreport, this.reportFile);
        Utils.getInstance().log(TAG, format);
        if (Utils.getInstance().isRooted()) {
            try {
                Utils.getInstance().exec(context, format);
            } catch (Exception e) {
                Utils.getInstance().log(TAG, e);
            }
        } else {
            Utils.getInstance().log(TAG, "phone has no rooted");
        }
        return this.reportFile;
    }

    public String stopBugReport(Context context) {
        installBinary(context, this.busybox);
        String format = String.format("%s%s%s killall %s", context.getFilesDir(), File.separator, this.busybox, this.bugreport);
        Utils.getInstance().log(TAG, format);
        try {
            Utils.getInstance().exec(context, format);
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
        return this.reportFile;
    }
}
