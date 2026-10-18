package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRouteEvent extends WeCarBaseBean {
    public int eventType;
    public boolean isRouteSucc;
    public int resultCode;
    public int routeType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarRouteEvent)) {
            return false;
        }
        WeCarRouteEvent weCarRouteEvent = (WeCarRouteEvent) obj;
        return this.routeType == weCarRouteEvent.routeType && this.eventType == weCarRouteEvent.eventType && this.resultCode == weCarRouteEvent.resultCode && this.isRouteSucc == weCarRouteEvent.isRouteSucc;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.routeType), Integer.valueOf(this.eventType), Integer.valueOf(this.resultCode), Boolean.valueOf(this.isRouteSucc));
    }
}
