package com.tencent.taes.local.api.moss.bean;

import com.tencent.taes.framework.bean.AppType;
import com.tencent.taes.framework.bean.BaseInfo;

/* loaded from: /home/user/work/dex/classes.dex */
public class MessageInfo extends BaseInfo {
    private static final long serialVersionUID = -364045581793633194L;
    protected boolean isVertical;
    private String mAppName;
    private String mContent;
    protected int mDisplayWidth;
    private String mLogoUrl;
    protected String mPagePath;
    private String mTitle;

    public MessageInfo() {
        this.mType = AppType.Moss;
    }

    public String getAppName() {
        return this.mAppName;
    }

    public void setAppName(String str) {
        this.mAppName = str;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public String getContent() {
        return this.mContent;
    }

    public void setContent(String str) {
        this.mContent = str;
    }

    public String getLogoUrl() {
        return this.mLogoUrl;
    }

    public void setLogoUrl(String str) {
        this.mLogoUrl = str;
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
