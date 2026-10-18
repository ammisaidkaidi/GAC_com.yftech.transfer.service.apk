package com.yftech.transfer.tencent.access;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.tencent.wecarbase.taibaseui.BaseDialog;
import com.yftech.transfer.service.utils.JSONHelper;
import java.util.HashMap;
import java.util.Random;

/* loaded from: /home/user/work/dex/classes.dex */
public class TASUtils {
    public static final String CONFIG_TIPS_NONSUPPORT = "无此功能";
    public static String[] car_window_no_configuration = {"您的车辆不支持该操作", "这可能超出了我的能力范围，换个说法试试吧", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] car_window_no_support = {"暂不支持该操作，你可以试着说打开左前车窗", "这可能超出了我的能力范围，换个说法试试吧", "难住我了，再换个说法吧"};
    public static String[] car_window_opened_window = {"XXX已经打开", "XXX已经打开", "XXX已经打开"};
    public static String[] car_window_closed_window = {"XXX已经关闭", "XXX已经关闭", "XXX已经关闭"};
    public static String[] car_window_half_opened_window = {"XXX已经微开", "XXX已经微开", "XXX已经微开"};
    public static String[] car_window_open_window = {"为您打开XXX", "好的，正在为您打开XXX", "遵命，马上就办"};
    public static String[] car_window_close_window = {"为您关闭XXX", "好的，正在为您关闭XXX", "遵命，马上就办"};
    public static String[] car_window_ajar_window = {"为您微开XXX", "好的，正在为您微开XXX", "遵命，马上就办"};
    public static String[] skylight_window_no_configuration = {"您的车辆不支持该操作", "我也想为你打开天窗吹吹风，但是我没有找到可以控制的天窗", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] skylight_window_no_support = {"暂不支持该操作，你可以试着说打开天窗", "难住我了，我还不会，换个说法试试", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] skylight_window_open = {"为您打开天窗", "好的，为您打开天窗，我们一起吹吹风", "遵命，马上为您打开天窗"};
    public static String[] skylight_window_close = {"为您关闭天窗", "好的，正在为您关闭天窗", "遵命，马上为您关闭天窗"};
    public static String[] sunroof_window_no_configuration = {"您的车辆不支持该操作", "我也想为你打开遮阳帘，但是我没有找到可以控制的遮阳帘", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] sunroof_window_open = {"为您打开遮阳帘", "正在为您打开遮阳帘", "遵命，马上为您打开遮阳帘"};
    public static String[] sunroof_window_close = {"为您关闭遮阳帘", "正在为您关闭遮阳帘", "遵命，马上为您关闭遮阳帘"};
    public static String[] ac_no_configuration = {"您的车辆不支持该操作，请手动操作", "这可能超出了我的能力范围，换个说法试试吧", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] ac_no_support = {"暂不支持该操作，你可以试着说空调调到26度", "这可能超出了我的能力范围，换个说法试试吧", "难住我了，我还不会，换个说法试试"};
    public static String[] ac_xxx_opened = {"XXX已是开启状态", "XXX已经打开了哦", "XXX已是开启状态"};
    public static String[] ac_xxx_closed = {"XXX已是关闭状态", "XXX已经关闭了哦", "XXX已是关闭状态"};
    public static String[] ac_inner_loop_opened = {"当前已经是内循环", "内循环已经打开了哦", "当前已经是内循环"};
    public static String[] ac_outside_loop_closed = {"当前已经是外循环", "外循环已经打开了哦", "当前已经是外循环"};
    public static String[] ac_max_temperatured = {"当前已经是最高温度", "XXX已经是最高温度了", "当前已经是最高温度"};
    public static String[] ac_min_temperatured = {"当前已经是最低温度", "XXX已经是最低温度了", "当前已经是最低温度"};
    public static String[] ac_middle_temperatured = {"当前已经是适中温度", "XXX已经是适中温度了", "当前已经是适中温度"};
    public static String[] ac_air_direction_volume_max = {"当前风量已经是最大", "风量已经在最大", "当前风量已经是最大"};
    public static String[] ac_air_direction_volume_min = {"当前风量已经是最小", "风量已经在最小", "当前风量已经是最小"};
    public static String[] ac_air_direction_volume_middle = {"当前风量已经是适中", "风量已经在适中", "当前风量已经是适中"};
    public static String[] ac_blowing_mode = {"当前已经是XXX模式", "已经在XXX了哦", "当前已经是XXX模式"};
    public static String[] ac_xxx_open = {"为您打开XXX", "好的，正在为您打开XXX", "遵命！马上为您打开XXX"};
    public static String[] ac_xxx_close = {"为您关闭XXX", "好的，正在为您关闭XXX", "遵命！马上为您关闭XXX"};
    public static String[] ac_refrigeration_open = {"为您打开制冷", "好的，马上给您带来清凉", "遵命！马上为您打开制冷"};
    public static String[] ac_aqs_open = {"为您打开空气质量控制", "正在为您打开空气质量控制，好空气带来好心情", "遵命！马上就办"};
    public static String[] ac_aqs_close = {"为您关闭空气质量控制", "好的，正在为您关闭空气质量控制", "遵命！马上就办"};
    public static String[] ac_min_set_temperature = {"为您将XXX调到最低温度", "好的，正在为您调到最低温度，温度太低，小心感冒哦", "遵命！马上为您将XXX调到最低温度"};
    public static String[] ac_max_set_temperature = {"为您将XXX调到最高温度", "好的，正在为您调到最高温度", "遵命！马上为您将XXX调到最高温度"};
    public static String[] ac_middle_set_temperature = {"为您将XXX调到适中温度", "好的，正在为您调到适中温度", "遵命！马上为您将XXX调到适中温度"};
    public static String[] ac_set_temperature_increase = {"温度已调高", "好的，正在为您调高温度", "遵命！马上就办"};
    public static String[] ac_set_temperature_decrease = {"温度已调低", "好的，正在为您调低温度", "遵命！马上就办"};
    public static String[] ac_driver_set_temperature_increase = {"主驾驶温度已调高XXX度", "好的，正在为您将主驾驶调高XXX度", "遵命！马上就办"};
    public static String[] ac_driver_set_temperature_decrease = {"主驾驶温度已调低XXX度", "好的，正在为您将主驾驶调低XXX度", "遵命！马上就办"};
    public static String[] ac_copilot_set_temperature_increase = {"副驾驶温度已调高XXX度", "好的，正在为您将副驾驶调高XXX度", "遵命！马上就办"};
    public static String[] ac_copilot_set_temperature_decrease = {"副驾驶温度已调低XXX度", "好的，正在为您将副驾驶调低XXX度", "遵命！马上就办"};
    public static String[] ac_set_temperature = {"温度已调至XXX度", "好的，正在为您把温度变成XXX度", "遵命！马上就办"};
    public static String[] ac_driver_set_temperature = {"主驾驶温度已调至XXX度", "好的，正在为您把主驾驶温度变成XXX度", "遵命！马上就办"};
    public static String[] ac_copilot_set_temperature = {"副驾驶温度已调至XXX度", "好的，正在为您把副驾驶温度变成XXX度", "遵命！马上就办"};
    public static String[] ac_temperature_overflow_high = {"XXX温度已调到最高", "超出调整范围了！为您将XXX温度调到最高", "XXX温度已调到最高"};
    public static String[] ac_temperature_overflow_low = {"XXX温度已调到最低", "超出调整范围了！为您将XXX温度调到最低", "XXX温度已调到最低"};
    public static String[] ac_air_direction_volume_increase = {"风量已调高", "好的，正在为您把风量调高", "遵命！马上就办"};
    public static String[] ac_air_direction_volume_decrease = {"风量已调低", "好的，正在为您把风量调小", "遵命！马上就办"};
    public static String[] ac_air_direction_set_volume = {"风量已调至XXX档", "好的，正在为您把风量变成XXX档", "遵命！马上就办"};
    public static String[] ac_air_direction_volume = {"当前风量已经是XXX档", "风量已经在XXX档", "当前风量已经是XXX档"};
    public static String[] ac_air_direction_volume_overflow = {"风量已调到最XXX", "超出调整范围了！为您把风量调到最XXX", "风量已调到最XXX"};
    public static String[] ac_set_blowing_mode = {"为您切换到XXX模式", "好的，正在为您把吹风模式调至XXX", "遵命！马上就办"};
    public static String[] ac_ion_open = {"为您打开负离子功能", "好的，为您赶跑PM2.5", "遵命！马上就办"};
    public static String[] ac_ion_close = {"为您关闭负离子功能", "好的，关闭负离子功能", "遵命！马上就办"};
    public static String[] ac_max_refrigeration_open = {"为您打开最大制冷模式", "好的，打开最大制冷模式，温度太低，注意预防感冒", "遵命！马上就办"};
    public static String[] ac_max_refrigeration_close = {"为您关闭最大制冷模式", "好的，关闭最大制冷模式", "遵命！马上就办"};
    public static String[] seat_heating_no_configuration = {"您的车辆不支持该操作", "我找了一下没找到座椅加热", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] seat_heating_no_support = {"暂不支持该操作，你可以试着说座椅加热增加2挡", "这可能超出了我的能力范围，换个说法试试吧", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] seat_heating_driver_level = {"主驾驶座椅加热已是XXX", "主驾驶座椅加热已是XXX了哦", "主人！您的主驾驶座椅加热已是XXX"};
    public static String[] seat_heating_copilot_level = {"副驾驶座椅加热已是XXX", "副驾驶座椅加热已是XXX了哦", "主人！您的副驾驶座椅加热已是XXX"};
    public static String[] seat_heating_level = {"座椅加热已是XXX", "座椅加热已是XXX了哦", "主人！您的座椅加热已是XXX"};
    public static String[] seat_heating_geared = {"当前已经是XXX档", "座椅加热档位已经在XXX档", "座椅加热档位已经在XXX档"};
    public static String[] seat_heating_driver_geared = {"当前已经是XXX档", "主驾驶座椅加热档位已经在XXX档", "主驾驶座椅加热档位已经在XXX档"};
    public static String[] seat_heating_copilot_geared = {"当前已经是XXX档", "副驾驶座椅加热档位已经在XXX档", "副驾驶座椅加热档位已经在XXX档"};
    public static String[] seat_heating_open = {"为您打开XXX", "好的，温暖马上驾到", "遵命！马上为您打开XXX功能"};
    public static String[] seat_heating_close = {"为您关闭XXX", "好的，正在为您关闭XXX功能", "遵命！马上为您关闭XXX功能"};
    public static String[] seat_heating_opened = {"XXX已经是开启状态", "XXX功能已经打开了哦，温度如果没有升高，再等等吧！", "XXX功能已经打开了哦"};
    public static String[] seat_heating_closed = {"XXX已经是关闭状态", "XXX功能已经关闭了哦", "XXX功能已经关闭了哦"};
    public static String[] seat_ventilate_open = {"为您打开XXX", "为您打开XXX", "遵命！马上为您打开XXX功能"};
    public static String[] seat_ventilate_close = {"为您关闭XXX", "好的，正在为您关闭XXX功能", "遵命！马上为您关闭XXX功能"};
    public static String[] seat_ventilate_opened = {"XXX已经是开启状态", "XXX已经是开启状态", "XXX功能已经打开了哦"};
    public static String[] seat_ventilate_closed = {"XXX已经是关闭状态", "XXX功能已经关闭了哦", "XXX功能已经关闭了哦"};
    public static String[] seat_heating_set_increase = {"XXX座椅加热档位已调高", "好的，温暖马上驾到", "遵命！马上为您把XXX座椅加热档位调高一点"};
    public static String[] seat_heating_set_decrease = {"XXX座椅加热档位已调低", "好的，正在为您把XXX座椅加热档位调低一点", "遵命！马上为把XXX座椅加热档位调低一点"};
    public static String[] seat_heating_copilot_gear = {"座椅加热档位已调至XXX档", "好的，正在为您把副驾驶座椅加热档位调到XXX档", "遵命！马上为您把副驾驶座椅加热档位调到XXX档"};
    public static String[] seat_heating_driver_gear = {"座椅加热档位已调至XXX档", "好的，正在为您把主驾驶座椅加热档位调到XXX档", "遵命！马上为您把主驾驶座椅加热档位调到XXX档"};
    public static String[] seat_heating_gear = {"座椅加热档位已调至XXX档", "好的，正在为您把座椅加热档位调到XXX档", "遵命！马上为您把座椅加热档位调到XXX档"};
    public static String[] seat_heating_overflow_low = {"XXX座椅加热已调到最低", "超出调整范围了！为您把XXX座椅加热调到最低", "XXX座椅加热已调到最低"};
    public static String[] seat_heating_overflow_high = {"XXX座椅加热已调到最高", "超出调整范围了！为您把XXX座椅加热调到最高", "XXX座椅加热已调到最高"};
    public static String[] seat_heating_driver_set_level = {"主驾驶座椅加热已调至XXX", "为您把主驾驶座椅加热调到XXX", "遵命！马上为您把主驾驶座椅加热档位调到XXX"};
    public static String[] seat_heating_copilot_set_level = {"副驾驶座椅加热已调到XXX", "为您把副驾驶座椅加热调到XXX", "遵命！马上为您把副驾驶座椅加热档位调到XXX"};
    public static String[] seat_heating_set_level = {"座椅加热已调到XXX", "为您把座椅加热调到XXX", "遵命！马上为您把座椅加热档位调到XXX"};
    public static String[] skylight_no_configuration = {"您的车辆不支持该操作", "我找了一下没找到氛围灯", "我找了一下没找到氛围灯"};
    public static String[] skylight_no_support = {"暂不支持该操作，你可以试着说氛围灯换个颜色", "这可能超出了我的能力范围，换个说法试试吧", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] skylight_brightnessed_max = {"当前亮度已经是最亮", "氛围灯颜色已是最亮了哦", "当前亮度已经是最亮"};
    public static String[] skylight_brightnessed_min = {"当前亮度已经是最暗", "氛围灯颜色已是最暗了哦", "当前亮度已经是最亮"};
    public static String[] skylight_colour_last = {"好的，为您调节至XXX", "好的，正在为您将氛围灯颜色变成上一个颜色", "遵命！马上为您将氛围灯颜色变成上一个颜色"};
    public static String[] skylight_colour_next = {"好的，为您调节至XXX", "好的，正在为您将氛围灯颜色变成下一个颜色", "遵命！马上为您将氛围灯颜色变成下一个颜色"};
    public static String[] skylight_colour = {"好的，为您调节至XXX", "说变就变，为你把氛围灯调成XXX", "遵命！马上为您将氛围灯颜色变成XXX"};
    public static String[] skylight_brightness_bright = {"氛围灯亮度已调亮", "好的，正在为您将氛围灯调亮一点", "遵命！马上为您将氛围灯调亮一点"};
    public static String[] skylight_brightness_dark = {"氛围灯亮度已调暗", "好的，正在为您氛围灯调暗一点", "遵命！马上为您将氛围灯调暗一点"};
    public static String[] skylight_brightness_overflow_low = {"氛围灯亮度已调至最暗", "超出调整范围了！为您把氛围灯调到最暗", "氛围灯已调到最暗"};
    public static String[] skylight_brightness_overflow_high = {"氛围灯亮度已调至最亮", "超出调整范围了！为您把氛围灯调到最亮", "氛围灯已调到最亮"};
    public static String[] recorder_no_configuration = {"您的车辆不支持该操作", "我找了一下没找到行车记录仪", "我找了一下没找到行车记录仪"};
    public static String[] recorder_no_support = {"暂不支持该操作，你可以试着说拍照", "这可能超出了我的能力范围，换个说法试试吧", "这可能超出了我的能力范围，换个说法试试吧"};
    public static String[] recorder_open = {"为您开启紧急录像", "好的，紧急录像开启", "遵命，马上开始紧急录像"};
    public static String[] recorder_one_pic = {BaseDialog.DEFAULT_BUTTON_TEXT, "好的，正在执行", "遵命"};
    public static String[] recorder_continuous_pic = {BaseDialog.DEFAULT_BUTTON_TEXT, "好的，正在执行", "遵命"};
    public static String[] app_hotspot_opened = {"移动热点当前已是打开状态", "移动热点已是打开状态了哦", "已经打开了哦"};
    public static String[] app_hotspot_closed = {"移动热点当前已是关闭状态", "移动热点已是关闭状态了哦", "已经关闭了哦"};
    public static String[] app_hotspot_open = {"好的为您打开移动热点", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] app_hotspot_close = {"好的为您关闭移动热点", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] app_wifi_opened = {"wifi已是打开状态", "wifi已是打开状态了哦", "已经打开了哦"};
    public static String[] app_wifi_closed = {"wifi已是关闭状态", "wifi已是关闭状态了哦", "已经关闭了哦"};
    public static String[] app_wifi_open = {"好的为您打开wifi", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] app_wifi_close = {"好的为您关闭wifi", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] app_bluetooth_opened = {"蓝牙已是打开状态", "蓝牙已是打开状态了哦", "已经打开了哦"};
    public static String[] app_bluetooth_closed = {"wifi已是关闭状态", "蓝牙已是关闭状态了哦", "已经关闭了哦"};
    public static String[] app_bluetooth_open = {"好的为您打开蓝牙", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] app_bluetooth_close = {"好的为您关闭蓝牙", BaseDialog.DEFAULT_BUTTON_TEXT, "遵命"};
    public static String[] AIR_IS_OPENED_TIPS = {"空调已开启", "空调已开启", "空调已开启"};
    public static String[] AIR_OPENING_TIPS = {"好的，正在开启空调", "好的，正在开启空调", "好的，正在开启空调"};
    public static String[] AIR_IS_CLOSED_TIPS = {"空调已关闭", "空调已关闭", "空调已关闭"};
    public static String[] AIR_CLOSING_TIPS = {"好的，正在关闭空调", "好的，正在关闭空调", "好的，正在关闭空调"};
    public static String[] POWER_NO_READY = {"请将电源置为ON档后使用此功能", "请将电源置为ON档后使用此功能", "请将电源置为ON档后使用此功能"};
    public static String[] normal = {BaseDialog.DEFAULT_BUTTON_TEXT, BaseDialog.DEFAULT_BUTTON_TEXT, "遵命！"};
    public static String[] no_support = {"暂不支持该操作", "这可能超出了我的能力范围，换个说法试试吧", "暂不支持该操作"};
    public static String[] tempArray = {"", "", ""};

    private TASUtils() {
    }

    public static String replyTTS(String[] strArr) {
        return success(strArr[new Random().nextInt(3)]);
    }

    public static String replyTTS(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            tempArray[i] = strArr[i];
            if (strArr[i].contains("XXX")) {
                tempArray[i] = tempArray[i].replace("XXX", str);
            }
        }
        return success(tempArray[new Random().nextInt(3)]);
    }

    public static boolean isJsonStr(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("{") && str.endsWith("}");
    }

    public static String success(String... strArr) {
        if (strArr.length > 1) {
            return toJSON(strArr[0], strArr[1]);
        }
        return toJSON(true, (strArr == null || strArr.length <= 0) ? "" : strArr[0]);
    }

    public static String fail(String... strArr) {
        return toJSON(false, (strArr == null || strArr.length <= 0) ? "" : strArr[0]);
    }

    public static String toJSON(boolean z, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(z ? 1 : 0));
        hashMap.put("message", str);
        return JSONHelper.toJSON(hashMap);
    }

    public static String toJSON(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_STATUS, 2);
        hashMap.put("message", str);
        hashMap.put("contextInfo", str2);
        return JSONHelper.toJSON(hashMap);
    }
}
