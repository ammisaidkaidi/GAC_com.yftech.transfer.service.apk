package com.yftech.transfer.navigation;

import android.content.Context;

/* loaded from: /home/user/work/dex/classes.dex */
public interface INavigationAdapter {
    String getPackageName();

    void init(Context context);

    void release();

    void start();

    void stop();
}
