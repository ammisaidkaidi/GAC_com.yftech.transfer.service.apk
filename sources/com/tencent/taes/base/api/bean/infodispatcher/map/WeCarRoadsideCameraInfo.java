package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRoadsideCameraInfo extends WeCarBaseBean {
    public boolean isOverSpeed;
    public boolean isShow;
    public int remainDist;
    public int speedLimit;
    public int startDist;
    public int type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarRoadsideCameraInfo)) {
            return false;
        }
        WeCarRoadsideCameraInfo weCarRoadsideCameraInfo = (WeCarRoadsideCameraInfo) obj;
        return this.isShow == weCarRoadsideCameraInfo.isShow && this.type == weCarRoadsideCameraInfo.type && this.startDist == weCarRoadsideCameraInfo.startDist && this.remainDist == weCarRoadsideCameraInfo.remainDist && this.speedLimit == weCarRoadsideCameraInfo.speedLimit && this.isOverSpeed == weCarRoadsideCameraInfo.isOverSpeed;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isShow), Integer.valueOf(this.type), Integer.valueOf(this.startDist), Integer.valueOf(this.remainDist), Integer.valueOf(this.speedLimit), Boolean.valueOf(this.isOverSpeed));
    }
}
