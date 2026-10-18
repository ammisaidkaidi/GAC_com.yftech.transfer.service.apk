package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.tencent.wecarspeech.clientsdk.enums.SkillType;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.interfaces.ISREventCallback;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.util.UUID;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class Skill {
    public static final String TAG = "Skill";
    public static final String UNIVERSAL_SKILL = "*ALL*";
    private transient ISREventCallback mCallback;

    @SerializedName("skillId")
    private String mSkillId;

    @SerializedName("skillType")
    private String mSkillType;

    public Skill(String str) {
        this(str, (ISREventCallback) null);
    }

    public Skill(SkillType skillType, ISREventCallback iSREventCallback) {
        this(skillType.name(), iSREventCallback);
    }

    public Skill(String str, ISREventCallback iSREventCallback) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("skill cannot be null"));
        } else {
            if (iSREventCallback == null) {
                ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("callback cannot be null"));
                return;
            }
            this.mSkillType = str;
            this.mCallback = iSREventCallback;
            this.mSkillId = UUID.randomUUID().toString();
        }
    }

    public String getSkillId() {
        return this.mSkillId;
    }

    public String getSkillType() {
        return this.mSkillType;
    }

    public void setmCallback(ISREventCallback iSREventCallback) {
        this.mCallback = iSREventCallback;
    }

    public void onSREvent(long j, String str, int i) {
        if (this.mCallback != null) {
            this.mCallback.onSREvent(j, str, i);
        } else {
            LogUtils.d(TAG, "onSREvent , callback == null");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mSkillType != null && this.mSkillType.equals(((Skill) obj).mSkillType);
    }

    public int hashCode() {
        return 527 + (this.mSkillType == null ? 0 : this.mSkillType.hashCode());
    }
}
