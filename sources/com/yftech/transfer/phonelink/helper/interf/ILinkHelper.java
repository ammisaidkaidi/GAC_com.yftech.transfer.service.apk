package com.yftech.transfer.phonelink.helper.interf;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILinkHelper {
    void connectByUsb();

    void connectByWireless();

    void disconnect();

    String getPhoneName();

    boolean isConnected();

    String linkName();
}
