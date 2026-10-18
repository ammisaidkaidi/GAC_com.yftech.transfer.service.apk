package com.desaysv.mixmedia.support;

import com.yftech.transfer.service.CarAppList;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public enum EnumMediaSource {
    ONLINE_MUSIC(0, "在线音乐", 0),
    BT_MUSIC(1, CarAppList.BT_MUSIC_NAME, 1),
    USB0_MUSIC(2, CarAppList.USB_MUSIC_NAME, 2),
    ONLINE_TRACK(4, "喜马拉雅", 4);

    private int code;
    private int index;
    private String name;

    EnumMediaSource(int i, String str, int i2) {
        this.code = i;
        this.name = str;
        this.index = i2;
    }

    public int getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public int getIndex() {
        return this.index;
    }

    public static EnumMediaSource getMediaSourceByCode(int i) {
        for (EnumMediaSource enumMediaSource : values()) {
            if (i == enumMediaSource.code) {
                return enumMediaSource;
            }
        }
        return null;
    }

    public static EnumMediaSource getMediaSourceByIndex(int i) {
        if (i < 0 || i >= values().length) {
            return null;
        }
        return values()[i];
    }

    public static int indexOf(EnumMediaSource enumMediaSource) {
        return Arrays.binarySearch(values(), enumMediaSource);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EnumMediaSource{super.name='" + name() + "', code=" + this.code + ", name='" + this.name + "'}";
    }
}
