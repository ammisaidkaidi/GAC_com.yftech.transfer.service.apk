package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarSnapShotInfo extends WeCarBaseBean {
    public String nextRoadName;
    public int remainDisInMetre;
    public int remainTimeInSecond;
    public int turnDis;
    public int turnIconNum;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WeCarSnapShotInfo weCarSnapShotInfo = (WeCarSnapShotInfo) obj;
        return this.turnDis == weCarSnapShotInfo.turnDis && this.turnIconNum == weCarSnapShotInfo.turnIconNum && this.remainTimeInSecond == weCarSnapShotInfo.remainTimeInSecond && this.remainDisInMetre == weCarSnapShotInfo.remainDisInMetre && equals(this.nextRoadName, weCarSnapShotInfo.nextRoadName);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.turnDis), Integer.valueOf(this.turnIconNum), this.nextRoadName, Integer.valueOf(this.remainTimeInSecond), Integer.valueOf(this.remainDisInMetre));
    }

    public String toString() {
        return "WeCarSnapShotInfo{turnDis=" + this.turnDis + ", turnIconNum=" + this.turnIconNum + ", nextRoadName='" + this.nextRoadName + "', remainTimeInSecond=" + this.remainTimeInSecond + ", remainDisInMetre=" + this.remainDisInMetre + '}';
    }
}
