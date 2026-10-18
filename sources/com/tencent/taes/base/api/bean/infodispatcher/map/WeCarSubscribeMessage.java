package com.tencent.taes.base.api.bean.infodispatcher.map;

import com.tencent.taes.base.api.bean.infodispatcher.base.WeCarBaseBean;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarSubscribeMessage extends WeCarBaseBean {
    public String appId;
    public String data;
    public String headImage;
    public String icon;
    public String name;
    public String page;
    public int pageType;
    public long pushTime;
    public String templateId;
    public String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeCarSubscribeMessage)) {
            return false;
        }
        WeCarSubscribeMessage weCarSubscribeMessage = (WeCarSubscribeMessage) obj;
        return equals(this.name, weCarSubscribeMessage.name) && equals(this.appId, weCarSubscribeMessage.appId) && equals(this.icon, weCarSubscribeMessage.icon) && equals(this.page, weCarSubscribeMessage.page) && this.pageType == weCarSubscribeMessage.pageType && equals(this.title, weCarSubscribeMessage.title) && equals(this.data, weCarSubscribeMessage.data) && equals(this.headImage, weCarSubscribeMessage.headImage) && this.pushTime == weCarSubscribeMessage.pushTime && equals(this.templateId, weCarSubscribeMessage.templateId);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.appId, this.icon, this.page, Integer.valueOf(this.pageType), this.title, this.data, this.headImage, Long.valueOf(this.pushTime), this.templateId);
    }
}
