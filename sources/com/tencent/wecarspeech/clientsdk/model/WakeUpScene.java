package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.exceptions.DuplicatedWakeupWordException;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.utils.GsonUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class WakeUpScene {
    private static final String TAG = "WakeUpScene";
    private int disableState;
    private Set<WakeUpEvent> mEventSet = Collections.newSetFromMap(new ConcurrentHashMap());
    private String mSceneId = UUID.randomUUID().toString();

    public String getSceneId() {
        return this.mSceneId;
    }

    @Deprecated
    public HashSet<WakeUpEvent> getEventSet() {
        HashSet<WakeUpEvent> hashSet = new HashSet<>();
        hashSet.addAll(this.mEventSet);
        return hashSet;
    }

    public Set<WakeUpEvent> getEventSets() {
        return this.mEventSet;
    }

    public void addWakeupEvent(WakeUpEvent wakeUpEvent) {
        if (wakeUpEvent == null) {
            return;
        }
        Set<WakeUpWord> sceneWordSet = getSceneWordSet();
        Set<WakeUpWord> wordSet = wakeUpEvent.getWordSet();
        for (WakeUpWord wakeUpWord : sceneWordSet) {
            Iterator<WakeUpWord> it = wordSet.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(wakeUpWord.getWord(), it.next().getWord())) {
                    ExceptionCtrlManager.getInstance().throwException(new DuplicatedWakeupWordException("duplicated wakeup word ：" + GsonUtils.toJson(sceneWordSet)));
                    return;
                }
            }
        }
        this.mEventSet.add(wakeUpEvent);
    }

    public void addWakeupEvent(Set<WakeUpEvent> set) {
        if (set == null || set.size() == 0) {
            return;
        }
        if (set.contains(null)) {
            set.remove(null);
        }
        this.mEventSet.addAll(set);
    }

    public void removeWakeupEvent(String str) {
        if (TextUtils.isEmpty(str) || this.mEventSet.size() == 0) {
            return;
        }
        Iterator<WakeUpEvent> it = this.mEventSet.iterator();
        while (it.hasNext()) {
            if (it.next().getEventId().equals(str)) {
                it.remove();
            }
        }
    }

    public void removeWakeupEvent(Set<String> set) {
        if (set == null || set.size() == 0) {
            return;
        }
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            removeWakeupEvent(it.next());
        }
    }

    public Set<WakeUpWord> getSceneWordSet() {
        HashSet hashSet = new HashSet();
        Iterator<WakeUpEvent> it = this.mEventSet.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().getWordSet());
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mSceneId != null && this.mSceneId.equals(((WakeUpScene) obj).mSceneId);
    }

    public int hashCode() {
        return 527 + (this.mSceneId == null ? 0 : this.mSceneId.hashCode());
    }

    public boolean isActiveScene() {
        return this.disableState == 0;
    }

    public void disable() {
        this.disableState++;
    }

    public void enable() {
        if (this.disableState >= 1) {
            this.disableState--;
        }
    }

    public String toString() {
        return "WakeUpScene{mSceneId='" + this.mSceneId + "', mEventSet=" + this.mEventSet + ", disableState=" + this.disableState + '}';
    }
}
