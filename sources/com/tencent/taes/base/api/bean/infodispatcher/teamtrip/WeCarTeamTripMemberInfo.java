package com.tencent.taes.base.api.bean.infodispatcher.teamtrip;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarTeamTripMemberInfo extends WeCarBaseBean {
    public boolean mIsSetTarget;
    public double mMaxDistance;
    public List<TeamTripMemberInfo> mTeamTripMemberInfoList;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TeamTripMemberInfo {
        private double mDistance;
        private String mHeadUrl;
        private boolean mIsMyself;

        public String getHeadUrl() {
            return this.mHeadUrl;
        }

        public void setHeadUrl(String str) {
            this.mHeadUrl = str;
        }

        public double getDistance() {
            return this.mDistance;
        }

        public void setDistance(double d) {
            this.mDistance = d;
        }

        public boolean isMyself() {
            return this.mIsMyself;
        }

        public void setMyself(boolean z) {
            this.mIsMyself = z;
        }
    }
}
