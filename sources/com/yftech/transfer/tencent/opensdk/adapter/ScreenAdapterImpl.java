package com.yftech.transfer.tencent.opensdk.adapter;

import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.tai.pal.screen.ScreenAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public class ScreenAdapterImpl extends ScreenAdapter {
    private static int BRIGHTNESS_STEP = 2;
    private static final int MAX_BRIGHTNESS = 10;
    private static final int MIN_BRIGHTNESS = 0;

    private boolean regularBrightness(boolean z) {
        return false;
    }

    private boolean setBrightness(int i) {
        return false;
    }

    private boolean stepBrightness(boolean z, int i) {
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
    
        return 1;
     */
    @Override // com.tencent.tai.pal.screen.ScreenAdapter, com.tencent.tai.pal.screen.IScreen
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int adjustScreenBrightness(int i, int i2) {
        PlatformAdapter.LOGI("ScreenAdapterImpl::adjustScreenBrightness,the flag:" + i + ",value:" + i2);
        switch (i) {
            case 1:
                stepBrightness(true, BRIGHTNESS_STEP);
                break;
            case 2:
                stepBrightness(false, BRIGHTNESS_STEP);
                break;
            case 3:
                stepBrightness(true, i2);
                break;
            case 4:
                stepBrightness(false, i2);
                break;
            case 5:
                regularBrightness(true);
                break;
            case 6:
                regularBrightness(false);
                break;
            case 7:
                setBrightness(i2);
                break;
        }
    }

    @Override // com.tencent.tai.pal.screen.ScreenAdapter, com.tencent.tai.pal.screen.IScreen
    public int getScreenBrightness() {
        PlatformAdapter.LOGI("ScreenAdapterImpl::getScreenBrightness");
        return 10;
    }

    @Override // com.tencent.tai.pal.screen.ScreenAdapter, com.tencent.tai.pal.screen.IScreen
    public int getScreenMAXBrightness() {
        PlatformAdapter.LOGI("ScreenAdapterImpl::getScreenMAXBrightness");
        return 10;
    }

    @Override // com.tencent.tai.pal.screen.ScreenAdapter, com.tencent.tai.pal.screen.IScreen
    public boolean isScreenMute() {
        PlatformAdapter.LOGI("ScreenAdapterImpl::isScreenMute");
        return false;
    }
}
