package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarArriveEvent extends WeCarBaseBean {
    public int eventType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WeCarArriveEvent) && this.eventType == ((WeCarArriveEvent) obj).eventType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.eventType));
    }
}
