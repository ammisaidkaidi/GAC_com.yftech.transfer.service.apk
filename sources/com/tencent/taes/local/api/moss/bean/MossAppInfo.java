package com.tencent.taes.local.api.moss.bean;

import com.tencent.taes.framework.bean.AppType;
import com.tencent.taes.framework.bean.BaseInfo;

/* loaded from: /home/user/work/dex/classes.dex */
public class MossAppInfo extends BaseInfo {
    private static final long serialVersionUID = -7523496019187009023L;
    protected boolean isVertical;
    protected int mDisplayWidth;
    protected String mLogoUrl;
    protected String mName;
    protected String mPagePath;
    protected String sourceId;
    protected boolean tencentMossApp = false;

    public MossAppInfo() {
        this.mType = AppType.Moss;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getLogoUrl() {
        return this.mLogoUrl;
    }

    public void setLogoUrl(String str) {
        this.mLogoUrl = str;
    }

    public void setTencentMossApp(boolean z) {
        this.tencentMossApp = z;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public boolean isTencentMossApp() {
        return this.tencentMossApp;
    }

    public int getDisplayWidth() {
        return this.mDisplayWidth;
    }

    public void setDisplayWidth(int i) {
        this.mDisplayWidth = i;
    }

    public boolean isVertical() {
        return this.isVertical;
    }

    public void setVertical(boolean z) {
        this.isVertical = z;
    }

    public String getPagePath() {
        return this.mPagePath;
    }

    public void setPagePath(String str) {
        this.mPagePath = str;
    }
}
