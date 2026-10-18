package com.tencent.taes.base.api.bean.infodispatcher.map;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRouteParkingPoiInfo extends WeCarRoutePoiNode {
    public String parkingPrice;
    public int parkingType = -1;
    public int remainParkingSpaces = -1;
    public String richInfo;

    public String getParkingPrice() {
        return this.parkingPrice;
    }

    public void setParkingPrice(String str) {
        this.parkingPrice = str;
    }

    public int getParkingType() {
        return this.parkingType;
    }

    public void setParkingType(int i) {
        this.parkingType = i;
    }

    public int getRemainParkingSpaces() {
        return this.remainParkingSpaces;
    }

    public void setRemainParkingSpaces(int i) {
        this.remainParkingSpaces = i;
    }
}
