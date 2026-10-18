package com.tencent.taes.base.api.bean.infodispatcher.map;

import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarYawEvent {
    public int eventType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WeCarYawEvent) && this.eventType == ((WeCarYawEvent) obj).eventType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.eventType));
    }
}
