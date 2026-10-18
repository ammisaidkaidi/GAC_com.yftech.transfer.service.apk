package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TskProtocol {

    @SerializedName("controlInfo")
    private ControlInfo mControlInfo;

    @SerializedName("globalInfo")
    private GlobalInfo mGlobalInfo;

    @SerializedName("listItems")
    private List<ListItem> mListItems;

    public ControlInfo getControlInfo() {
        return this.mControlInfo;
    }

    public void setControlInfo(ControlInfo controlInfo) {
        this.mControlInfo = controlInfo;
    }

    public GlobalInfo getGlobalInfo() {
        return this.mGlobalInfo;
    }

    public void setGlobalInfo(GlobalInfo globalInfo) {
        this.mGlobalInfo = globalInfo;
    }

    public List<ListItem> getListItems() {
        return this.mListItems;
    }

    public void setListItems(List<ListItem> list) {
        this.mListItems = list;
    }
}
