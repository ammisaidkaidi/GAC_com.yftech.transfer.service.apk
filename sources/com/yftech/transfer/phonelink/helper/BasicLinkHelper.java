package com.yftech.transfer.phonelink.helper;

import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.transfer.phonelink.helper.interf.ILinkHelper;
import com.yftech.transfer.phonelink.helper.interf.IMediaInf;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BasicLinkHelper implements ILinkHelper, IMediaInf {
    protected final String TAG = getClass().getName();

    public abstract void acceptPhone();

    public abstract void closeVR();

    public abstract void connectCarLinkDevice(CarLinkDevice carLinkDevice);

    public abstract void enable(boolean z);

    public abstract void forgetCarLinkDevice(CarLinkDevice carLinkDevice);

    public abstract List<CarLinkDevice> getAvailableCarLinkDeviceList();

    public abstract int getCallStatus();

    public abstract List<CarLinkDevice> getCarLinkDeviceList();

    public abstract CarLinkDevice getConnectedCarLinkDeviceList();

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String getPhoneName() {
        return "";
    }

    public abstract int getVRStatus();

    public abstract void init();

    public abstract void mute(boolean z);

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pauseForResume() {
    }

    public abstract void rejectPhone();

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void resume() {
    }

    public abstract void starCallPage();

    public abstract void startPage(int i);

    public abstract void startVR();

    public abstract void uninit();
}
