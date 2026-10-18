package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarPushPoiInfo extends WeCarBaseBean {
    public String address;
    public double lat;
    public double lng;
    public String name;
    public long time;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarPushPoiInfo)) {
            return false;
        }
        WeCarPushPoiInfo weCarPushPoiInfo = (WeCarPushPoiInfo) obj;
        return equals(this.name, weCarPushPoiInfo.name) && equals(this.address, weCarPushPoiInfo.address) && this.lat == weCarPushPoiInfo.lat && this.lng == weCarPushPoiInfo.lng && this.time == weCarPushPoiInfo.time;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.address, Double.valueOf(this.lat), Double.valueOf(this.lng), Long.valueOf(this.time));
    }
}
