package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarHighwayInfo extends WeCarBaseBean {
    public boolean isShow;
    public int nextDist;
    public String nextName;
    public int nextNextDist;
    public String nextNextName;
    public int nextNextType;
    public int nextType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarHighwayInfo)) {
            return false;
        }
        WeCarHighwayInfo weCarHighwayInfo = (WeCarHighwayInfo) obj;
        return this.isShow == weCarHighwayInfo.isShow && this.nextDist == weCarHighwayInfo.nextDist && this.nextType == weCarHighwayInfo.nextType && this.nextNextDist == weCarHighwayInfo.nextNextDist && this.nextNextType == weCarHighwayInfo.nextNextType && equals(this.nextName, weCarHighwayInfo.nextName) && equals(this.nextNextName, weCarHighwayInfo.nextNextName);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isShow), this.nextName, Integer.valueOf(this.nextDist), Integer.valueOf(this.nextType), this.nextNextName, Integer.valueOf(this.nextNextDist), Integer.valueOf(this.nextNextType));
    }
}
