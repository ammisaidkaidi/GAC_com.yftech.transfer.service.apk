package com.yftech.transfer.phonelink.helper;

import com.autochips.carplay.CarplayManager;
import com.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPlayLinkHelperA29 extends CarPlayLinkHelper {
    @Override // com.yftech.transfer.phonelink.helper.CarPlayLinkHelper, com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void enable(boolean z) {
        if (CarplayManager.getDefaultManager() == null) {
            LogUtil.i("carplayEnable CarplayManager.getDefaultManager() == null");
        } else {
            CarplayManager.getDefaultManager().disable();
            LogUtil.i("disable_carplay");
        }
    }
}
