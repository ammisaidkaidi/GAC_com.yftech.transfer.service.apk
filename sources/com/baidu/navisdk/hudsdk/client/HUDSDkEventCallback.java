package com.baidu.navisdk.hudsdk.client;

import com.baidu.navisdk.hudsdk.BNRemoteMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public interface HUDSDkEventCallback {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnConnectCallback {
        public static final int CLOSE_AUTH_FAILED = 401;
        public static final int CLOSE_LBS_AUTH_FALIED = 408;
        public static final int CLOSE_NETWORK_NOT_OPEN = 407;
        public static final int CLOSE_NORMAL = 400;
        public static final int CLOSE_PROTOCOL_ERROR = 406;
        public static final int CLOSE_READ_TIMEOUT = 404;
        public static final int CLOSE_SEND_TIMEOUT = 403;
        public static final int CLOSE_SERVER_ERROR = 402;
        public static final int CLOSE_SOCKET_ERROR = 405;
        public static final int CLOSE_WAIT_LBS_AUTH_RESULT = 409;

        void onAuth(BNRemoteMessage.BNRGAuthSuccess bNRGAuthSuccess);

        void onClose(int i, String str);

        void onConnected();

        void onEndLBSAuth(int i, String str);

        void onReConnected();

        void onStartLBSAuth();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnRGInfoEventCallback {
        void onAssistant(BNRemoteMessage.BNRGAssistant bNRGAssistant);

        void onCarFreeStatus(BNRemoteMessage.BNRGCarFreeStatus bNRGCarFreeStatus);

        void onCarInfo(BNRemoteMessage.BNRGCarInfo bNRGCarInfo);

        void onCarTunelInfo(BNRemoteMessage.BNRGCarTunelInfo bNRGCarTunelInfo);

        void onCruiseEnd(BNRemoteMessage.BNRGCruiseEnd bNRGCruiseEnd);

        void onCruiseStart(BNRemoteMessage.BNRGCruiseStart bNRGCruiseStart);

        void onCurShapeIndexUpdate(BNRemoteMessage.BNRGCurShapeIndexUpdate bNRGCurShapeIndexUpdate);

        void onCurrentRoad(BNRemoteMessage.BNRGCurrentRoad bNRGCurrentRoad);

        void onDestInfo(BNRemoteMessage.BNRGDestInfo bNRGDestInfo);

        void onEnlargeRoad(BNRemoteMessage.BNEnlargeRoad bNEnlargeRoad);

        void onGPSLost(BNRemoteMessage.BNRGGPSLost bNRGGPSLost);

        void onGPSNormal(BNRemoteMessage.BNRGGPSNormal bNRGGPSNormal);

        void onManeuver(BNRemoteMessage.BNRGManeuver bNRGManeuver);

        void onNaviEnd(BNRemoteMessage.BNRGNaviEnd bNRGNaviEnd);

        void onNaviStart(BNRemoteMessage.BNRGNaviStart bNRGNaviStart);

        void onNearByCamera(BNRemoteMessage.BNRGNearByCameraInfo bNRGNearByCameraInfo);

        void onNextRoad(BNRemoteMessage.BNRGNextRoad bNRGNextRoad);

        void onRemainInfo(BNRemoteMessage.BNRGRemainInfo bNRGRemainInfo);

        void onRouteInfo(BNRemoteMessage.BNRGRouteInfo bNRGRouteInfo);

        void onRoutePlanYawComplete(BNRemoteMessage.BNRGRPYawComplete bNRGRPYawComplete);

        void onRoutePlanYawing(BNRemoteMessage.BNRGRPYawing bNRGRPYawing);

        void onServiceArea(BNRemoteMessage.BNRGServiceArea bNRGServiceArea);
    }
}
