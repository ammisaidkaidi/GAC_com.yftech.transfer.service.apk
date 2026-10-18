package com.yftech.transfer.navigation;

import com.yftech.car.navigation.CarNavigationManeuver;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AbsNavigationAdapter implements INavigationAdapter {
    private OnNavigationListener mOnNavigationListener;
    OnNavigationListener mOnNavigationListenerControl = new OnNavigationListener(this);
    private boolean mIsStop = true;

    @Override // com.yftech.transfer.navigation.INavigationAdapter
    public void start() {
        this.mIsStop = false;
    }

    @Override // com.yftech.transfer.navigation.INavigationAdapter
    public void stop() {
        this.mIsStop = true;
    }

    public void setOnNavigationListener(OnNavigationListener onNavigationListener) {
        this.mOnNavigationListener = onNavigationListener;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class OnNavigationListener {
        private WeakReference<AbsNavigationAdapter> mAbsNavigationAdapter;

        public OnNavigationListener() {
        }

        OnNavigationListener(AbsNavigationAdapter absNavigationAdapter) {
            this.mAbsNavigationAdapter = new WeakReference<>(absNavigationAdapter);
        }

        private OnNavigationListener getDispatchListener() {
            AbsNavigationAdapter absNavigationAdapter = this.mAbsNavigationAdapter.get();
            if (absNavigationAdapter == null || absNavigationAdapter.mIsStop) {
                return null;
            }
            return absNavigationAdapter.mOnNavigationListener;
        }

        public void onManeuverChanged(AbsNavigationAdapter absNavigationAdapter, CarNavigationManeuver carNavigationManeuver) {
            OnNavigationListener dispatchListener = getDispatchListener();
            if (dispatchListener != null) {
                dispatchListener.onManeuverChanged(absNavigationAdapter, carNavigationManeuver);
            }
        }
    }
}
