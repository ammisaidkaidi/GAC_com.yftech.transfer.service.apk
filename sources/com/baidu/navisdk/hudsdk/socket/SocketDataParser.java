package com.baidu.navisdk.hudsdk.socket;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.baidu.navisdk.hudsdk.BNRemoteMessage;
import com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback;
import com.baidu.navisdk.hudsdk.util.BitmapUtils;
import com.baidu.navisdk.hudsdk.util.LogUtil;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SocketDataParser {
    private static SocketDataParser mInstance;
    private Handler mMasterHandler;
    private Handler mMsgDispatchHandler;
    private HandlerThread mMsgDispatchThread;
    private HUDSDkEventCallback.OnRGInfoEventCallback mRGEventListener;

    private SocketDataParser() {
    }

    public static SocketDataParser getInstance() {
        if (mInstance == null) {
            mInstance = new SocketDataParser();
        }
        return mInstance;
    }

    public void init(HUDSDkEventCallback.OnRGInfoEventCallback onRGInfoEventCallback, Handler handler) {
        this.mRGEventListener = onRGInfoEventCallback;
        this.mMasterHandler = handler;
    }

    public void unInit() {
        this.mRGEventListener = null;
        this.mMasterHandler = null;
    }

    public void parseBinaryData(byte[] bArr) {
        if (this.mMsgDispatchHandler != null) {
            this.mMsgDispatchHandler.sendMessage(this.mMsgDispatchHandler.obtainMessage(0, bArr));
        }
    }

    public void start() {
        this.mMsgDispatchThread = new HandlerThread("data dispatch thread");
        this.mMsgDispatchThread.start();
        this.mMsgDispatchHandler = new Handler(this.mMsgDispatchThread.getLooper()) { // from class: com.baidu.navisdk.hudsdk.socket.SocketDataParser.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                SocketDataParser.this.processData(message);
            }
        };
    }

    public void stop() {
        if (this.mMsgDispatchThread != null) {
            this.mMsgDispatchThread.getLooper().quit();
            this.mMsgDispatchThread.quit();
        }
        this.mMsgDispatchThread = null;
        this.mMsgDispatchHandler = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processData(Message message) {
        try {
            unPackedData(new JSONObject(new String((byte[]) message.obj, "utf-8")));
        } catch (UnsupportedEncodingException e) {
            if (this.mMasterHandler != null) {
                Message obtainMessage = this.mMasterHandler.obtainMessage();
                obtainMessage.what = SocketConstant.SOCKET_MSG_READ;
                obtainMessage.arg1 = 1024;
                obtainMessage.obj = e;
                this.mMasterHandler.sendMessage(obtainMessage);
            }
        } catch (JSONException e2) {
            if (this.mMasterHandler != null) {
                Message obtainMessage2 = this.mMasterHandler.obtainMessage();
                obtainMessage2.what = SocketConstant.SOCKET_MSG_READ;
                obtainMessage2.arg1 = 1024;
                obtainMessage2.obj = e2;
                this.mMasterHandler.sendMessage(obtainMessage2);
            }
        }
    }

    private void unPackedData(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        JSONObject jSONObject3 = jSONObject.getJSONObject(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS);
        if (jSONObject2 != null) {
            int i = jSONObject2.getInt(BNRemoteConstants.ParamKey.KEY_MSG_TYPE);
            JSONObject jSONObject4 = jSONObject2.getJSONObject(BNRemoteConstants.ParamKey.KEY_MSG_OBJ);
            if (jSONObject.has("msgId") && jSONObject.has("sendTime")) {
                LogUtil.e("testlog", "msgId = " + jSONObject.getInt("msgId") + ", msgType = " + i + ", costTime = " + (System.currentTimeMillis() - jSONObject.getLong("sendTime")));
                LogUtil.f("testlog", "msgId = " + jSONObject.getInt("msgId") + ", msgType = " + i + ", costTime = " + (System.currentTimeMillis() - jSONObject.getLong("sendTime")) + ", msgJson = " + jSONObject4.toString());
            } else {
                LogUtil.f("testlog", "msgType = " + i + ", msgJson = " + jSONObject4.toString());
            }
            switch (i) {
                case 12:
                    unpacketAuth(jSONObject4, jSONObject3);
                    return;
                case 13:
                    unpacketExit(jSONObject4);
                    return;
                case 14:
                    unpacketPong(jSONObject4);
                    return;
                default:
                    switch (i) {
                        case 100:
                            unpacketManeuver(jSONObject4);
                            return;
                        case 101:
                            unpacketServiceArea(jSONObject4);
                            return;
                        case 102:
                            unpacketAssistant(jSONObject4);
                            return;
                        case 103:
                            unpacketRemainInfo(jSONObject4);
                            return;
                        case 104:
                            unpacketCurrentRoadName(jSONObject4);
                            return;
                        case 105:
                            unpacketNextRoadName(jSONObject4);
                            return;
                        case 106:
                            unpacketGpsLost();
                            return;
                        case 107:
                            unpacketGpsNormal();
                            return;
                        case 108:
                            unpacketStartNavi();
                            return;
                        case 109:
                            unpacketEndNavi();
                            return;
                        case 110:
                            unpacketCruiseStart();
                            return;
                        case 111:
                            unpacketCruiseEnd();
                            return;
                        case 112:
                            unpacketRPYawing();
                            return;
                        case 113:
                            unpacketRPYawComplete();
                            return;
                        case 114:
                            unpacketEnlargeRoad(jSONObject4);
                            return;
                        case 115:
                            unpacketDestInfo(jSONObject4);
                            return;
                        case 116:
                            unpacketCarPointInfo(jSONObject4);
                            return;
                        case 117:
                            unpacketCarFreeStatus(jSONObject4);
                            return;
                        case 118:
                            unpacketCarTunelInfo(jSONObject4);
                            return;
                        case BNRemoteConstants.MessageType.BNMessageTypeShapeIndexUpdate /* 119 */:
                            unpacketCurShapeIndexUpdate(jSONObject4);
                            return;
                        case 120:
                            unpacketRouteInfo(jSONObject4);
                            return;
                        case 121:
                            unpacketNearByCamera(jSONObject4);
                            return;
                        default:
                            if (this.mMasterHandler != null) {
                                this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_READ, 1024));
                                return;
                            }
                            return;
                    }
            }
        }
    }

    private void unpacketAuth(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject2.getInt(BNRemoteConstants.ParamKey.KEY_MSG_ERROR_CODE) == 0) {
            if (this.mMasterHandler != null) {
                int i = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_AUTH_SERVER_TYPE);
                String string = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_AUTH_SERVER_VERSION);
                String string2 = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_AUTH_RES_MSG);
                BNRemoteMessage.BNRGAuthSuccess bNRGAuthSuccess = new BNRemoteMessage.BNRGAuthSuccess();
                bNRGAuthSuccess.setServerType(i);
                bNRGAuthSuccess.setServerVersion(string);
                bNRGAuthSuccess.setAuthResMsg(string2);
                Message obtainMessage = this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_AUTH_RESPONSE, bNRGAuthSuccess);
                obtainMessage.arg1 = 32;
                this.mMasterHandler.sendMessage(obtainMessage);
                return;
            }
            return;
        }
        if (this.mMasterHandler != null) {
            Message obtainMessage2 = this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_AUTH_RESPONSE, new BNRemoteMessage.BNRGAuthSuccess());
            obtainMessage2.arg1 = 33;
            this.mMasterHandler.sendMessage(obtainMessage2);
        }
    }

    private void unpacketExit(JSONObject jSONObject) throws JSONException {
        if (!BNRemoteConstants.END_COMMUNICATION.equals(jSONObject.getString("msg")) || this.mMasterHandler == null) {
            return;
        }
        this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_CLOSE));
    }

    private void unpacketPong(JSONObject jSONObject) throws JSONException {
        if (this.mMasterHandler != null) {
            this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_PONG));
        }
    }

    private void unpacketManeuver(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGManeuver bNRGManeuver = new BNRemoteMessage.BNRGManeuver();
        String string = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_MANEUVER_NAME);
        int i = jSONObject.getInt("distance");
        String string2 = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_NEXT_ROAD_NAME);
        bNRGManeuver.setManeuverName(string);
        bNRGManeuver.setManeuverDistance(i);
        bNRGManeuver.setNextRoadName(string2);
        if (jSONObject.has(BNRemoteConstants.ParamKey.KEY_MANEUVER_STRAIGHT)) {
            bNRGManeuver.mIsStraight = jSONObject.getBoolean(BNRemoteConstants.ParamKey.KEY_MANEUVER_STRAIGHT);
        }
        if (jSONObject.has(BNRemoteConstants.ParamKey.KEY_MANEUVER_TIPS)) {
            bNRGManeuver.mRGTips = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_MANEUVER_TIPS);
        }
        if (jSONObject.has(BNRemoteConstants.ParamKey.KEY_MANEUVER_ID)) {
            bNRGManeuver.mManeuverId = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_MANEUVER_ID);
        }
        if (jSONObject.has("longitude")) {
            bNRGManeuver.mLongitude = jSONObject.getDouble("longitude");
        }
        if (jSONObject.has("latitude")) {
            bNRGManeuver.mLatitude = jSONObject.getDouble("latitude");
        }
        if (jSONObject.has(BNRemoteConstants.ParamKey.KEY_RING_FLAG)) {
            int i2 = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_RING_FLAG);
            if (i2 == 1) {
                bNRGManeuver.mRingFlag = 1;
            } else if (i2 == 2) {
                bNRGManeuver.mRingFlag = 2;
            } else {
                bNRGManeuver.mRingFlag = 0;
            }
        }
        bNRGManeuver.mLaneCount = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_LANE_COUNT);
        if (bNRGManeuver.mLaneCount > 0) {
            bNRGManeuver.mTotalLaneAddType = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_TOTAL_LANE_ADD_TYPE);
            bNRGManeuver.mLaneAddTypeArray = getIntArray(jSONObject, BNRemoteConstants.ParamKey.KEY_LANE_ADD_TYPE_ARRAY, bNRGManeuver.mLaneCount);
            bNRGManeuver.mLaneSignArray = getIntArray(jSONObject, BNRemoteConstants.ParamKey.KEY_LANE_SIGN_TYPE_ARRAY, bNRGManeuver.mLaneCount);
        }
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onManeuver(bNRGManeuver);
        }
    }

    private void unpacketServiceArea(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_SERVICE_AREA_NAME);
        int i = jSONObject.getInt("distance");
        BNRemoteMessage.BNRGServiceArea bNRGServiceArea = new BNRemoteMessage.BNRGServiceArea();
        bNRGServiceArea.setServiceAreaName(string);
        bNRGServiceArea.setServiceAreaDistance(i);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onServiceArea(bNRGServiceArea);
        }
    }

    private void unpacketAssistant(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ASSISTANT_TYPE);
        int i2 = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ASSISTANT_UPDATE_TYPE);
        int i3 = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ASSISTANT_LIMITED_SPEED);
        int i4 = jSONObject.getInt("distance");
        BNRemoteMessage.BNRGAssistant bNRGAssistant = new BNRemoteMessage.BNRGAssistant();
        bNRGAssistant.mAssistType = i;
        bNRGAssistant.mUpdateType = i2;
        bNRGAssistant.mRemainDist = i4;
        bNRGAssistant.mSpeed = i3;
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onAssistant(bNRGAssistant);
        }
    }

    private void unpacketRemainInfo(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_REMAIN_DISTANCE);
        int i2 = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_REMAIN_TIME);
        BNRemoteMessage.BNRGRemainInfo bNRGRemainInfo = new BNRemoteMessage.BNRGRemainInfo();
        bNRGRemainInfo.setRemainDistance(i);
        bNRGRemainInfo.setRemainTime(i2);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onRemainInfo(bNRGRemainInfo);
        }
    }

    private void unpacketCurrentRoadName(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_CUR_ROAD_NAME);
        BNRemoteMessage.BNRGCurrentRoad bNRGCurrentRoad = new BNRemoteMessage.BNRGCurrentRoad();
        bNRGCurrentRoad.setCurrentRoadName(string);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCurrentRoad(bNRGCurrentRoad);
        }
    }

    private void unpacketNextRoadName(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString(BNRemoteConstants.ParamKey.KEY_NEXT_ROAD_NAME);
        BNRemoteMessage.BNRGNextRoad bNRGNextRoad = new BNRemoteMessage.BNRGNextRoad();
        bNRGNextRoad.setNextRoadName(string);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onNextRoad(bNRGNextRoad);
        }
    }

    private void unpacketGpsLost() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onGPSLost(new BNRemoteMessage.BNRGGPSLost());
        }
    }

    private void unpacketGpsNormal() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onGPSNormal(new BNRemoteMessage.BNRGGPSNormal());
        }
    }

    private void unpacketStartNavi() throws JSONException {
        BNRemoteMessage.BNRGNaviStart bNRGNaviStart = new BNRemoteMessage.BNRGNaviStart();
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onNaviStart(bNRGNaviStart);
        }
    }

    private void unpacketEndNavi() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onNaviEnd(new BNRemoteMessage.BNRGNaviEnd());
        }
    }

    private void unpacketCruiseStart() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCruiseStart(new BNRemoteMessage.BNRGCruiseStart());
        }
    }

    private void unpacketCruiseEnd() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCruiseEnd(new BNRemoteMessage.BNRGCruiseEnd());
        }
    }

    private void unpacketRPYawing() throws JSONException {
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onRoutePlanYawing(new BNRemoteMessage.BNRGRPYawing());
        }
    }

    private void unpacketRPYawComplete() throws JSONException {
        BNRemoteMessage.BNRGRPYawComplete bNRGRPYawComplete = new BNRemoteMessage.BNRGRPYawComplete();
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onRoutePlanYawComplete(bNRGRPYawComplete);
        }
    }

    private void unpacketEnlargeRoad(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNEnlargeRoad bNEnlargeRoad = new BNRemoteMessage.BNEnlargeRoad();
        int i = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_TYPE);
        int i2 = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_SHOW_STATE);
        bNEnlargeRoad.setEnlargeRoadState(i2);
        bNEnlargeRoad.setEnlargeRoadType(i);
        if (i2 == 0 || i2 == 1) {
            if (i2 == 0) {
                String string = jSONObject.has(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_DATA_BASIC) ? jSONObject.getString(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_DATA_BASIC) : "";
                if (!"".equalsIgnoreCase(string)) {
                    bNEnlargeRoad.setBasicImage(BitmapUtils.bytes2Bimap(BitmapUtils.decodeBase64Str(string)));
                }
                String string2 = jSONObject.has(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_DATA_ARROW) ? jSONObject.getString(BNRemoteConstants.ParamKey.KEY_ENLARGE_RAOD_DATA_ARROW) : "";
                if (!"".equalsIgnoreCase(string2)) {
                    bNEnlargeRoad.setArrowImage(BitmapUtils.bytes2Bimap(BitmapUtils.decodeBase64Str(string2)));
                }
            }
            bNEnlargeRoad.setRoadName(jSONObject.getString(BNRemoteConstants.ParamKey.KEY_NEXT_ROAD_NAME));
            bNEnlargeRoad.setTotalDist(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ENLARGE_ROAD_TOTAL_DIST));
            bNEnlargeRoad.setRemainDist(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ENLARGE_ROAD_REMAIN_DIST));
            if (i == 1) {
                bNEnlargeRoad.setCarPosX(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_CAR_POS_X));
                bNEnlargeRoad.setCarPosY(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_CAR_POS_Y));
                bNEnlargeRoad.setCarPosRotate(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_CAR_POS_ROTATE));
                bNEnlargeRoad.setLastCarPosX(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_LAST_CAR_POS_X));
                bNEnlargeRoad.setLastCarPosY(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_LAST_CAR_POS_Y));
                bNEnlargeRoad.setLastCarPosRotate(jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_LAST_CAR_POS_ROTATE));
            }
        }
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onEnlargeRoad(bNEnlargeRoad);
        }
    }

    private void unpacketCarPointInfo(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGCarInfo bNRGCarInfo = new BNRemoteMessage.BNRGCarInfo();
        bNRGCarInfo.mLongitude = jSONObject.getDouble("longitude");
        bNRGCarInfo.mLatitude = jSONObject.getDouble("latitude");
        bNRGCarInfo.mCurSpeed = jSONObject.getInt("speed");
        bNRGCarInfo.mCarAngle = jSONObject.getDouble(BNRemoteConstants.ParamKey.KEY_CAR_DIRECTION);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCarInfo(bNRGCarInfo);
        }
    }

    private void unpacketCarFreeStatus(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGCarFreeStatus bNRGCarFreeStatus = new BNRemoteMessage.BNRGCarFreeStatus();
        bNRGCarFreeStatus.mIsCarFree = jSONObject.getBoolean(BNRemoteConstants.ParamKey.KEY_CAR_FREE);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCarFreeStatus(bNRGCarFreeStatus);
        }
    }

    private void unpacketCarTunelInfo(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGCarTunelInfo bNRGCarTunelInfo = new BNRemoteMessage.BNRGCarTunelInfo();
        if (jSONObject.getBoolean(BNRemoteConstants.ParamKey.KEY_CAR_TUNNEL)) {
            bNRGCarTunelInfo.mIsInTunel = 1;
        } else {
            bNRGCarTunelInfo.mIsInTunel = 0;
        }
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCarTunelInfo(bNRGCarTunelInfo);
        }
    }

    private void unpacketDestInfo(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGDestInfo bNRGDestInfo = new BNRemoteMessage.BNRGDestInfo();
        bNRGDestInfo.mDestLongitude = jSONObject.getDouble("longitude");
        bNRGDestInfo.mDestLatitude = jSONObject.getDouble("latitude");
        bNRGDestInfo.mDestTotalDist = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_DEST_TOTAL_DIST);
        bNRGDestInfo.mDestIcon = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_DEST_ICON);
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onDestInfo(bNRGDestInfo);
        }
    }

    private void unpacketRouteInfo(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGRouteInfo bNRGRouteInfo = new BNRemoteMessage.BNRGRouteInfo();
        bNRGRouteInfo.mRouteId = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_ROUTE_ID);
        ArrayList<BNRemoteMessage.BNRGRouteInfo.ShapePoint> arrayList = new ArrayList<>();
        JSONArray jSONArray = jSONObject.getJSONArray(BNRemoteConstants.ParamKey.KEY_AR_ROUTE_LIST);
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            BNRemoteMessage.BNRGRouteInfo.ShapePoint shapePoint = new BNRemoteMessage.BNRGRouteInfo.ShapePoint();
            shapePoint.mLongitude = jSONObject2.getDouble("longitude");
            shapePoint.mLatitude = jSONObject2.getDouble("latitude");
            shapePoint.mLastRouteType = jSONObject2.getInt(BNRemoteConstants.ParamKey.KEY_ROUTE_TYPE);
            shapePoint.mFromStartDist = jSONObject2.getInt(BNRemoteConstants.ParamKey.KEY_FROM_START_DIST);
            arrayList.add(shapePoint);
        }
        ArrayList<BNRemoteMessage.BNRGRouteInfo.TimeLineInfo> arrayList2 = new ArrayList<>();
        JSONArray jSONArray2 = jSONObject.getJSONArray(BNRemoteConstants.ParamKey.KEY_TIME_LINE_LIST);
        int length2 = jSONArray2.length();
        for (int i2 = 0; i2 < length2; i2++) {
            JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
            BNRemoteMessage.BNRGRouteInfo.TimeLineInfo timeLineInfo = new BNRemoteMessage.BNRGRouteInfo.TimeLineInfo();
            timeLineInfo.mRouteType = jSONObject3.getInt(BNRemoteConstants.ParamKey.KEY_ROUTE_TYPE);
            timeLineInfo.mFromTimeStartDist = jSONObject3.getInt(BNRemoteConstants.ParamKey.KEY_FROM_START_POINT_DIST);
            timeLineInfo.mFromTimeEndDist = jSONObject3.getInt(BNRemoteConstants.ParamKey.KEY_FROM_END_POINT_DIST);
            arrayList2.add(timeLineInfo);
        }
        ArrayList<BNRemoteMessage.BNRGRouteInfo.RestrictInfo> arrayList3 = new ArrayList<>();
        JSONArray jSONArray3 = jSONObject.getJSONArray(BNRemoteConstants.ParamKey.KEY_RESTRIT_INFO_LIST);
        int length3 = jSONArray3.length();
        for (int i3 = 0; i3 < length3; i3++) {
            JSONObject jSONObject4 = jSONArray3.getJSONObject(i3);
            BNRemoteMessage.BNRGRouteInfo.RestrictInfo restrictInfo = new BNRemoteMessage.BNRGRouteInfo.RestrictInfo();
            restrictInfo.mRestritType = jSONObject4.getInt(BNRemoteConstants.ParamKey.KEY_RESTRIT_TYPE);
            restrictInfo.mLongitude = jSONObject4.getDouble("longitude");
            restrictInfo.mLatitude = jSONObject4.getDouble("latitude");
            restrictInfo.mFromStartDist = jSONObject4.getInt("distance");
            arrayList3.add(restrictInfo);
        }
        bNRGRouteInfo.mARRouteInfoList = arrayList;
        bNRGRouteInfo.mTimeLineInfoList = arrayList2;
        bNRGRouteInfo.mRestritInfoList = arrayList3;
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onRouteInfo(bNRGRouteInfo);
        }
    }

    private void unpacketCurShapeIndexUpdate(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGCurShapeIndexUpdate bNRGCurShapeIndexUpdate = new BNRemoteMessage.BNRGCurShapeIndexUpdate();
        bNRGCurShapeIndexUpdate.mShapeIndex = jSONObject.getInt(BNRemoteConstants.ParamKey.KEY_CAR_LOCATION_INDEX);
        bNRGCurShapeIndexUpdate.mFromStartDist = jSONObject.getInt("distance");
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onCurShapeIndexUpdate(bNRGCurShapeIndexUpdate);
        }
    }

    private void unpacketNearByCamera(JSONObject jSONObject) throws JSONException {
        BNRemoteMessage.BNRGNearByCameraInfo bNRGNearByCameraInfo = new BNRemoteMessage.BNRGNearByCameraInfo();
        ArrayList<BNRemoteMessage.BNRGNearByCameraInfo.CameraInfo> arrayList = new ArrayList<>();
        JSONArray jSONArray = jSONObject.getJSONArray(BNRemoteConstants.ParamKey.KEY_CAMERA_LIST);
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            BNRemoteMessage.BNRGNearByCameraInfo.CameraInfo cameraInfo = new BNRemoteMessage.BNRGNearByCameraInfo.CameraInfo();
            cameraInfo.mCameraType = jSONObject2.getInt(BNRemoteConstants.ParamKey.KEY_CAMEAR_TYPE);
            cameraInfo.mLongitude = jSONObject2.getDouble("longitude");
            cameraInfo.mLatitude = jSONObject2.getDouble("latitude");
            if (jSONObject2.has("distance")) {
                cameraInfo.mFromStartDist = jSONObject2.getInt("distance");
            }
            arrayList.add(cameraInfo);
        }
        bNRGNearByCameraInfo.mCameraInfoList = arrayList;
        if (this.mRGEventListener != null) {
            this.mRGEventListener.onNearByCamera(bNRGNearByCameraInfo);
        }
    }

    private int[] getIntArray(JSONObject jSONObject, String str, int i) throws JSONException {
        int[] iArr = new int[i];
        JSONArray jSONArray = jSONObject.getJSONArray(str);
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = jSONArray.getInt(i2);
        }
        return iArr;
    }
}
