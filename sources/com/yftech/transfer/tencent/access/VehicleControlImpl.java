package com.yftech.transfer.tencent.access;

import android.provider.Settings;
import android.text.TextUtils;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.IAsrJsonResultListener;
import com.tencent.wecarspeech.sdk.api.ISystemClient;
import com.yftech.transfer.tencent.access.vehicle.AppControl;
import com.yftech.transfer.tencent.access.vehicle.BaseControl;
import com.yftech.transfer.tencent.access.vehicle.MediaControl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class VehicleControlImpl implements IAsrJsonResultListener<ActionRet>, ISystemClient<ActionRet> {
    private static final int DOA_DIRECTION_LEFT = 2;
    private static final int DOA_DIRECTION_RIGHT = 3;
    private static final String INTENT_TYPE_AC_CTL = "AC_control";
    private static final String INTENT_TYPE_ATLIGHTS_CTL = "atlights_control";
    private static final String INTENT_TYPE_BACKDOOR_CTL = "backdoor_control";
    private static final String INTENT_TYPE_CAR_WIN_CTL = "car_window_control";
    public static final String INTENT_TYPE_CLOSE_AIR_MODE = "turn_off_airmode";
    private static final String INTENT_TYPE_CLOSE_APP = "close_app";
    private static final String INTENT_TYPE_CLOSE_DVR_MODE = "turn_off_recorder_mode";
    private static final String INTENT_TYPE_CURTAIN_CTL = "curtain_control";
    private static final String INTENT_TYPE_DASHBOARD_LIGHT_CTL = "dashboard_light_control";
    private static final String INTENT_TYPE_DEVICE_QUERY = "device_status_query";
    private static final String INTENT_TYPE_DISPLAY_CTL = "display_control";
    private static final String INTENT_TYPE_ENERGY_QUERY = "energy_query";
    private static final String INTENT_TYPE_FOLLOWING_DISTANCE = "following_distance";
    private static final String INTENT_TYPE_GEARS_POSITION_QUERY = "gears_position_query";
    private static final String INTENT_TYPE_HELP = "help";
    private static final String INTENT_TYPE_LIST_SELECT = "select_an_item_from_list";
    private static final String INTENT_TYPE_LOCK_DOOR = "lock_the_door";
    private static final String INTENT_TYPE_MEDIA_SOURCE = "play_media_by_source";
    private static final String INTENT_TYPE_MT_QUERY = "maintenance_query";
    private static final String INTENT_TYPE_OFF_DEVICE = "turn_off_device";
    private static final String INTENT_TYPE_ON_DEVICE = "turn_on_device";
    public static final String INTENT_TYPE_OPEN_AIR_MODE = "turn_on_airmode";
    private static final String INTENT_TYPE_OPEN_APP = "open_app";
    private static final String INTENT_TYPE_OPEN_DVR_MODE = "turn_on_recorder_mode";
    private static final String INTENT_TYPE_OPEN_SKILL = "open_skill";
    private static final String INTENT_TYPE_PIC_CTL = "picture_preview_control";
    private static final String INTENT_TYPE_RECORDER_CTL = "recorder_control";
    private static final String INTENT_TYPE_REMAINDER_RANGE_QUERY = "remainder_range_query";
    private static final String INTENT_TYPE_RESUME_CRUISE_CTL = "resume_cruise_control";
    private static final String INTENT_TYPE_RUNNING_STATE_QUERY = "running_status_query";
    private static final String INTENT_TYPE_SCREEN_CTL = "screen_brightness_control";
    private static final String INTENT_TYPE_SEAT_HEATING_CTL = "seat_heating_control";
    private static final String INTENT_TYPE_SEAT_POSITION_CTL = "seat_position_control";
    private static final String INTENT_TYPE_SEAT_VENTILATION_CTL = "seat_ventilation_control";
    private static final String INTENT_TYPE_SET_CRUISE_PARAM = "set_cruise_parameters";
    private static final String INTENT_TYPE_SKILL_USE = "skill_use";
    private static final String INTENT_TYPE_SKYLIGHT_CTL = "skylight_control";
    private static final String INTENT_TYPE_TIRE_PRESSURE_QUERY = "tire_pressure_query";
    private static final String INTENT_TYPE_UNLOCK_DOOR = "unlock_the_door";
    private static final String INTENT_TYPE_VLOUME_CTL = "sound_volume_control";
    private static final String INTENT_TYPE_WARNING_LIGHT_QUERY = "warning_light_query";
    private static final String INTENT_TYPE_WIPER_CTL = "wiper_control";
    private static final String JSON_STR_DOMAIN = "domain";
    private static final String JSON_STR_INTENT = "intent";
    private static final String JSON_STR_SEMANTIC = "semantic";
    private static final String JSON_STR_SLOTS = "slots";
    private static final String TAG = "VehicleControlImpl   ";
    private static Map<String, BaseControl> mIntentControls = new HashMap();
    private static MediaControl mMediaControl = new MediaControl();
    private static AppControl mAppControl = new AppControl();

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum VehicleControlType {
        BT_BOOK(VehicleControlImpl.mAppControl, "所有通讯", "通讯录"),
        AP_WIFI(VehicleControlImpl.mAppControl, "wifi热点", "移动热点"),
        EMPTY(null, "空");

        BaseControl control;
        private String[] positions;
        private String tips;

        VehicleControlType(BaseControl baseControl, String... strArr) {
            this.control = baseControl;
            this.positions = strArr;
        }

        VehicleControlType setTips(String str) {
            this.tips = str;
            return this;
        }

        public String getTips() {
            if (TextUtils.isEmpty(this.tips)) {
                this.tips = this.positions[0];
            }
            return this.tips;
        }

        private boolean equals(String str) {
            if (this.positions != null && this.positions.length > 0) {
                for (int i = 0; i < this.positions.length; i++) {
                    if (this.positions[i].equals(str)) {
                        return true;
                    }
                }
            }
            return false;
        }

        static VehicleControlType match(String str) {
            return EMPTY;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "[positions:" + Arrays.toString(this.positions) + ",tips:" + this.tips + "]";
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IAsrJsonResultListener
    public ActionRet onAsrJsonResult(String str, int i) {
        TASSystem.LOGI("VehicleControlImpl::onAsrJsonResult,json:" + str);
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("semantic");
            if (optJSONObject != null) {
                String optString = optJSONObject.optString(JSON_STR_INTENT);
                if (!TextUtils.isEmpty(optString) && mIntentControls.containsKey(optString)) {
                    String dispatch = mIntentControls.get(optString).dispatch(optString, optJSONObject.getJSONArray(JSON_STR_SLOTS));
                    if (TextUtils.isEmpty(dispatch)) {
                        return ActionRet.create(-1);
                    }
                    return ActionRet.create(1, dispatch);
                }
            } else {
                Iterator<Map.Entry<String, BaseControl>> it = mIntentControls.entrySet().iterator();
                if (it.hasNext()) {
                    Map.Entry<String, BaseControl> next = it.next();
                    if (TextUtils.isEmpty("")) {
                        String SecondDispatch = next.getValue().SecondDispatch(str);
                        if (TextUtils.isEmpty(SecondDispatch)) {
                            return ActionRet.create(-1);
                        }
                        return ActionRet.create(1, SecondDispatch);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ActionRet.create(-1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.ISystemClient
    public ActionRet toggleAction(boolean z, String str, String str2, int i) {
        TASSystem.LOGI("VehicleControlImpl::toggleAction,isOpen:" + z + ",name:" + str + ",rawText:" + str2 + ",doaDirection:" + i);
        VehicleControlType match = VehicleControlType.match(str);
        if (match != VehicleControlType.EMPTY && match.control != null) {
            match.setTips(str);
            return ActionRet.create(1, match.control.onInvokeAction(z, match));
        }
        return ActionRet.create(1, TASUtils.replyTTS(TASUtils.no_support));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.ISystemClient
    public ActionRet openGlobalHelp() {
        TASSystem.LOGI("VehicleControlImpl::openGlobalHelp");
        return ActionRet.create(0, TASUtils.replyTTS(TASUtils.no_support));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.ISystemClient
    public ActionRet openDomainHelp(String str, String str2) {
        TASSystem.LOGI("VehicleControlImpl::openDomainHelp,domain:" + str + ",action:" + str2);
        return ActionRet.create(0, TASUtils.replyTTS(TASUtils.no_support));
    }

    @Override // com.tencent.wecarspeech.sdk.api.ISystemClient
    public String getSysCurrentNavi() {
        return Settings.System.getString(TASSystem.mContext.getContentResolver(), "active_navi_app");
    }
}
