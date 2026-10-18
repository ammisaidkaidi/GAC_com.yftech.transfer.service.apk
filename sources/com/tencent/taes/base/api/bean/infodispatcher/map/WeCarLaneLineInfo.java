package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarLaneLineInfo extends WeCarBaseBean {
    public String arrow;
    public String flag;
    public boolean isShow;
    public String property;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarLaneLineInfo)) {
            return false;
        }
        WeCarLaneLineInfo weCarLaneLineInfo = (WeCarLaneLineInfo) obj;
        return this.isShow == weCarLaneLineInfo.isShow && equals(this.arrow, weCarLaneLineInfo.arrow) && equals(this.flag, weCarLaneLineInfo.flag) && equals(this.property, weCarLaneLineInfo.property);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isShow), this.arrow, this.flag, this.property);
    }
}
