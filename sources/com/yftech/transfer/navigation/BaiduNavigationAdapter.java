package com.yftech.transfer.navigation;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.baidu.navisdk.hudsdk.BNRemoteMessage;
import com.baidu.navisdk.hudsdk.client.BNRemoteVistor;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback;
import com.yftech.car.navigation.CarNavigationManeuver;
import com.yftech.transfer.service.CarAppList;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaiduNavigationAdapter extends AbsNavigationAdapter {
    private static final boolean DEBUG_SDK = true;
    private static final String TAG = "BaiduNavigationAdapter";
    private Context mContext;
    private String mCurrentRoadName;
    private Handler mH;
    private CarNavigationManeuver mManeuver;
    private boolean mIsConnected = false;
    private int mReconnectCount = 0;
    private HUDSDkEventCallback.OnConnectCallback mConnectCallback = new HUDSDkEventCallback.OnConnectCallback() { // from class: com.yftech.transfer.navigation.BaiduNavigationAdapter.1
        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onConnected() {
            Log.i(BaiduNavigationAdapter.TAG, "onConnected");
            BaiduNavigationAdapter.this.mIsConnected = true;
            BaiduNavigationAdapter.this.mReconnectCount = 0;
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onReConnected() {
            Log.i(BaiduNavigationAdapter.TAG, "onReConnected");
            BaiduNavigationAdapter.this.mIsConnected = true;
            BaiduNavigationAdapter.this.mReconnectCount = 0;
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onClose(int i, String str) {
            Log.i(BaiduNavigationAdapter.TAG, "onClose, errno:" + i + ", errStr:" + str);
            BaiduNavigationAdapter.this.mIsConnected = false;
            BaiduNavigationAdapter.this.mH.postDelayed(new Runnable() { // from class: com.yftech.transfer.navigation.BaiduNavigationAdapter.1.1
                @Override // java.lang.Runnable
                public void run() {
                    BaiduNavigationAdapter.access$208(BaiduNavigationAdapter.this);
                    if (BaiduNavigationAdapter.this.mReconnectCount > 5) {
                        BaiduNavigationAdapter.this.mReconnectCount = 1;
                        BaiduNavigationAdapter.this.unInitBaiduSdk();
                        BaiduNavigationAdapter.this.initBaiduSdk();
                        return;
                    }
                    BaiduNavigationAdapter.this.connectToBaiduService();
                }
            }, 800L);
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onAuth(BNRemoteMessage.BNRGAuthSuccess bNRGAuthSuccess) {
            Log.i(BaiduNavigationAdapter.TAG, "onAuth");
            if (bNRGAuthSuccess != null) {
                Log.i(BaiduNavigationAdapter.TAG, "serverVer:" + bNRGAuthSuccess.getServerVersion() + "authResMsg:" + bNRGAuthSuccess.getAuthResMsg() + "serverType:" + bNRGAuthSuccess.getServerType());
            }
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onStartLBSAuth() {
            Log.i(BaiduNavigationAdapter.TAG, "onStartLBSAuth");
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnConnectCallback
        public void onEndLBSAuth(int i, String str) {
            Log.i(BaiduNavigationAdapter.TAG, "onEndLBSAuth, result:" + i + ", reason:" + str);
            String str2 = BaiduNavigationAdapter.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onEndLBSAuth, ");
            sb.append(i == 0 ? "success" : "failed");
            Log.i(str2, sb.toString());
            if (i != 0) {
                BaiduNavigationAdapter.this.mIsConnected = false;
            } else {
                BaiduNavigationAdapter.this.mH.postDelayed(new Runnable() { // from class: com.yftech.transfer.navigation.BaiduNavigationAdapter.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BaiduNavigationAdapter.this.connectToBaiduService();
                    }
                }, 500L);
            }
        }
    };
    private HUDSDkEventCallback.OnRGInfoEventCallback mRGEventCallback = new HUDSDkEventCallback.OnRGInfoEventCallback() { // from class: com.yftech.transfer.navigation.BaiduNavigationAdapter.2
        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onAssistant(BNRemoteMessage.BNRGAssistant bNRGAssistant) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCarFreeStatus(BNRemoteMessage.BNRGCarFreeStatus bNRGCarFreeStatus) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCarInfo(BNRemoteMessage.BNRGCarInfo bNRGCarInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCarTunelInfo(BNRemoteMessage.BNRGCarTunelInfo bNRGCarTunelInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCruiseEnd(BNRemoteMessage.BNRGCruiseEnd bNRGCruiseEnd) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCruiseStart(BNRemoteMessage.BNRGCruiseStart bNRGCruiseStart) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCurShapeIndexUpdate(BNRemoteMessage.BNRGCurShapeIndexUpdate bNRGCurShapeIndexUpdate) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onDestInfo(BNRemoteMessage.BNRGDestInfo bNRGDestInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onEnlargeRoad(BNRemoteMessage.BNEnlargeRoad bNEnlargeRoad) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onGPSLost(BNRemoteMessage.BNRGGPSLost bNRGGPSLost) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onGPSNormal(BNRemoteMessage.BNRGGPSNormal bNRGGPSNormal) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onNaviEnd(BNRemoteMessage.BNRGNaviEnd bNRGNaviEnd) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onNaviStart(BNRemoteMessage.BNRGNaviStart bNRGNaviStart) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onNearByCamera(BNRemoteMessage.BNRGNearByCameraInfo bNRGNearByCameraInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onNextRoad(BNRemoteMessage.BNRGNextRoad bNRGNextRoad) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onRemainInfo(BNRemoteMessage.BNRGRemainInfo bNRGRemainInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onRouteInfo(BNRemoteMessage.BNRGRouteInfo bNRGRouteInfo) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onRoutePlanYawComplete(BNRemoteMessage.BNRGRPYawComplete bNRGRPYawComplete) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onRoutePlanYawing(BNRemoteMessage.BNRGRPYawing bNRGRPYawing) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onServiceArea(BNRemoteMessage.BNRGServiceArea bNRGServiceArea) {
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onManeuver(BNRemoteMessage.BNRGManeuver bNRGManeuver) {
            CarNavigationManeuver.LaneSign[] laneSignArr;
            Log.d(BaiduNavigationAdapter.TAG, "onManeuver, curName=" + bNRGManeuver.getName() + ", nextName=" + bNRGManeuver.getNextRoadName() + ", distance=" + bNRGManeuver.getDistance() + ", totalLaneSum=" + bNRGManeuver.getManeuverTotalLaneSum() + ", lat=" + bNRGManeuver.getManeuverLat() + ", lon=" + bNRGManeuver.getManeuverLon() + ", laneSignType=" + Arrays.toString(bNRGManeuver.getManeuverLaneSignArray()) + ", info=" + bNRGManeuver.getRGTips());
            CarNavigationManeuver carNavigationManeuver = new CarNavigationManeuver();
            carNavigationManeuver.setCurrentRoadName(BaiduNavigationAdapter.this.mCurrentRoadName).setNextRoadName(bNRGManeuver.getNextRoadName()).setDistance(bNRGManeuver.getDistance()).setLaneCount(bNRGManeuver.getManeuverTotalLaneSum()).setLatitude(bNRGManeuver.getManeuverLat()).setLongitude(bNRGManeuver.getManeuverLon());
            int[] maneuverLaneSignArray = bNRGManeuver.getManeuverLaneSignArray();
            if (maneuverLaneSignArray != null) {
                laneSignArr = new CarNavigationManeuver.LaneSign[maneuverLaneSignArray.length];
                for (int i = 0; i < maneuverLaneSignArray.length; i++) {
                    laneSignArr[i] = BaiduNavigationAdapter.this.baiduLaneSignToSelfLaneSign(maneuverLaneSignArray[i]);
                }
            } else {
                laneSignArr = null;
            }
            carNavigationManeuver.setLaneSignArray(laneSignArr);
            carNavigationManeuver.setTurnInfo(BaiduNavigationAdapter.this.baiduTurnInfoToSelfTurnInfo(bNRGManeuver.getName()));
            BaiduNavigationAdapter.this.mManeuver = carNavigationManeuver;
            BaiduNavigationAdapter.this.mOnNavigationListenerControl.onManeuverChanged(BaiduNavigationAdapter.this, carNavigationManeuver);
        }

        @Override // com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback.OnRGInfoEventCallback
        public void onCurrentRoad(BNRemoteMessage.BNRGCurrentRoad bNRGCurrentRoad) {
            Log.i(BaiduNavigationAdapter.TAG, "onCurrentRoad, name:" + bNRGCurrentRoad.getCurrentRoadName());
            BaiduNavigationAdapter.this.mCurrentRoadName = bNRGCurrentRoad.getCurrentRoadName();
            if (BaiduNavigationAdapter.this.mManeuver != null) {
                BaiduNavigationAdapter.this.mManeuver.setCurrentRoadName(BaiduNavigationAdapter.this.mCurrentRoadName);
                BaiduNavigationAdapter.this.mOnNavigationListenerControl.onManeuverChanged(BaiduNavigationAdapter.this, BaiduNavigationAdapter.this.mManeuver);
            }
        }
    };

    @Override // com.yftech.transfer.navigation.INavigationAdapter
    public String getPackageName() {
        return "com.baidu.navi";
    }

    static /* synthetic */ int access$208(BaiduNavigationAdapter baiduNavigationAdapter) {
        int i = baiduNavigationAdapter.mReconnectCount;
        baiduNavigationAdapter.mReconnectCount = i + 1;
        return i;
    }

    @Override // com.yftech.transfer.navigation.INavigationAdapter
    public void init(Context context) {
        this.mContext = context;
        this.mH = new Handler(context.getMainLooper());
        initBaiduSdk();
    }

    @Override // com.yftech.transfer.navigation.INavigationAdapter
    public void release() {
        if (this.mContext != null) {
            unInitBaiduSdk();
        }
    }

    @Override // com.yftech.transfer.navigation.AbsNavigationAdapter, com.yftech.transfer.navigation.INavigationAdapter
    public void start() {
        super.start();
        this.mCurrentRoadName = "";
        connectToBaiduService();
    }

    @Override // com.yftech.transfer.navigation.AbsNavigationAdapter, com.yftech.transfer.navigation.INavigationAdapter
    public void stop() {
        super.stop();
        disconnectToBaiduService();
        this.mCurrentRoadName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initBaiduSdk() {
        BNRemoteVistor.getInstance().setShowLog(true);
        BNRemoteVistor.getInstance().init(this.mContext.getApplicationContext(), getPackageName(), CarAppList.MediaPage.PAGE_AM, this.mRGEventCallback, this.mConnectCallback);
        Log.i(TAG, "initBaiduSdk");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unInitBaiduSdk() {
        BNRemoteVistor.getInstance().unInit();
        Log.i(TAG, "unInitBaiduSdk");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectToBaiduService() {
        if (this.mIsConnected && BNRemoteVistor.getInstance().isConnect()) {
            return;
        }
        BNRemoteVistor.getInstance().open();
        Log.i(TAG, "connectToBaiduService");
    }

    private void disconnectToBaiduService() {
        if (BNRemoteVistor.getInstance().isConnect()) {
            BNRemoteVistor.getInstance().close(HUDSDkEventCallback.OnConnectCallback.CLOSE_NORMAL, "User Exit");
            Log.i(TAG, "disconnectToBaiduService");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CarNavigationManeuver.LaneSign baiduLaneSignToSelfLaneSign(int i) {
        switch (i) {
            case 16:
                return CarNavigationManeuver.LaneSign.TURN_AROUND_LEFT_GRAY;
            case 17:
                return CarNavigationManeuver.LaneSign.TURN_AROUND_LEFT;
            case 4096:
                return CarNavigationManeuver.LaneSign.STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_STRAIGHT_GRAY /* 4112 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_STRAIGHT /* 4113 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_STRAIGHT /* 4352 */:
                return CarNavigationManeuver.LaneSign.STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_STRAIGHT_AND_AROUND /* 4368 */:
                return CarNavigationManeuver.LaneSign.STRAIGHT_AND_AROUND;
            case 1048576:
                return CarNavigationManeuver.LaneSign.TURN_RIGHT_90_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_RIGHT_GRAY /* 1048592 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_RIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_RIGHT /* 1048593 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_RIGHT_STRAIGHT_GRAY /* 1052672 */:
                return CarNavigationManeuver.LaneSign.CROSS2_RIGHT_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_RIGHT_STRAIGHT_GRAY /* 1052688 */:
                return CarNavigationManeuver.LaneSign.AROUND_RIGHT_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_RIGHT_STRAIGHT /* 1052689 */:
                return CarNavigationManeuver.LaneSign.AROUND_RIGHT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_RIGHT_STRAIGHT /* 1052928 */:
                return CarNavigationManeuver.LaneSign.CROSS2_RIGHT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_STRAIGHT_RIGHT_AROUND /* 1052944 */:
                return CarNavigationManeuver.LaneSign.STRAIGHT_RIGHT_AROUND;
            case HUDConstants.NaviLane.NAVILANE_TURN_RIGHT_90 /* 1114112 */:
                return CarNavigationManeuver.LaneSign.TURN_RIGHT_90;
            case HUDConstants.NaviLane.NAVILANE_RIGHT_AND_AROUND /* 1114128 */:
                return CarNavigationManeuver.LaneSign.RIGHT_AND_AROUND;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_TURN_RIGHT /* 1118208 */:
                return CarNavigationManeuver.LaneSign.CROSS2_TURN_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_RIGHT_AROUND_STRAIGHT /* 1118224 */:
                return CarNavigationManeuver.LaneSign.RIGHT_AROUND_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY /* 268435456 */:
                return CarNavigationManeuver.LaneSign.TURN_LEFT_90_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_LEFT_GRAY /* 268435472 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_LEFT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_AND_LEFT /* 268435473 */:
                return CarNavigationManeuver.LaneSign.AROUND_AND_LEFT;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_LEFT_STRAIGHT_GRAY /* 268439552 */:
                return CarNavigationManeuver.LaneSign.CROSS2_LEFT_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_STRAIGHT_GRAY /* 268439568 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_STRAIGHT /* 268439569 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_LEFT_STRAIGHT /* 268439808 */:
                return CarNavigationManeuver.LaneSign.CROSS2_LEFT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_STRAIGHT_LEFT_AROUND /* 268439824 */:
                return CarNavigationManeuver.LaneSign.STRAIGHT_LEFT_AROUND;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT_GRAY /* 269484032 */:
                return CarNavigationManeuver.LaneSign.LEFT_AND_RIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_RIGHT_GRAY /* 269484048 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_RIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_RIGHT /* 269484049 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_3CROSS_GRAY /* 269488128 */:
                return CarNavigationManeuver.LaneSign.CROSS3_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_RIGHT_STRAIGHT_GRAY /* 269488144 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_RIGHT_STRAIGHT_GRAY;
            case HUDConstants.NaviLane.NAVILANE_AROUND_LEFT_RIGHT_STRAIGHT /* 269488145 */:
                return CarNavigationManeuver.LaneSign.AROUND_LEFT_RIGHT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_3CROSS_STRAIGHT /* 269488384 */:
                return CarNavigationManeuver.LaneSign.CROSS3_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_STRAIGHT_AROUND_LEFT_RIGHT /* 269488400 */:
                return CarNavigationManeuver.LaneSign.STRAIGHT_AROUND_LEFT_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_RIGHT_AND_LEFT /* 269549568 */:
                return CarNavigationManeuver.LaneSign.RIGHT_AND_LEFT;
            case HUDConstants.NaviLane.NAVILANE_RIGHT_AROUND_LEFT /* 269549584 */:
                return CarNavigationManeuver.LaneSign.RIGHT_AROUND_LEFT;
            case HUDConstants.NaviLane.NAVILANE_3CROSS_TURN_RIGHT /* 269553664 */:
                return CarNavigationManeuver.LaneSign.CROSS3_TURN_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_RIGHT_AROUND_LEFT_STRAIGHT /* 269553680 */:
                return CarNavigationManeuver.LaneSign.RIGHT_AROUND_LEFT_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90 /* 285212672 */:
                return CarNavigationManeuver.LaneSign.TURN_LEFT_90;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AND_AROUND /* 285212688 */:
                return CarNavigationManeuver.LaneSign.LEFT_AND_AROUND;
            case HUDConstants.NaviLane.NAVILANE_2CROSS_TURN_LEFT /* 285216768 */:
                return CarNavigationManeuver.LaneSign.CROSS2_TURN_LEFT;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AROUND_STRAIGHT /* 285216784 */:
                return CarNavigationManeuver.LaneSign.LEFT_AROUND_STRAIGHT;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AND_RIGHT /* 286261248 */:
                return CarNavigationManeuver.LaneSign.LEFT_AND_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AROUND_RIGHT /* 286261264 */:
                return CarNavigationManeuver.LaneSign.LEFT_AROUND_RIGHT;
            case HUDConstants.NaviLane.NAVILANE_3CROSS_TURN_LEFT /* 286265344 */:
                return CarNavigationManeuver.LaneSign.CROSS3_TURN_LEFT;
            case HUDConstants.NaviLane.NAVILANE_LEFT_AROUND_RIGHT_STRAIGHT /* 286265360 */:
                return CarNavigationManeuver.LaneSign.LEFT_AROUND_RIGHT_STRAIGHT;
            default:
                return CarNavigationManeuver.LaneSign.UNKNOWN;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CarNavigationManeuver.TurnInfo baiduTurnInfoToSelfTurnInfo(String str) {
        if ("turn_back".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BACK;
        }
        if ("turn_front".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_FRONT;
        }
        if ("turn_right_front".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT_FRONT;
        }
        if ("turn_right".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT;
        }
        if ("turn_right_back".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT_BACK;
        }
        if ("turn_left_back".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT_BACK;
        }
        if ("turn_left".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT;
        }
        if ("turn_left_front".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT_FRONT;
        }
        if ("turn_ring".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING;
        }
        if ("turn_left_side".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT_SIDE;
        }
        if ("turn_right_side".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT_SIDE;
        }
        if ("turn_left_side_main".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT_SIDE_MAIN;
        }
        if ("turn_branch_left_straight".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BRANCH_LEFT_STRAIGHT;
        }
        if ("turn_right_side_main".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT_SIDE_MAIN;
        }
        if ("turn_branch_right_straight".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BRANCH_RIGHT_STRAIGHT;
        }
        if ("turn_branch_center".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BRANCH_CENTER;
        }
        if ("turn_left_side_ic".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LEFT_SIDE_IC;
        }
        if ("turn_right_side_ic".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RIGHT_SIDE_IC;
        }
        if ("turn_branch_left".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BRANCH_LEFT;
        }
        if ("turn_branch_right".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_BRANCH_RIGHT;
        }
        if ("turn_dest".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_DEST;
        }
        if ("turn_via_1".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_VIA_1;
        }
        if ("turn_inferry".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_INFERRY;
        }
        if ("turn_tollgate".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_TOLLGATE;
        }
        if ("turn_lf_2branch_left".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LF_2BRANCH_LEFT;
        }
        if ("turn_lf_2branch_right".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_LF_2BRANCH_RIGHT;
        }
        if ("turn_rf_2branch_left".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RF_2BRANCH_LEFT;
        }
        if ("turn_rf_2branch_right".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RF_2BRANCH_RIGHT;
        }
        if ("turn_ring_front".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_FRONT;
        }
        if ("turn_ring_left".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_LEFT;
        }
        if ("turn_ring_leftback".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_LEFTBACK;
        }
        if ("turn_ring_leftfront".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_LEFTFRONT;
        }
        if ("turn_ring_right".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_RIGHT;
        }
        if ("turn_ring_rightback".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_RIGHTBACK;
        }
        if ("turn_ring_rightfront".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_RIGHTFRONT;
        }
        if ("turn_ring_tuanback".equals(str)) {
            return CarNavigationManeuver.TurnInfo.TURN_RING_TURNBACK;
        }
        Log.i(TAG, "baiduTurnInfoToSelfTurnInfo, unknown info:" + str);
        return CarNavigationManeuver.TurnInfo.UNKNOWN;
    }
}
