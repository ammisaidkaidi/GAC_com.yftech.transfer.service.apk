package com.yftech.transfer.txznet.access.vehicle;

import android.content.Intent;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class AirConditionController extends AbsBaseController {
    private static final String AC_AIR_CLOSE = "ac.air.close";
    private static final String AC_AIR_OPEN = "ac.air.open";
    private static final String AC_DEFROST_BEHIND_CLOSE = "ac.defrost.behind.close";
    private static final String AC_DEFROST_BEHIND_OPEN = "ac.defrost.behind.open";
    private static final String AC_DEFROST_FRONT_CLOSE = "ac.defrost.front.close";
    private static final String AC_DEFROST_FRONT_OPEN = "ac.defrost.front.open";
    private static final String AC_FAST_COOL_CLOSE = "ac.fast.cool.close";
    private static final String AC_FAST_COOL_OPEN = "ac.fast.cool.open";
    private static final String AC_FAST_HOT_CLOSE = "ac.fast.hot.close";
    private static final String AC_FAST_HOT_OPEN = "ac.fast.hot.open";
    private static final String AC_HOT_MAX = "ac.hot.max";
    private static final String AC_ICE_CLOSE = "ac.ice.close";
    private static final String AC_ICE_MAX = "ac.ice.max";
    private static final String AC_ICE_OPEN = "ac.ice.open";
    private static final String AC_INTELL_MODE_CLOSE = "ac.intell.mode.close";
    private static final String AC_INTELL_MODE_OPEN = "ac.intell.mode.open";
    private static final String AC_LOOP_INSIDE = "ac.loop.inside";
    private static final String AC_LOOP_OUTSIDE = "ac.loop.outside";
    private static final String AC_MAX_DEFROST_BEHIND_CLOSE = "ac.max.defrost.behind.close";
    private static final String AC_MAX_DEFROST_BEHIND_OPEN = "ac.max.defrost.behind.open";
    private static final String AC_MAX_DEFROST_FRONT_CLOSE = "ac.max.defrost.front.close";
    private static final String AC_MAX_DEFROST_FRONT_OPEN = "ac.max.defrost.front.open";
    private static final String AC_MODE = "ac.mode";
    private static final String AC_TEMP_DEC = "ac.temp.dec";
    private static final String AC_TEMP_INC = "ac.temp.inc";
    private static final String AC_TEMP_TO = "ac.temp.to";
    private static final String AC_WIND_DOWN = "ac.wind.down";
    private static final String AC_WIND_MAX = "ac.wind.max";
    private static final String AC_WIND_MIN = "ac.wind.min";
    private static final String AC_WIND_TO = "ac.wind.to";
    private static final String AC_WIND_UP = "ac.wind.up";
    private List<String> ACTIONS = Arrays.asList(AC_AIR_OPEN, AC_AIR_CLOSE, AC_TEMP_TO, AC_TEMP_INC, AC_TEMP_DEC, AC_MODE, AC_DEFROST_FRONT_OPEN, AC_DEFROST_FRONT_CLOSE, AC_MAX_DEFROST_FRONT_OPEN, AC_MAX_DEFROST_FRONT_CLOSE, AC_DEFROST_BEHIND_OPEN, AC_DEFROST_BEHIND_CLOSE, AC_MAX_DEFROST_BEHIND_OPEN, AC_MAX_DEFROST_BEHIND_CLOSE, AC_LOOP_INSIDE, AC_LOOP_OUTSIDE, AC_WIND_UP, AC_WIND_DOWN, AC_WIND_TO, AC_WIND_MAX, AC_WIND_MIN, AC_HOT_MAX, AC_ICE_MAX, AC_ICE_OPEN, AC_ICE_CLOSE, AC_FAST_COOL_OPEN, AC_FAST_COOL_CLOSE, AC_FAST_HOT_OPEN, AC_FAST_HOT_CLOSE, AC_INTELL_MODE_OPEN, AC_INTELL_MODE_CLOSE);

    @Override // com.yftech.transfer.txznet.access.vehicle.AbsBaseController
    public String invoke(Intent intent) {
        return null;
    }

    @Override // com.yftech.transfer.txznet.access.vehicle.AbsBaseController
    public boolean match(String str) {
        return !TextUtils.isEmpty(str) && this.ACTIONS.contains(str);
    }
}
