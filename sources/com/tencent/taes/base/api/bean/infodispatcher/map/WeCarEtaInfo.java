package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarEtaInfo extends WeCarBaseBean {
    public int remainDisInMetre;
    public int remainHighwayServiceAreaCount;
    public int remainTimeInSecond;
    public int remainTrafficLightCount;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarEtaInfo)) {
            return false;
        }
        WeCarEtaInfo weCarEtaInfo = (WeCarEtaInfo) obj;
        return this.remainTimeInSecond == weCarEtaInfo.remainTimeInSecond && this.remainDisInMetre == weCarEtaInfo.remainDisInMetre && this.remainHighwayServiceAreaCount == weCarEtaInfo.remainHighwayServiceAreaCount && this.remainTrafficLightCount == weCarEtaInfo.remainTrafficLightCount;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.remainTimeInSecond), Integer.valueOf(this.remainDisInMetre), Integer.valueOf(this.remainHighwayServiceAreaCount), Integer.valueOf(this.remainTrafficLightCount));
    }
}
