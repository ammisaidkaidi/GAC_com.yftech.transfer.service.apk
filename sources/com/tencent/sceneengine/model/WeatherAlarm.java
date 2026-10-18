package com.tencent.sceneengine.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class WeatherAlarm {
    public String city;
    public String content;
    public String levelId;
    public String levelName;
    public String province;
    public String publishTime;
    public String town;
    public String typeId;
    public String typeName;

    public String getCity() {
        return this.city;
    }

    public String getContent() {
        return this.content;
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getLevelName() {
        return this.levelName;
    }

    public String getProvince() {
        return this.province;
    }

    public String getPublishTime() {
        return this.publishTime;
    }

    public String getTown() {
        return this.town;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setLevelName(String str) {
        this.levelName = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setPublishTime(String str) {
        this.publishTime = str;
    }

    public void setTown(String str) {
        this.town = str;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }
}
