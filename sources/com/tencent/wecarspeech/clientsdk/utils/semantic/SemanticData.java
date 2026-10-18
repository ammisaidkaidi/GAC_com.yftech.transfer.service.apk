package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.tencent.wecarspeech.clientsdk.receiver.CmdParser;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.clientsdk.utils.semantic.Slot;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SemanticData<T, W> {
    private static final String TAG = "SemanticData";

    @SerializedName("answer")
    private String mAnswer;

    @SerializedName("common_card")
    private W mCommonCard;

    @SerializedName("data")
    private T mData;

    @SerializedName("bCloudResult")
    private boolean mIsCloudResult;

    @SerializedName("is_wakeup")
    private boolean mIsWakeup = false;

    @SerializedName("operation")
    private String mOperation;

    @SerializedName("semantic")
    private SemanticBean mSemantic;

    @SerializedName("semantic_json")
    private SemanticJson mSemanticJson;

    @SerializedName(NotificationCompat.CATEGORY_SERVICE)
    private String mService;

    @SerializedName("speak_tips")
    private String mSpeakTips;

    @SerializedName("text")
    private String mText;

    @SerializedName("tips")
    private String mTips;

    public String getDomain() {
        if (this.mSemantic != null) {
            return this.mSemantic.getDomain();
        }
        return this.mService;
    }

    public String getIntent() {
        if (this.mSemantic != null) {
            return this.mSemantic.getIntent();
        }
        return this.mOperation;
    }

    public String getQuery() {
        if (this.mSemantic != null) {
            return this.mSemantic.getQuery();
        }
        return this.mText;
    }

    public boolean isWakeup() {
        return this.mIsWakeup;
    }

    public String getSpeakTips() {
        if (TextUtils.isEmpty(this.mSpeakTips)) {
            return getTips();
        }
        return this.mSpeakTips;
    }

    public String getTips() {
        if (TextUtils.isEmpty(this.mTips)) {
            return this.mAnswer;
        }
        return this.mTips;
    }

    public String getAnswer() {
        String str = this.mAnswer;
        if (TextUtils.isEmpty(str)) {
            str = getSpeakTips();
        }
        return TextUtils.isEmpty(str) ? getTips() : str;
    }

    public String getRealTips() {
        return this.mTips;
    }

    public T getData() {
        return this.mData;
    }

    public W getCommonCard() {
        return this.mCommonCard;
    }

    public boolean isSessionComplete() {
        if (this.mSemantic != null) {
            return this.mSemantic.isSessionComplete();
        }
        return true;
    }

    public SemanticJson getSemanticJson() {
        return this.mSemanticJson;
    }

    public boolean isCloudResult() {
        return this.mIsCloudResult;
    }

    public Map<String, Slot.Entity> findEntities() {
        HashMap hashMap = new HashMap();
        if (this.mSemantic != null) {
            for (Slot slot : this.mSemantic.getSlots()) {
                if (slot.isEntity()) {
                    hashMap.put(slot.getType(), slot.getEntity());
                }
            }
        }
        LogUtils.d(TAG, "findEntities size = " + hashMap.size());
        return hashMap;
    }

    public Map<String, Slot.Location> findLocations() {
        HashMap hashMap = new HashMap();
        if (this.mSemantic != null) {
            for (Slot slot : this.mSemantic.getSlots()) {
                if (slot.isLocation()) {
                    hashMap.put(slot.getType(), slot.getLocation());
                }
            }
        }
        LogUtils.d(TAG, "findLocations size = " + hashMap.size());
        return hashMap;
    }

    public Map<String, Slot.Date> findDates() {
        HashMap hashMap = new HashMap();
        if (this.mSemantic != null) {
            for (Slot slot : this.mSemantic.getSlots()) {
                if (slot.isDate()) {
                    hashMap.put(slot.getType(), slot.getDateValue());
                }
            }
        }
        LogUtils.d(TAG, "findDates size = " + hashMap.size());
        return hashMap;
    }

    public Map<String, Slot.Number> findNumbers() {
        HashMap hashMap = new HashMap();
        if (this.mSemantic != null) {
            for (Slot slot : this.mSemantic.getSlots()) {
                if (slot.isNumber()) {
                    hashMap.put(slot.getType(), slot.getNumber());
                }
            }
        }
        LogUtils.d(TAG, "findNumbers size = " + hashMap.size());
        return hashMap;
    }

    public Map<String, Slot.Unit> findUnits() {
        HashMap hashMap = new HashMap();
        if (this.mSemantic != null) {
            for (Slot slot : this.mSemantic.getSlots()) {
                if (slot.isUnit()) {
                    hashMap.put(slot.getType(), slot.getUnit());
                }
            }
        }
        LogUtils.d(TAG, "findUnits size = " + hashMap.size());
        return hashMap;
    }

    public String getOriginalTextByName(String str) {
        LogUtils.d(TAG, "getOriginalTextByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getOriginalText();
            }
        }
        LogUtils.d(TAG, "getOriginalTextByName can't find");
        return "";
    }

    public List<String> getAllEntityTextByName(String str) {
        LogUtils.d(TAG, "getEntityTextByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return null;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getAllEntityText();
            }
        }
        LogUtils.d(TAG, "getEntityTextByName can't find");
        return null;
    }

    public String getEntityTextByName(String str) {
        LogUtils.d(TAG, "getEntityTextByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getEntityText();
            }
        }
        LogUtils.d(TAG, "getEntityTextByName can't find");
        return "";
    }

    public boolean getSelectResultAllNo() {
        if (this.mSemantic == null) {
            return false;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.getSelectResult() != null) {
                return slot.getSelectResult().getAllNo();
            }
        }
        LogUtils.d(TAG, "getSelectResultAllNo can't find");
        return false;
    }

    public String getSelectResultValue() {
        if (this.mSemantic == null) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.getSelectResult() != null) {
                return slot.getSelectResult().getValue();
            }
        }
        LogUtils.d(TAG, "getSelectResultValue can't find");
        return "";
    }

    public int getSelectResultIndex() {
        if (this.mSemantic == null) {
            return -1;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.getSelectResult() != null) {
                return slot.getSelectResult().getIndex();
            }
        }
        LogUtils.d(TAG, "getSelectResultIndex can't find");
        return -1;
    }

    public int getSelectResultType() {
        if (this.mSemantic == null) {
            return -1;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.getSelectResult() != null) {
                return slot.getSelectResult().getType();
            }
        }
        LogUtils.d(TAG, "getSelectResultType can't find");
        return -1;
    }

    public int[] getSelectResultIndexes() {
        if (this.mSemantic == null) {
            return null;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.getSelectResult() != null) {
                return slot.getSelectResult().getIndexes();
            }
        }
        LogUtils.d(TAG, "getSelectResultIndexes can't find");
        return null;
    }

    public String getCityByName(String str) {
        LogUtils.d(TAG, "getCityByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getCity();
            }
        }
        LogUtils.d(TAG, "getCityByName can't find");
        return "";
    }

    public String getDateByName(String str) {
        LogUtils.d(TAG, "getDateByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getDate();
            }
        }
        LogUtils.d(TAG, "getDateByName can't find");
        return "";
    }

    public String getIntegerByName(String str) {
        LogUtils.d(TAG, "getIntegerByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getInteger();
            }
        }
        LogUtils.d(TAG, "getDateByName can't find");
        return "";
    }

    public int getConfirmByName(String str) {
        LogUtils.d(TAG, "getConfirmByName name = " + str);
        if (this.mSemantic == null || TextUtils.isEmpty(str)) {
            return -1;
        }
        for (Slot slot : this.mSemantic.getSlots()) {
            if (slot.hasValue(str)) {
                return slot.getConfirm().getValue();
            }
        }
        LogUtils.d(TAG, "getDateByName can't find");
        return -1;
    }

    public List<Slot> getSlots() {
        ArrayList arrayList = new ArrayList();
        if (this.mSemantic != null && this.mSemantic.getSlots() != null) {
            arrayList.addAll(this.mSemantic.getSlots());
        }
        return arrayList;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SemanticBean {

        @SerializedName(CmdParser.KEY_DOMAIN)
        private String mDomain;

        @SerializedName("intent")
        private String mIntent;

        @SerializedName("query")
        private String mQuery;

        @SerializedName("session_complete")
        private boolean mSessionComplete;

        @SerializedName("slots")
        private List<Slot> mSlots;

        public String getDomain() {
            return this.mDomain;
        }

        public String getIntent() {
            return this.mIntent;
        }

        public String getQuery() {
            return this.mQuery;
        }

        public boolean isSessionComplete() {
            return this.mSessionComplete;
        }

        public List<Slot> getSlots() {
            return this.mSlots;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SemanticJson {

        @SerializedName(NotificationCompat.CATEGORY_STATUS)
        private Status mStatus;

        public Status getStatus() {
            return this.mStatus;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Status {

        @SerializedName("code")
        private int mCode;

        @SerializedName("msg")
        private String mMsg;

        public int getCode() {
            return this.mCode;
        }

        public String getMsg() {
            return this.mMsg;
        }
    }
}
