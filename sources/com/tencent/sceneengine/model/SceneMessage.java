package com.tencent.sceneengine.model;

import a.a.a.a.a;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.taiutils.log.LogUtils;
import java.io.Serializable;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SceneMessage implements Serializable {
    public static final String TAG = "SceneMessage";
    public static final long serialVersionUID = -4672096744697031782L;
    public Bundle bundle;
    public String bundleFile;
    public long eventTime;
    public String extraJson;
    public boolean feedBack;
    public int imageResId;
    public ViewMode mode;
    public String module;
    public long msgExpTime;
    public String msgId;
    public String msgLabel;
    public int msgPriType;
    public int msgPriority;
    public int msgSource;
    public int msgSubType;
    public long msgTime;
    public int msgType;
    public String payload;
    public int protoVer;
    public List<List<StopCond>> stoppedCond;
    public List<List<TriggerCond>> triggerCond;
    public int viewType;

    public Bundle getBundle() {
        return this.bundle;
    }

    public String getBundleFile() {
        return this.bundleFile;
    }

    public long getEventTime() {
        return this.eventTime;
    }

    public String getExtraJson() {
        return this.extraJson;
    }

    public int getImageResId() {
        return this.imageResId;
    }

    public ViewMode getMode() {
        return this.mode;
    }

    public String getModule() {
        return this.module;
    }

    public long getMsgExpTime() {
        return this.msgExpTime;
    }

    public String getMsgId() {
        return this.msgId;
    }

    public String getMsgLabel() {
        return this.msgLabel;
    }

    public JSONObject getMsgPayload() {
        String str = this.payload;
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getMsgPayloadStr() {
        return this.payload;
    }

    public int getMsgPriType() {
        return this.msgPriType;
    }

    public int getMsgPriority() {
        return this.msgPriority;
    }

    public int getMsgSource() {
        return this.msgSource;
    }

    public int getMsgSubType() {
        return this.msgSubType;
    }

    public long getMsgTime() {
        return this.msgTime;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public String getPayload() {
        return this.payload;
    }

    public int getProtoVer() {
        return this.protoVer;
    }

    public List<List<StopCond>> getStoppedCond() {
        return this.stoppedCond;
    }

    public List<List<TriggerCond>> getTriggerCond() {
        return this.triggerCond;
    }

    public int getViewType() {
        return this.viewType;
    }

    public boolean isFeedBack() {
        return this.feedBack;
    }

    public boolean isSameType(SceneMessage sceneMessage) {
        if (sceneMessage == null) {
            return false;
        }
        String str = TAG;
        StringBuilder a2 = a.a("isSameType  this.msgLabel=");
        a2.append(this.msgLabel);
        a2.append(", msg.msgLabel=");
        a2.append(sceneMessage.msgLabel);
        LogUtils.i(str, a2.toString());
        String str2 = TAG;
        StringBuilder a3 = a.a("isSameType  this.msgId=");
        a3.append(this.msgId);
        a3.append(", msg.msgId=");
        a3.append(sceneMessage.msgId);
        LogUtils.i(str2, a3.toString());
        if (TextUtils.isEmpty(this.msgLabel) && TextUtils.isEmpty(sceneMessage.msgLabel)) {
            String str3 = this.msgId;
            if (str3 != null) {
                return str3.equals(sceneMessage.msgId);
            }
            return false;
        }
        if (TextUtils.isEmpty(this.msgLabel) || TextUtils.isEmpty(sceneMessage.msgLabel)) {
            return false;
        }
        return this.msgLabel.equals(sceneMessage.msgLabel);
    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public void setBundleFile(String str) {
        this.bundleFile = str;
    }

    public void setEventTime(long j) {
        this.eventTime = j;
    }

    public void setExtraJson(String str) {
        this.extraJson = str;
    }

    public void setFeedBack(boolean z) {
        this.feedBack = z;
    }

    public void setImageResId(int i) {
        this.imageResId = i;
    }

    public void setMode(ViewMode viewMode) {
        this.mode = viewMode;
    }

    public void setModule(String str) {
        this.module = str;
    }

    public void setMsgExpTime(long j) {
        this.msgExpTime = j;
    }

    public void setMsgId(String str) {
        this.msgId = str;
    }

    public void setMsgLabel(String str) {
        this.msgLabel = str;
    }

    public void setMsgPriType(int i) {
        this.msgPriType = i;
    }

    public void setMsgPriority(int i) {
        this.msgPriority = i;
    }

    public void setMsgSource(int i) {
        this.msgSource = i;
    }

    public void setMsgSubType(int i) {
        this.msgSubType = i;
    }

    public void setMsgTime(long j) {
        this.msgTime = j;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public void setPayload(String str) {
        this.payload = str;
    }

    public void setProtoVer(int i) {
        this.protoVer = i;
    }

    public void setStoppedCond(List<List<StopCond>> list) {
        this.stoppedCond = list;
    }

    public void setTriggerCond(List<List<TriggerCond>> list) {
        this.triggerCond = list;
    }

    public void setViewType(int i) {
        this.viewType = i;
    }

    public String toString() {
        StringBuilder a2 = a.a("SceneMessage{ msgLabel='");
        a2.append(this.msgLabel);
        a2.append('\'');
        a2.append(", msgId='");
        a2.append(this.msgId);
        a2.append('\'');
        a2.append(", msgTime=");
        a2.append(this.msgTime);
        a2.append(", msgExpTime=");
        a2.append(this.msgExpTime);
        a2.append(", imageResId=");
        a2.append(this.imageResId);
        a2.append(", module='");
        a2.append(this.module);
        a2.append('\'');
        a2.append(", feedBack=");
        a2.append(this.feedBack);
        a2.append(", msgType=");
        a2.append(this.msgType);
        a2.append(", msgPriType=");
        a2.append(this.msgPriType);
        a2.append(", msgPriority=");
        a2.append(this.msgPriority);
        a2.append(", msgSubType=");
        a2.append(this.msgSubType);
        a2.append(", mode=");
        a2.append(this.mode);
        a2.append(", protoVer=");
        a2.append(this.protoVer);
        a2.append(", payload='");
        a2.append(this.payload);
        a2.append('\'');
        a2.append(", eventTime=");
        a2.append(this.eventTime);
        a2.append(", msgSource=");
        a2.append(this.msgSource);
        a2.append(", stoppedCond=");
        a2.append(this.stoppedCond);
        a2.append(", triggerCond=");
        a2.append(this.triggerCond);
        a2.append(", viewType=");
        a2.append(this.viewType);
        a2.append(", bundleFile='");
        a2.append(this.bundleFile);
        a2.append('\'');
        a2.append(", bundle='");
        a2.append(this.bundle);
        a2.append('\'');
        a2.append(", extraJson='");
        a2.append(this.extraJson);
        a2.append('\'');
        a2.append('}');
        return a2.toString();
    }
}
