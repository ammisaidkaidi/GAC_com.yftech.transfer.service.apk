package com.tencent.taes.api.moss.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MossAppList {
    private List<MiniAppInfo> appletsList;
    private String bgImage;
    private String subtitle;
    private String typeName;

    public String getSubtitle() {
        return this.subtitle;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public String getBgImage() {
        return this.bgImage;
    }

    public void setBgImage(String str) {
        this.bgImage = str;
    }

    public List<MiniAppInfo> getAppletsList() {
        return this.appletsList;
    }

    public void setAppletsList(List<MiniAppInfo> list) {
        this.appletsList = list;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }

    public String toString() {
        return "MossAppList{appletsList=" + this.appletsList + ", typeName='" + this.typeName + "', subtitle='" + this.subtitle + "', bgImage='" + this.bgImage + "'}";
    }
}
