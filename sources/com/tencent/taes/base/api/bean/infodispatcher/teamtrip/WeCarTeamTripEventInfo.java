package com.tencent.taes.base.api.bean.infodispatcher.teamtrip;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarTeamTripEventInfo extends WeCarBaseBean {
    public int mType;
    public WeCarTeamTripMemberInfo mWeCarTeamTripMemberInfo;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Type {
        public static final int TYPE_EXIT_TEAMPTRIP = 0;
        public static final int TYPE_MEMBERINFO_UPDATE_TEAMPTRIP = 1;
    }

    public WeCarTeamTripEventInfo(int i) {
        this.mType = -1;
        this.mType = i;
    }
}
