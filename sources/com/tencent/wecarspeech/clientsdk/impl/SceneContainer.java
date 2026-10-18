package com.tencent.wecarspeech.clientsdk.impl;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalSceneException;
import com.tencent.wecarspeech.clientsdk.model.SubWakeupScene;
import com.tencent.wecarspeech.clientsdk.model.WakeUpEvent;
import com.tencent.wecarspeech.clientsdk.model.WakeUpScene;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneContainer {
    private volatile WakeUpScene mSceneWakeup;
    private volatile WakeUpScene mSystemWakeup = new WakeUpScene();
    private volatile WakeUpScene mAppWakeup = new WakeUpScene();
    private volatile Set<SubWakeupScene> mSubSceneWakeupSet = Collections.newSetFromMap(new ConcurrentHashMap());

    public WakeUpScene getSystemWakeup() {
        return this.mSystemWakeup;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WakeUpScene getAppWakeup() {
        return this.mAppWakeup;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WakeUpScene getSceneWakeup() {
        return this.mSceneWakeup;
    }

    public Set<SubWakeupScene> getSubSceneWakeupSet() {
        return this.mSubSceneWakeupSet;
    }

    public WakeUpScene getSceneById(String str) {
        for (SubWakeupScene subWakeupScene : this.mSubSceneWakeupSet) {
            if (subWakeupScene.getSceneId().equals(str)) {
                return subWakeupScene;
            }
        }
        if (this.mSceneWakeup != null && this.mSceneWakeup.getSceneId().equals(str)) {
            return this.mSceneWakeup;
        }
        if (this.mAppWakeup.getSceneId().equals(str)) {
            return this.mAppWakeup;
        }
        if (this.mSystemWakeup.getSceneId().equals(str)) {
            return this.mSystemWakeup;
        }
        return null;
    }

    public void registerAppWakeupEvent(@NonNull WakeUpEvent wakeUpEvent) {
        if (wakeUpEvent == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("event cannot be null"));
        } else {
            this.mAppWakeup.addWakeupEvent(wakeUpEvent);
        }
    }

    public void unregisterAppWakeupEvent(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventId cannot be null"));
        } else {
            this.mAppWakeup.removeWakeupEvent(str);
        }
    }

    public boolean registerSceneWakeupEvent(@NonNull String str, @NonNull WakeUpEvent wakeUpEvent) {
        WakeUpScene sceneById = getSceneById(str);
        if (sceneById == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("scene : " + str + " does not exist"));
            return false;
        }
        sceneById.addWakeupEvent(wakeUpEvent);
        return true;
    }

    public boolean unregisterSceneWakeupEvent(@NonNull String str, @NonNull String str2) {
        WakeUpScene sceneById = getSceneById(str);
        if (sceneById == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("scene : " + str + " does not exist"));
            return false;
        }
        sceneById.removeWakeupEvent(str2);
        return true;
    }

    public boolean registerSceneWakeupEvent(@NonNull String str, @NonNull Set<WakeUpEvent> set) {
        WakeUpScene sceneById = getSceneById(str);
        if (sceneById == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("scene : " + str + " does not exist"));
            return false;
        }
        sceneById.addWakeupEvent(set);
        return true;
    }

    public boolean unregisterSceneWakeupEvent(@NonNull String str, @NonNull Set<String> set) {
        WakeUpScene sceneById = getSceneById(str);
        if (sceneById == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("scene : " + str + " does not exist"));
            return false;
        }
        sceneById.removeWakeupEvent(set);
        return true;
    }

    public void registerSysWakeupEvent(@NonNull WakeUpEvent wakeUpEvent) {
        if (wakeUpEvent == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("event cannot be null"));
        } else {
            this.mSystemWakeup.addWakeupEvent(wakeUpEvent);
        }
    }

    public void unregisterSysWakeupEvent(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("eventId cannot be null"));
        } else {
            this.mSystemWakeup.removeWakeupEvent(str);
        }
    }

    public String registerWakeupScene(@NonNull WakeUpScene wakeUpScene) {
        if (this.mSceneWakeup != null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSceneException("you should unregister former scene!"));
            return "";
        }
        if (wakeUpScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("scene cannot be null"));
            return "";
        }
        this.mSceneWakeup = wakeUpScene;
        return wakeUpScene.getSceneId();
    }

    public void unregisterWakeupScene() {
        this.mSceneWakeup = null;
    }

    public String registerSubWakeupScene(@NonNull SubWakeupScene subWakeupScene) {
        if (subWakeupScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("subWakeupScene cannot be null"));
            return "";
        }
        if (this.mSceneWakeup == null || !this.mSceneWakeup.getSceneId().equals(subWakeupScene.getSuperSceneId())) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalSceneException("super scene has already been unregistered!"));
            return "";
        }
        this.mSubSceneWakeupSet.add(subWakeupScene);
        if (subWakeupScene.isExclusive()) {
            this.mSceneWakeup.disable();
        }
        return subWakeupScene.getSceneId();
    }

    public String registerHighPriorityScene(@NonNull SubWakeupScene subWakeupScene) {
        if (subWakeupScene == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("subWakeupScene cannot be null"));
            return "";
        }
        this.mSubSceneWakeupSet.add(subWakeupScene);
        return subWakeupScene.getSceneId();
    }

    public void unRegisterHighPriorityScene(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        Iterator<SubWakeupScene> it = this.mSubSceneWakeupSet.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getSceneId())) {
                it.remove();
            }
        }
    }

    public void unregisterSubWakeupScene(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("sceneId cannot be null"));
            return;
        }
        if (this.mSubSceneWakeupSet.size() == 0) {
            return;
        }
        Iterator<SubWakeupScene> it = this.mSubSceneWakeupSet.iterator();
        while (it.hasNext()) {
            SubWakeupScene next = it.next();
            if (str.equals(next.getSceneId())) {
                it.remove();
                if (next.isExclusive() && this.mSceneWakeup != null && this.mSceneWakeup.getSceneId().equals(next.getSuperSceneId())) {
                    this.mSceneWakeup.enable();
                }
            }
        }
    }

    public void unregisterAllSubWakeupScene() {
        this.mSubSceneWakeupSet.clear();
    }
}
