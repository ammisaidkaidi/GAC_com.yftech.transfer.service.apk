package com.tencent.taiutils;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class PermissionManager {
    public static PermissionManager sInstance = new PermissionManager();
    public String[] mPermissions = {"android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO"};
    public final boolean mIsDrawOverlayRequired = false;
    public List<PermissionGrantedListener> mPermissionListeners = new CopyOnWriteArrayList();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface PermissionGrantedListener {
        void onAllPermissionsGranted();
    }

    public static PermissionManager getInstance() {
        return sInstance;
    }

    public boolean canDrawOverlay(Context context) {
        return true;
    }

    public boolean handleRequestPermissionsResult(Context context, String[] strArr, int[] iArr) {
        boolean isPermissionGranted = isPermissionGranted(context);
        if (isPermissionGranted) {
            Iterator<PermissionGrantedListener> it = this.mPermissionListeners.iterator();
            while (it.hasNext()) {
                it.next().onAllPermissionsGranted();
            }
        }
        return isPermissionGranted;
    }

    public boolean isPermissionGranted(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            for (String str : this.mPermissions) {
                if (ActivityCompat.checkSelfPermission(context, str) == -1) {
                    return false;
                }
            }
        }
        return true;
    }

    public void registerPermissionGrantedListener(PermissionGrantedListener permissionGrantedListener) {
        if (permissionGrantedListener == null || this.mPermissionListeners.contains(permissionGrantedListener)) {
            return;
        }
        this.mPermissionListeners.add(permissionGrantedListener);
    }

    public void requestPermission(Activity activity) {
        ArrayList arrayList = new ArrayList();
        for (String str : this.mPermissions) {
            if (ActivityCompat.checkSelfPermission(activity, str) == -1) {
                arrayList.add(str);
            }
        }
        if (arrayList.size() > 0) {
            ActivityCompat.requestPermissions(activity, (String[]) arrayList.toArray(new String[arrayList.size()]), 0);
        }
    }

    public void setPermissions(String[] strArr) {
        this.mPermissions = strArr;
    }

    public void unregisterPermissionGrantedListener(PermissionGrantedListener permissionGrantedListener) {
        if (permissionGrantedListener != null) {
            this.mPermissionListeners.remove(permissionGrantedListener);
        }
    }
}
