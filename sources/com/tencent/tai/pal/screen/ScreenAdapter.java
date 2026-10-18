package com.tencent.tai.pal.screen;

import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ScreenAdapter extends BaseAdapter implements IScreen {

    /* renamed from: a, reason: collision with root package name */
    private static final String f141a = "ScreenAdapter";

    @Override // com.tencent.tai.pal.screen.IScreen
    public abstract int adjustScreenBrightness(int i, int i2);

    @Override // com.tencent.tai.pal.screen.IScreen
    public abstract int getScreenBrightness();

    @Override // com.tencent.tai.pal.screen.IScreen
    public abstract int getScreenMAXBrightness();

    @Override // com.tencent.tai.pal.screen.IScreen
    public abstract boolean isScreenMute();
}
