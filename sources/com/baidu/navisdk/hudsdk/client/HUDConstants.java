package com.baidu.navisdk.hudsdk.client;

/* loaded from: /home/user/work/dex/classes.dex */
public class HUDConstants {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AssistantType {
        public static final int ACCIDENT = 7;
        public static final int BLIND_BEND = 4;
        public static final int BLIND_SLOPE = 5;
        public static final int BRIDGE = 2;
        public static final int CHILDREN = 12;
        public static final int HONK = 18;
        public static final int INTERVAL_CAMERA = 11;
        public static final int JOINT = 0;
        public static final int NARROW = 14;
        public static final int OVER_TAKE_FORBIDEN = 17;
        public static final int PECCANRY_CAMERA = 10;
        public static final int RAILWAY = 3;
        public static final int ROCKFALL = 6;
        public static final int SLIP = 16;
        public static final int SPEED_CAMERA = 8;
        public static final int TRAFFIC_LIGHT_CAMERA = 9;
        public static final int TUNNEL = 1;
        public static final int UNEVEN = 13;
        public static final int VILLAGE = 15;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CameraType {
        public static final int CAMERA_TYPE_LIMIT_SPEED = 1;
        public static final int CAMERA_TYPE_PECCANCY = 3;
        public static final int CAMERA_TYPE_TRAFFIC_LIGHT = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CarTunnel {
        public static final int CAR_CUR_IN_TUNNEL = 1;
        public static final int CAR_CUR_NOT_IN_TUNNEL = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ClientBindMode {
        public static final int BAIDU_MAP_ONLY = 2;
        public static final int BAIDU_NAVI_ONLY = 1;
        public static final int DEFAULT = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class EnlargeMapState {
        public static final int EXPAND_MAP_STATE_HIDE = 2;
        public static final int EXPAND_MAP_STATE_SHOW = 0;
        public static final int EXPAND_MAP_STATE_UPDATE = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class EnlargeMapType {
        public static final int EXPAND_MAP_DEST_STREET_VIEW = 3;
        public static final int EXPAND_MAP_DIRECT_BOARD = 2;
        public static final int EXPAND_MAP_RASTER = 0;
        public static final int EXPAND_MAP_VECTOR = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LineAdditionType {
        public static final int LANE_BOTH_INCREASING = 3;
        public static final int LANE_LEFT_INCREASING = 1;
        public static final int LANE_NON_INCREASING = 0;
        public static final int LANE_RIGHT_INCREASING = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RestrictType {
        public static final int RESTRICT_TYPECurveRight = 2;
        public static final int RESTRICT_TYPE_AccidentProne = 28;
        public static final int RESTRICT_TYPE_BidirectionalTraffic = 11;
        public static final int RESTRICT_TYPE_ByPassBoth = 29;
        public static final int RESTRICT_TYPE_ByPassLeft = 30;
        public static final int RESTRICT_TYPE_ByPassRight = 31;
        public static final int RESTRICT_TYPE_Caution = 32;
        public static final int RESTRICT_TYPE_CautionSign = 37;
        public static final int RESTRICT_TYPE_Children = 12;
        public static final int RESTRICT_TYPE_ContinuousDown = 36;
        public static final int RESTRICT_TYPE_CrossWind = 16;
        public static final int RESTRICT_TYPE_CurveContinuous = 4;
        public static final int RESTRICT_TYPE_CurveLeft = 1;
        public static final int RESTRICT_TYPE_CurveReverse = 3;
        public static final int RESTRICT_TYPE_HillsideDangerousLeft = 18;
        public static final int RESTRICT_TYPE_HillsideDangerousRight = 19;
        public static final int RESTRICT_TYPE_Honk = 35;
        public static final int RESTRICT_TYPE_Hump = 45;
        public static final int RESTRICT_TYPE_HumpBridge = 23;
        public static final int RESTRICT_TYPE_Invalid = -1;
        public static final int RESTRICT_TYPE_JointCar = 41;
        public static final int RESTRICT_TYPE_JointLeft = 38;
        public static final int RESTRICT_TYPE_JointRight = 39;
        public static final int RESTRICT_TYPE_LiveStock = 13;
        public static final int RESTRICT_TYPE_LowSpeed = 42;
        public static final int RESTRICT_TYPE_ManagedRailwayCross = 26;
        public static final int RESTRICT_TYPE_NarrowBoth = 7;
        public static final int RESTRICT_TYPE_NarrowBridge = 10;
        public static final int RESTRICT_TYPE_NarrowLeft = 9;
        public static final int RESTRICT_TYPE_NarrowRight = 8;
        public static final int RESTRICT_TYPE_OnDamLeft = 20;
        public static final int RESTRICT_TYPE_OnDamRight = 21;
        public static final int RESTRICT_TYPE_OverTakeForbidden = 33;
        public static final int RESTRICT_TYPE_OverTakeForbiddenRemove = 34;
        public static final int RESTRICT_TYPE_RockfallLeft = 14;
        public static final int RESTRICT_TYPE_RockfallRight = 15;
        public static final int RESTRICT_TYPE_Sinks = 46;
        public static final int RESTRICT_TYPE_Slip = 17;
        public static final int RESTRICT_TYPE_SlopeDown = 6;
        public static final int RESTRICT_TYPE_SlopeUp = 5;
        public static final int RESTRICT_TYPE_StopCar = 40;
        public static final int RESTRICT_TYPE_Tunnel = 43;
        public static final int RESTRICT_TYPE_UnManagedRailwayCross = 27;
        public static final int RESTRICT_TYPE_UnderWater = 25;
        public static final int RESTRICT_TYPE_Uneven = 24;
        public static final int RESTRICT_TYPE_Viliage = 22;
        public static final int RESTRICT_TYPE_WaterRoad = 44;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RingRoad {
        public static final int RING_ENTRANCE = 1;
        public static final int RING_EXIT = 2;
        public static final int RING_NON_RING = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RoadType {
        public static final int AR_ROUTE_TYPE_COUNTY_ROAD = 4;
        public static final int AR_ROUTE_TYPE_HIGH_SPEED = 0;
        public static final int AR_ROUTE_TYPE_NATIONAL_ROAD = 2;
        public static final int AR_ROUTE_TYPE_OTHER = 5;
        public static final int AR_ROUTE_TYPE_PROVINCIAL_ROAD = 3;
        public static final int AR_ROUTE_TYPE_QUICK_ROAD = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public class AssistantUpdateType {
        public static final int ASSIST_UPDATE_TYPE_HIDE = 3;
        public static final int ASSIST_UPDATE_TYPE_SHOW = 1;
        public static final int ASSIST_UPDATE_TYPE_UPDATE = 2;

        public AssistantUpdateType() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public class NaviLane {
        public static final int NAVILANE_2CROSS_LEFT_STRAIGHT = 268439808;
        public static final int NAVILANE_2CROSS_LEFT_STRAIGHT_GRAY = 268439552;
        public static final int NAVILANE_2CROSS_RIGHT_STRAIGHT = 1052928;
        public static final int NAVILANE_2CROSS_RIGHT_STRAIGHT_GRAY = 1052672;
        public static final int NAVILANE_2CROSS_TURN_LEFT = 285216768;
        public static final int NAVILANE_2CROSS_TURN_RIGHT = 1118208;
        public static final int NAVILANE_3CROSS_GRAY = 269488128;
        public static final int NAVILANE_3CROSS_STRAIGHT = 269488384;
        public static final int NAVILANE_3CROSS_TURN_LEFT = 286265344;
        public static final int NAVILANE_3CROSS_TURN_RIGHT = 269553664;
        public static final int NAVILANE_AROUND_AND_LEFT = 268435473;
        public static final int NAVILANE_AROUND_AND_LEFT_GRAY = 268435472;
        public static final int NAVILANE_AROUND_AND_RIGHT = 1048593;
        public static final int NAVILANE_AROUND_AND_RIGHT_GRAY = 1048592;
        public static final int NAVILANE_AROUND_AND_STRAIGHT = 4113;
        public static final int NAVILANE_AROUND_AND_STRAIGHT_GRAY = 4112;
        public static final int NAVILANE_AROUND_LEFT_RIGHT = 269484049;
        public static final int NAVILANE_AROUND_LEFT_RIGHT_GRAY = 269484048;
        public static final int NAVILANE_AROUND_LEFT_RIGHT_STRAIGHT = 269488145;
        public static final int NAVILANE_AROUND_LEFT_RIGHT_STRAIGHT_GRAY = 269488144;
        public static final int NAVILANE_AROUND_LEFT_STRAIGHT = 268439569;
        public static final int NAVILANE_AROUND_LEFT_STRAIGHT_GRAY = 268439568;
        public static final int NAVILANE_AROUND_RIGHT_STRAIGHT = 1052689;
        public static final int NAVILANE_AROUND_RIGHT_STRAIGHT_GRAY = 1052688;
        public static final int NAVILANE_LEFT_AND_AROUND = 285212688;
        public static final int NAVILANE_LEFT_AND_RIGHT = 286261248;
        public static final int NAVILANE_LEFT_AND_RIGHT_GRAY = 269484032;
        public static final int NAVILANE_LEFT_AROUND_RIGHT = 286261264;
        public static final int NAVILANE_LEFT_AROUND_RIGHT_STRAIGHT = 286265360;
        public static final int NAVILANE_LEFT_AROUND_STRAIGHT = 285216784;
        public static final int NAVILANE_RIGHT_AND_AROUND = 1114128;
        public static final int NAVILANE_RIGHT_AND_LEFT = 269549568;
        public static final int NAVILANE_RIGHT_AROUND_LEFT = 269549584;
        public static final int NAVILANE_RIGHT_AROUND_LEFT_STRAIGHT = 269553680;
        public static final int NAVILANE_RIGHT_AROUND_STRAIGHT = 1118224;
        public static final int NAVILANE_STRAIGHT = 4352;
        public static final int NAVILANE_STRAIGHT_AND_AROUND = 4368;
        public static final int NAVILANE_STRAIGHT_AROUND_LEFT_RIGHT = 269488400;
        public static final int NAVILANE_STRAIGHT_GRAY = 4096;
        public static final int NAVILANE_STRAIGHT_LEFT_AROUND = 268439824;
        public static final int NAVILANE_STRAIGHT_RIGHT_AROUND = 1052944;
        public static final int NAVILANE_TURN_AROUND_LEFT = 17;
        public static final int NAVILANE_TURN_AROUND_LEFT_GRAY = 16;
        public static final int NAVILANE_TURN_LEFT_90 = 285212672;
        public static final int NAVILANE_TURN_LEFT_90_GRAY = 268435456;
        public static final int NAVILANE_TURN_RIGHT_90 = 1114112;
        public static final int NAVILANE_TURN_RIGHT_90_GRAY = 1048576;

        public NaviLane() {
        }
    }
}
