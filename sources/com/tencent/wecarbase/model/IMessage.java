package com.tencent.wecarbase.model;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMessage {
    void parse(byte[] bArr, int i, int i2) throws CloudException;

    byte[] toBytes();
}
