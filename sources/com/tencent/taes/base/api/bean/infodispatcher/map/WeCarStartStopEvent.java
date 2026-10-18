package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarStartStopEvent extends WeCarBaseBean {
    public int commuteType;
    public int disInMetre;
    public WeCarRoutePoiNode endNode;
    public int eventType;
    public boolean isRealNavi;
    public int mode;
    public WeCarRoutePoiNode startNode;
    public boolean startSucc;
    public int timeInSecond;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WeCarStartStopEvent weCarStartStopEvent = (WeCarStartStopEvent) obj;
        return this.mode == weCarStartStopEvent.mode && this.eventType == weCarStartStopEvent.eventType && this.startSucc == weCarStartStopEvent.startSucc && this.isRealNavi == weCarStartStopEvent.isRealNavi && this.commuteType == weCarStartStopEvent.commuteType && this.timeInSecond == weCarStartStopEvent.timeInSecond && this.disInMetre == weCarStartStopEvent.disInMetre && Objects.equals(this.startNode, weCarStartStopEvent.startNode) && Objects.equals(this.endNode, weCarStartStopEvent.endNode);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mode), Integer.valueOf(this.eventType), this.startNode, this.endNode, Boolean.valueOf(this.startSucc), Boolean.valueOf(this.isRealNavi), Integer.valueOf(this.commuteType), Integer.valueOf(this.timeInSecond), Integer.valueOf(this.disInMetre));
    }
}
