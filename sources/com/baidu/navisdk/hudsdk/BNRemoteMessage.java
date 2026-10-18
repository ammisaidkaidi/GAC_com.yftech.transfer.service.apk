package com.baidu.navisdk.hudsdk;

import android.graphics.Bitmap;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class BNRemoteMessage {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCruiseEnd {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCruiseStart {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGGPSLost {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGGPSNormal {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGNaviEnd {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGNaviStart {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGRPYawComplete {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGRPYawing {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGAuthSuccess {
        private String authResMsg;
        private int serverType;
        private String serverVersion;

        public void setServerType(int i) {
            this.serverType = i;
        }

        public void setServerVersion(String str) {
            this.serverVersion = str;
        }

        public void setAuthResMsg(String str) {
            this.authResMsg = str;
        }

        public int getServerType() {
            return this.serverType;
        }

        public String getServerVersion() {
            return this.serverVersion;
        }

        public String getAuthResMsg() {
            return this.authResMsg;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGManeuver {
        public int distance;
        public boolean mIsStraight;
        public int[] mLaneAddTypeArray;
        public int mLaneCount;
        public int[] mLaneSignArray;
        public double mLatitude;
        public double mLongitude;
        public int mManeuverId;
        public String mRGTips;
        public int mRingFlag;
        public int mTotalLaneAddType;
        public String name;
        public String nextRoadName;

        public boolean getIsStragiht() {
            return this.mIsStraight;
        }

        public String getRGTips() {
            return this.mRGTips;
        }

        public int getManeuverId() {
            return this.mManeuverId;
        }

        public double getManeuverLon() {
            return this.mLongitude;
        }

        public double getManeuverLat() {
            return this.mLatitude;
        }

        public int getManeuverRingInfo() {
            return this.mRingFlag;
        }

        public int getManeuverTotalLaneSum() {
            return this.mLaneCount;
        }

        public int getManeuverLaneTotalType() {
            return this.mTotalLaneAddType;
        }

        public int[] getManeuverLaneTypeArray() {
            return this.mLaneAddTypeArray;
        }

        public int[] getManeuverLaneSignArray() {
            return this.mLaneSignArray;
        }

        public void setManeuverName(String str) {
            this.name = str;
        }

        public void setManeuverDistance(int i) {
            this.distance = i;
        }

        public void setNextRoadName(String str) {
            this.nextRoadName = str;
        }

        public String getManeuverName() {
            return this.name;
        }

        public int getManeuverDistance() {
            return this.distance;
        }

        public String getNextRoadName() {
            return this.nextRoadName;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public int getDistance() {
            return this.distance;
        }

        public void setDistance(int i) {
            this.distance = i;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGServiceArea {
        private int distance;
        private String name;

        public void setServiceAreaName(String str) {
            this.name = str;
        }

        public void setServiceAreaDistance(int i) {
            this.distance = i;
        }

        public String getServiceAreaName() {
            return this.name;
        }

        public int getServiceAreaDistance() {
            return this.distance;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGAssistant {
        public int mAssistType;
        public int mRemainDist;
        public int mSpeed;
        public int mUpdateType;

        public int getAssistUpdateType() {
            return this.mUpdateType;
        }

        public int getAssistantType() {
            return this.mAssistType;
        }

        public int getAssistantLimitedSpeed() {
            return this.mSpeed;
        }

        public int getAssistantDistance() {
            return this.mRemainDist;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGRemainInfo {
        private int remainDistance;
        private int remainTime;

        public void setRemainDistance(int i) {
            this.remainDistance = i;
        }

        public void setRemainTime(int i) {
            this.remainTime = i;
        }

        public int getRemainDistance() {
            return this.remainDistance;
        }

        public int getRemainTime() {
            return this.remainTime;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCurrentRoad {
        private String curRoadName;

        public void setCurrentRoadName(String str) {
            this.curRoadName = str;
        }

        public String getCurrentRoadName() {
            return this.curRoadName;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGNextRoad {
        private String nextRoadName;

        public void setNextRoadName(String str) {
            this.nextRoadName = str;
        }

        public String getNextRoadName() {
            return this.nextRoadName;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNEnlargeRoad {
        public Bitmap arrowImage;
        public Bitmap basicImage;
        public int carPosX;
        public int carPosY;
        public int carRotate;
        public int isEnlargeState;
        public int lastCarPosX;
        public int lastCarPosY;
        public int lastCarRotate;
        public int remainDist;
        public String roadName;
        public int totalDist;
        public int type;

        public void setEnlargeRoadType(int i) {
            this.type = i;
        }

        public void setEnlargeRoadState(int i) {
            this.isEnlargeState = i;
        }

        public void setBasicImage(Bitmap bitmap) {
            this.basicImage = bitmap;
        }

        public void setArrowImage(Bitmap bitmap) {
            this.arrowImage = bitmap;
        }

        public void setTotalDist(int i) {
            this.totalDist = i;
        }

        public void setRemainDist(int i) {
            this.remainDist = i;
        }

        public void setRoadName(String str) {
            this.roadName = str;
        }

        public void setCarPosX(int i) {
            this.carPosX = i;
        }

        public void setCarPosY(int i) {
            this.carPosY = i;
        }

        public void setCarPosRotate(int i) {
            this.carRotate = i;
        }

        public void setLastCarPosX(int i) {
            this.lastCarPosX = i;
        }

        public void setLastCarPosY(int i) {
            this.lastCarPosY = i;
        }

        public void setLastCarPosRotate(int i) {
            this.lastCarRotate = i;
        }

        public int getEnlargeRoadType() {
            return this.type;
        }

        public int getEnlargeRoadState() {
            return this.isEnlargeState;
        }

        public Bitmap getBasicImage() {
            return this.basicImage;
        }

        public Bitmap getArrowImage() {
            return this.arrowImage;
        }

        public int getTotalDist() {
            return this.totalDist;
        }

        public int getRemainDist() {
            return this.remainDist;
        }

        public String getRoadName() {
            return this.roadName;
        }

        public int getCarPosX() {
            return this.carPosX;
        }

        public int getCarPosY() {
            return this.carPosY;
        }

        public int getCarPosRotate() {
            return this.carRotate;
        }

        public int getLastCarPosX() {
            return this.lastCarPosX;
        }

        public int getLastCarPosY() {
            return this.lastCarPosY;
        }

        public int getLastCarPosRotate() {
            return this.lastCarRotate;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCarInfo {
        public double mCarAngle;
        public int mCurSpeed;
        public double mLatitude;
        public double mLongitude;

        public double getLongitude() {
            return this.mLongitude;
        }

        public void setLongitude(double d) {
            this.mLongitude = d;
        }

        public double getLatitude() {
            return this.mLatitude;
        }

        public void setLatitude(double d) {
            this.mLatitude = d;
        }

        public int getCurSpeed() {
            return this.mCurSpeed;
        }

        public void setCurSpeed(int i) {
            this.mCurSpeed = i;
        }

        public double getCarAngle() {
            return this.mCarAngle;
        }

        public void setCarAngle(double d) {
            this.mCarAngle = d;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCarFreeStatus {
        public boolean mIsCarFree;

        public boolean getCarFreeStatus() {
            return this.mIsCarFree;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCarTunelInfo {
        public int mIsInTunel;

        public int getIsInTunel() {
            return this.mIsInTunel;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGDestInfo {
        public int mDestIcon;
        public double mDestLatitude;
        public double mDestLongitude;
        public int mDestTotalDist;

        public double getDestLongitude() {
            return this.mDestLongitude;
        }

        public void setDestLongitude(double d) {
            this.mDestLongitude = d;
        }

        public double getDestLatitude() {
            return this.mDestLatitude;
        }

        public void setDestLatitude(double d) {
            this.mDestLatitude = d;
        }

        public int getDestTotalDist() {
            return this.mDestTotalDist;
        }

        public void setDestTotalDist(int i) {
            this.mDestTotalDist = i;
        }

        public int getDestIcon() {
            return this.mDestIcon;
        }

        public void setDestIcon(int i) {
            this.mDestIcon = i;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGRouteInfo {
        public ArrayList<ShapePoint> mARRouteInfoList;
        public ArrayList<RestrictInfo> mRestritInfoList;
        public int mRouteId;
        public ArrayList<TimeLineInfo> mTimeLineInfoList;

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class RestrictInfo {
            public int mFromStartDist;
            public double mLatitude;
            public double mLongitude;
            public int mRestritType;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class ShapePoint {
            public int mFromStartDist;
            public int mLastRouteType;
            public double mLatitude;
            public double mLongitude;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class TimeLineInfo {
            public int mFromTimeEndDist;
            public int mFromTimeStartDist;
            public int mRouteType;
        }

        public ArrayList<ShapePoint> getARShapePointList() {
            return this.mARRouteInfoList;
        }

        public ArrayList<TimeLineInfo> getTimeLineList() {
            return this.mTimeLineInfoList;
        }

        public ArrayList<RestrictInfo> getRestrictInfoList() {
            return this.mRestritInfoList;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGCurShapeIndexUpdate {
        public int mFromStartDist;
        public int mShapeIndex;

        public int getIndex() {
            return this.mShapeIndex;
        }

        public int getFromStartDist() {
            return this.mFromStartDist;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BNRGNearByCameraInfo {
        public ArrayList<CameraInfo> mCameraInfoList;

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class CameraInfo {
            public int mCameraType;
            public int mFromStartDist;
            public double mLatitude;
            public double mLongitude;
        }

        public ArrayList<CameraInfo> getNearByCameraInfoList() {
            return this.mCameraInfoList;
        }
    }
}
