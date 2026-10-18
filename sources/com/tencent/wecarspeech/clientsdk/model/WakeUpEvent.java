package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.tencent.wecarspeech.clientsdk.exceptions.DuplicatedWakeupWordException;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.interfaces.IWakeupCallback;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Keep
@JsonAdapter(Serializer.class)
/* loaded from: /home/user/work/dex/classes.dex */
public class WakeUpEvent {
    public static final int MAX_SCENE_WORD_LENGTH = 10;
    public static final int MIN_SCENE_WORD_LENGTH = 2;
    public static final String TAG = "WakeUpEvent";

    @SerializedName("eventId")
    private String mEventId;

    @SerializedName("sceneWords")
    private Map<String, Set<WakeUpWord>> mSceneWords;
    private transient IWakeupCallback mWakeupCallback;

    public WakeUpEvent(String str, IWakeupCallback iWakeupCallback) {
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        hashSet.add(new WakeUpWord(str));
        hashMap.put(str, hashSet);
        construct(hashMap, iWakeupCallback);
    }

    public WakeUpEvent(HashMap<String, Set<String>> hashMap, IWakeupCallback iWakeupCallback) {
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<String, Set<String>> entry : hashMap.entrySet()) {
            Set<String> value = entry.getValue();
            HashSet hashSet = new HashSet();
            Iterator<String> it = value.iterator();
            while (it.hasNext()) {
                hashSet.add(new WakeUpWord(it.next()));
            }
            hashMap2.put(entry.getKey(), hashSet);
        }
        construct(hashMap2, iWakeupCallback);
    }

    public WakeUpEvent(Map<String, Set<WakeUpWord>> map, IWakeupCallback iWakeupCallback) {
        construct(map, iWakeupCallback);
    }

    private void construct(Map<String, Set<WakeUpWord>> map, IWakeupCallback iWakeupCallback) {
        if (iWakeupCallback == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("wakeupCallback cannot be null"));
            return;
        }
        if (map == null || map.size() == 0) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneWords cannot be empty"));
            return;
        }
        int i = 0;
        HashSet hashSet = new HashSet();
        if (map != null) {
            Iterator<Map.Entry<String, Set<WakeUpWord>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Set<WakeUpWord> value = it.next().getValue();
                i += value.size();
                hashSet.addAll(value);
            }
        }
        if (hashSet.size() < i) {
            ExceptionCtrlManager.getInstance().throwException(new DuplicatedWakeupWordException("duplicated wakeup word in sceneWords map"));
            return;
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (!isValidWord(((WakeUpWord) it2.next()).getWord())) {
                ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("invalid sceneWord, sceneWord length should not be less than 2 or more than 10"));
                return;
            }
        }
        this.mSceneWords = map;
        this.mWakeupCallback = iWakeupCallback;
        this.mEventId = UUID.randomUUID().toString();
    }

    public String getEventId() {
        return this.mEventId;
    }

    public void onWakeupEvent(long j, String str, String str2, int i) {
        if (this.mWakeupCallback != null) {
            this.mWakeupCallback.onWakeup(j, str, str2, i);
        } else {
            LogUtils.d(TAG, "onWakeupEvent , wakeupCallback == null ,no onWakeup");
        }
    }

    public boolean hitWord(String str) {
        if (this.mSceneWords == null) {
            return false;
        }
        Iterator<Map.Entry<String, Set<WakeUpWord>>> it = this.mSceneWords.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<WakeUpWord> it2 = it.next().getValue().iterator();
            while (it2.hasNext()) {
                if (it2.next().getWord().equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public String getIndicationByWord(String str) {
        if (TextUtils.isEmpty(str) || this.mSceneWords == null) {
            return str;
        }
        for (Map.Entry<String, Set<WakeUpWord>> entry : this.mSceneWords.entrySet()) {
            Iterator<WakeUpWord> it = entry.getValue().iterator();
            while (it.hasNext()) {
                if (it.next().getWord().equals(str)) {
                    return entry.getKey();
                }
            }
        }
        return str;
    }

    public Set<WakeUpWord> getWordSet() {
        HashSet hashSet = new HashSet();
        if (this.mSceneWords != null) {
            Iterator<Map.Entry<String, Set<WakeUpWord>>> it = this.mSceneWords.entrySet().iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().getValue());
            }
        }
        return hashSet;
    }

    private boolean isValidWord(String str) {
        int length;
        return !TextUtils.isEmpty(str) && (length = str.length()) >= 2 && length <= 10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mEventId != null && this.mEventId.equals(((WakeUpEvent) obj).mEventId);
    }

    public int hashCode() {
        return 527 + (this.mEventId == null ? 0 : this.mEventId.hashCode());
    }

    public String toString() {
        return "WakeUpEvent{eventId='" + this.mEventId + "', sceneWords=" + this.mSceneWords + ", wakeupCallback=" + this.mWakeupCallback + '}';
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Serializer implements JsonSerializer<WakeUpEvent> {
        @Override // com.google.gson.JsonSerializer
        public JsonElement serialize(WakeUpEvent wakeUpEvent, Type type, JsonSerializationContext jsonSerializationContext) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("eventId", wakeUpEvent.mEventId);
            JsonObject jsonObject2 = new JsonObject();
            if (wakeUpEvent != null && wakeUpEvent.mSceneWords != null) {
                for (Map.Entry entry : wakeUpEvent.mSceneWords.entrySet()) {
                    JsonArray jsonArray = new JsonArray();
                    Iterator it = ((Set) entry.getValue()).iterator();
                    while (it.hasNext()) {
                        jsonArray.add(((WakeUpWord) it.next()).getWord());
                    }
                    jsonObject2.add((String) entry.getKey(), jsonArray);
                }
            }
            jsonObject.add("sceneWords", jsonObject2);
            jsonObject.add("sceneWords_v2", jsonSerializationContext.serialize(wakeUpEvent.mSceneWords));
            return jsonObject;
        }
    }
}
