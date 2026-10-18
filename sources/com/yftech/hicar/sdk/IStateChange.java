package com.yftech.hicar.sdk;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IStateChange {
    void callStateChange(int i);

    void connectStateChange(boolean z);

    void deviceListChange();

    void initSuccess();

    void reConnectStateChange(boolean z, String str);

    void voiceStateChange(boolean z);
}
