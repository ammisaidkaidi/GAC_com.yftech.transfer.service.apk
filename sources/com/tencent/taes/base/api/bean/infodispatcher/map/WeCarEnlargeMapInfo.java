package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarEnlargeMapInfo extends WeCarBaseBean {
    public boolean show;

    public WeCarEnlargeMapInfo() {
    }

    public WeCarEnlargeMapInfo(boolean z) {
        this.show = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.show == ((WeCarEnlargeMapInfo) obj).show;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.show));
    }
}
