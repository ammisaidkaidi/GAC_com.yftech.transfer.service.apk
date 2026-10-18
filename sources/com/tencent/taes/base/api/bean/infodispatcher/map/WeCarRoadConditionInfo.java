package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRoadConditionInfo extends WeCarBaseBean {
    public static final int ROAD_COND_STATE_BLOCK = 2;
    public static final int ROAD_COND_STATE_CLEAR = 0;
    public static final int ROAD_COND_STATE_HEAVY_BLOCK = 4;
    public static final int ROAD_COND_STATE_NONE = 3;
    public static final int ROAD_COND_STATE_SLOW = 1;
    public double destPosLat;
    public double destPosLng;
    public int mLength;
    public int mPassTime;
    public int mRoadCondState;
    public String mRoadName;
    public double startPosLat;
    public double startPosLng;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarRoadConditionInfo)) {
            return false;
        }
        WeCarRoadConditionInfo weCarRoadConditionInfo = (WeCarRoadConditionInfo) obj;
        return this.mRoadCondState == weCarRoadConditionInfo.mRoadCondState && this.mLength == weCarRoadConditionInfo.mLength && this.mPassTime == weCarRoadConditionInfo.mPassTime && this.startPosLat == weCarRoadConditionInfo.startPosLat && this.startPosLng == weCarRoadConditionInfo.startPosLng && this.destPosLat == weCarRoadConditionInfo.destPosLat && this.destPosLng == weCarRoadConditionInfo.destPosLng && equals(this.mRoadName, weCarRoadConditionInfo.mRoadName);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mRoadCondState), Integer.valueOf(this.mLength), Integer.valueOf(this.mPassTime), this.mRoadName, Double.valueOf(this.startPosLat), Double.valueOf(this.startPosLng), Double.valueOf(this.destPosLat), Double.valueOf(this.destPosLng));
    }

    public String toString() {
        return "WeCarRoadConditionInfo{mRoadCondState=" + this.mRoadCondState + ", mLength=" + this.mLength + ", mPassTime=" + this.mPassTime + ", mRoadName='" + this.mRoadName + "', startPosLat=" + this.startPosLat + ", startPosLng=" + this.startPosLng + ", destPosLat=" + this.destPosLat + ", destPosLng=" + this.destPosLng + '}';
    }
}
