package com.yftech.transfer.phonelink.manager.interf;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BasicManager implements IManager {
    protected final String TAG = getClass().getName() + "#";

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public String name() {
        return this.TAG;
    }
}
