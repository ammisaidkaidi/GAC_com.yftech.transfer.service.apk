package com.tencent.tai.pal.input;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class CabinKeyEventAdapter extends BaseAdapter {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface CabinKeyEventDispatcher extends INoProguardInterface {
        void dispatchKeyEvent(int i, int i2, int i3, long j, long j2);

        void dispatchKeyLongPressEvent(int i, int i2, int i3, long j, long j2);

        Set<Integer> getRegisteredKeyCodeSet();
    }

    public abstract void registerCabinKeyEventDispatcher(CabinKeyEventDispatcher cabinKeyEventDispatcher);

    public abstract void unregisterCabinKeyEventDispatcher(CabinKeyEventDispatcher cabinKeyEventDispatcher);
}
