package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarRouteInfoChanged extends WeCarBaseBean {
    public int currentRouteIndex;
    public WeCarRoutePoiNode endPoi;
    public List<RouteSummaryInfo> routeInfos;
    public WeCarRoutePoiNode startPoi;
    public List<WeCarRoutePoiNode> viaPois;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ZoomBound {
        public double bottom;
        public double left;
        public double right;
        public double top;

        public ZoomBound(double d, double d2, double d3, double d4) {
            this.left = d;
            this.top = d2;
            this.right = d3;
            this.bottom = d4;
        }

        public double getLeft() {
            return this.left;
        }

        public void setLeft(double d) {
            this.left = d;
        }

        public double getTop() {
            return this.top;
        }

        public void setTop(double d) {
            this.top = d;
        }

        public double getRight() {
            return this.right;
        }

        public void setRight(double d) {
            this.right = d;
        }

        public double getBottom() {
            return this.bottom;
        }

        public void setBottom(double d) {
            this.bottom = d;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RouteItem {
        public String guideText;
        public int length;
        public String roadName;
        public int turnKind;

        public RouteItem(int i, String str, String str2, int i2) {
            this.turnKind = i;
            this.roadName = str;
            this.guideText = str2;
            this.length = i2;
        }

        public int getTurnKind() {
            return this.turnKind;
        }

        public void setTurnKind(int i) {
            this.turnKind = i;
        }

        public String getRoadName() {
            return this.roadName;
        }

        public void setRoadName(String str) {
            this.roadName = str;
        }

        public String getGuideText() {
            return this.guideText;
        }

        public void setGuideText(String str) {
            this.guideText = str;
        }

        public int getLength() {
            return this.length;
        }

        public void setLength(int i) {
            this.length = i;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RouteSummaryInfo {
        public boolean isSetData = false;
        public ArrayList<String> keyRoadList;
        public int label;
        public int length;
        public int passTime;
        public String routeDetail;
        public ArrayList<RouteItem> routeItemList;
        public int tollFee;
        public int trafficLightCount;
        public ZoomBound zoomBound;

        public int getLabel() {
            return this.label;
        }

        public void setLabel(int i) {
            this.label = i;
        }

        public int getLength() {
            return this.length;
        }

        public void setLength(int i) {
            this.length = i;
        }

        public int getPassTime() {
            return this.passTime;
        }

        public void setPassTime(int i) {
            this.passTime = i;
        }

        public String getRouteDetail() {
            return this.routeDetail;
        }

        public void setRouteDetail(String str) {
            this.routeDetail = str;
        }

        public int getTollFee() {
            return this.tollFee;
        }

        public void setTollFee(int i) {
            this.tollFee = i;
        }

        public int getTrafficLightCount() {
            return this.trafficLightCount;
        }

        public void setTrafficLightCount(int i) {
            this.trafficLightCount = i;
        }

        public ZoomBound getZoomBound() {
            return this.zoomBound;
        }

        public void setZoomBound(ZoomBound zoomBound) {
            this.zoomBound = zoomBound;
        }

        public ArrayList<RouteItem> getRouteItemList() {
            return this.routeItemList;
        }

        public void setRouteItemList(ArrayList<RouteItem> arrayList) {
            this.routeItemList = arrayList;
        }

        public ArrayList<String> getKeyRoadList() {
            return this.keyRoadList;
        }

        public void setKeyRoadList(ArrayList<String> arrayList) {
            this.keyRoadList = arrayList;
        }

        public boolean isSetData() {
            return this.isSetData;
        }

        public void setSetData(boolean z) {
            this.isSetData = z;
        }
    }
}
