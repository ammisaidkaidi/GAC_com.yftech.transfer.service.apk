package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarZoneSpeedInfo extends WeCarBaseBean {
    public int avgSpeed;
    public boolean isOverspeed;
    public boolean isShow;
    public int remainDist;
    public int speedLimit;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarZoneSpeedInfo)) {
            return false;
        }
        WeCarZoneSpeedInfo weCarZoneSpeedInfo = (WeCarZoneSpeedInfo) obj;
        return this.isShow == weCarZoneSpeedInfo.isShow && this.speedLimit == weCarZoneSpeedInfo.speedLimit && this.remainDist == weCarZoneSpeedInfo.remainDist && this.isOverspeed == weCarZoneSpeedInfo.isOverspeed && this.avgSpeed == weCarZoneSpeedInfo.avgSpeed;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isShow), Integer.valueOf(this.speedLimit), Integer.valueOf(this.remainDist), Boolean.valueOf(this.isOverspeed), Integer.valueOf(this.avgSpeed));
    }
}
