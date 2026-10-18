package com.yftech.hicar.sdk;

import android.content.ComponentName;
import android.os.IBinder;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBindCallBack {
    default void onBindingDied(ComponentName componentName) {
    }

    void onServiceConnected(ComponentName componentName, IBinder iBinder);

    void onServiceDisconnected(ComponentName componentName);
}
