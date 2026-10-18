package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarNaviRoadConditionInfo extends WeCarBaseBean {

    @Deprecated
    public String destDesc;

    @Deprecated
    public double destPosLat;

    @Deprecated
    public double destPosLng;

    @Deprecated
    public int etaTime;

    @Deprecated
    public int routeTotalLen;

    @Deprecated
    public double startPosLat;

    @Deprecated
    public double startPosLng;
    public List<WeCarRoadConditionInfo> mRoadConds = new ArrayList();

    @Deprecated
    public int destType = -1;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarNaviRoadConditionInfo)) {
            return false;
        }
        WeCarNaviRoadConditionInfo weCarNaviRoadConditionInfo = (WeCarNaviRoadConditionInfo) obj;
        return this.etaTime == weCarNaviRoadConditionInfo.etaTime && this.routeTotalLen == weCarNaviRoadConditionInfo.routeTotalLen && this.destType == weCarNaviRoadConditionInfo.destType && Double.compare(weCarNaviRoadConditionInfo.startPosLat, this.startPosLat) == 0 && Double.compare(weCarNaviRoadConditionInfo.startPosLng, this.startPosLng) == 0 && Double.compare(weCarNaviRoadConditionInfo.destPosLat, this.destPosLat) == 0 && Double.compare(weCarNaviRoadConditionInfo.destPosLng, this.destPosLng) == 0 && equals(this.mRoadConds, weCarNaviRoadConditionInfo.mRoadConds) && equals(this.destDesc, weCarNaviRoadConditionInfo.destDesc);
    }

    public int hashCode() {
        return Objects.hash(this.mRoadConds, Integer.valueOf(this.etaTime), Integer.valueOf(this.routeTotalLen), Integer.valueOf(this.destType), this.destDesc, Double.valueOf(this.startPosLat), Double.valueOf(this.startPosLng), Double.valueOf(this.destPosLat), Double.valueOf(this.destPosLng));
    }

    public String toString() {
        return "WeCarNaviRoadConditionInfo{mRoadConds=" + this.mRoadConds + ", etaTime=" + this.etaTime + ", routeTotalLen=" + this.routeTotalLen + ", destType=" + this.destType + ", destDesc='" + this.destDesc + "', startPosLat=" + this.startPosLat + ", startPosLng=" + this.startPosLng + ", destPosLat=" + this.destPosLat + ", destPosLng=" + this.destPosLng + '}';
    }
}
