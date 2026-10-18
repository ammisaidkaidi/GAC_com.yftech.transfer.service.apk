package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarDrLocationInfo extends WeCarBaseBean {
    public String nemaData;

    public WeCarDrLocationInfo() {
    }

    public WeCarDrLocationInfo(String str) {
        this.nemaData = str;
    }

    public String toString() {
        return "WeCarDrLocationInfo{nemaData='" + this.nemaData + "'}";
    }
}
