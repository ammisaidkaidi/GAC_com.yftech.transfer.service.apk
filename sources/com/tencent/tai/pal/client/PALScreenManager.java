package com.tencent.tai.pal.client;

import com.tencent.tai.pal.screen.IScreen;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALScreenManager extends IScreen {
    @Override // com.tencent.tai.pal.screen.IScreen
    int adjustScreenBrightness(int i, int i2);

    @Override // com.tencent.tai.pal.screen.IScreen
    int getScreenBrightness();

    @Override // com.tencent.tai.pal.screen.IScreen
    int getScreenMAXBrightness();

    @Override // com.tencent.tai.pal.screen.IScreen
    boolean isScreenMute();
}
