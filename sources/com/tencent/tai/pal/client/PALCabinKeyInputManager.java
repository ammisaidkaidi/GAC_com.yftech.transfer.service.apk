package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.input.CabinKeyEvent;
import com.tencent.tai.pal.input.KeyFilter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALCabinKeyInputManager extends INoProguardInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface CabinKeyEventHandler extends INoProguardInterface {
        KeyFilter getKeyFilter();

        void onKeyEvent(CabinKeyEvent cabinKeyEvent);

        void onKeyLongPressEvent(CabinKeyEvent cabinKeyEvent);
    }

    void registerCabinKeyEventHandler(CabinKeyEventHandler cabinKeyEventHandler);

    void setCabinKeyEventListener(CabinKeyEventHandler cabinKeyEventHandler);

    void unregisterCabinKeyEventHandler(CabinKeyEventHandler cabinKeyEventHandler);
}
