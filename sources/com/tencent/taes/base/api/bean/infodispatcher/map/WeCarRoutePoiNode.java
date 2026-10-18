package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRoutePoiNode extends WeCarBaseBean {
    public double latitude;
    public double longitude;
    public String name = "";
    public String address = "";
    public String id = "";
    public String type = "";
    public String classes = "";

    public WeCarRoutePoiNode(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
    }

    public WeCarRoutePoiNode() {
    }

    public boolean isLatlngValid() {
        return this.latitude > 1.0d && this.latitude < 180.0d && this.longitude > 1.0d && this.longitude < 180.0d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarRoutePoiNode)) {
            return false;
        }
        WeCarRoutePoiNode weCarRoutePoiNode = (WeCarRoutePoiNode) obj;
        return Double.compare(weCarRoutePoiNode.latitude, this.latitude) == 0 && Double.compare(weCarRoutePoiNode.longitude, this.longitude) == 0 && equals(this.name, weCarRoutePoiNode.name) && equals(this.id, weCarRoutePoiNode.id) && equals(this.address, weCarRoutePoiNode.address) && equals(this.type, weCarRoutePoiNode.type) && equals(this.classes, weCarRoutePoiNode.classes);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.latitude), Double.valueOf(this.longitude), this.name, this.id, this.type, this.address, this.classes);
    }

    public String toString() {
        return "WeCarRoutePoiNode{latitude=" + this.latitude + ", longitude=" + this.longitude + ", name='" + this.name + "', address='" + this.address + "', id='" + this.id + "', type='" + this.type + "', classes='" + this.classes + "'}";
    }
}
