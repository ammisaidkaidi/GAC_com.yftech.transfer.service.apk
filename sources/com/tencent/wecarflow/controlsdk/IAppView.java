package com.tencent.wecarflow.controlsdk;

import android.content.Context;
import android.content.Intent;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAppView {
    void beginSearch();

    void clear();

    void finishSearch();

    Context getContext();

    Intent getLaunchIntent();

    void onExpireChanged(boolean z);

    void onWXBindActivityOpenOrClose(boolean z, boolean z2);

    void setLoginUI(boolean z);

    void showBinding(int i);

    void showBindingList();

    void showFavor(long j, boolean z);

    void showLogin(long j);

    void showQQLogin();

    void showSearch(boolean z);

    void switchToFinder();

    void switchToPlayer();
}
