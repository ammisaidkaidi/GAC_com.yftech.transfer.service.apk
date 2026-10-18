package com.yftech.btphone.lib.callback;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.yftech.btphone.lib.sample.SampleApplication;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: /home/user/work/dex/classes.dex */
public class SampleLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    protected String TAG = "SampleLifecycleCallbacks";
    protected Deque<Activity> mActivityStack = new LinkedList();
    protected Context mContext;

    public SampleLifecycleCallbacks(Context context) {
        this.mContext = context;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
        log("onActivityCreated:" + activity.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        log("onActivityStarted:" + activity.toString());
        synchronized (this.mActivityStack) {
            if (!this.mActivityStack.contains(activity)) {
                this.mActivityStack.add(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        log("onActivityResumed:" + activity.toString());
        synchronized (this.mActivityStack) {
            if (!this.mActivityStack.contains(activity)) {
                this.mActivityStack.add(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
        log("onActivityPaused:" + activity.toString());
        synchronized (this.mActivityStack) {
            this.mActivityStack.remove(activity);
        }
        if (activity.getClass().getName().contains(getCallActivityName())) {
            log("onActivityPaused, sendMessageCheckPhoneWindow");
            SampleApplication.getInstance().getPhoneCallWindowManager().sendMessageCheckPhoneWindow(true, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
        log("onActivityStopped:" + activity.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        log("onActivitySaveInstanceState:" + activity.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        log("onActivityDestroyed:" + activity.toString());
        synchronized (this.mActivityStack) {
            this.mActivityStack.remove(activity);
        }
    }

    public boolean isContainsActivity(String str) {
        synchronized (this.mActivityStack) {
            Iterator<Activity> it = this.mActivityStack.iterator();
            while (it.hasNext()) {
                if (it.next().toString().contains(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean isContainsCallActivity() {
        return isContainsActivity(getCallActivityName());
    }

    public String getCallActivityName() {
        return SampleApplication.getInstance().getPhoneCallWindowManager().getCallActivityCls().getName();
    }

    protected void log(String str) {
        Log.d(this.TAG, str);
    }
}
