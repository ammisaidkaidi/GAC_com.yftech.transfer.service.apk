package com.yftech.transfer.navigation;

import android.content.Context;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.yftech.car.navigation.CarNavigationManeuver;
import com.yftech.car.navigation.ICarNavigationCallback;
import com.yftech.car.navigation.ICarNavigationService;
import com.yftech.transfer.navigation.AbsNavigationAdapter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarNavigationService extends ICarNavigationService.Stub {
    public static final String BAIDU_MAP = "baidu.map";
    public static final String GAODE_MAP = "gaode.map";
    private static final String TAG = "CarNavigationService";
    public static final String TENCENT_MAP = "tencent.map";
    private Context mContext;
    private AbsNavigationAdapter mCurStartNavigation;
    private final RemoteCallbackList<ICarNavigationCallback> mCarNavigationCallbacks = new RemoteCallbackList<>();
    private final Map<String, AbsNavigationAdapter> mNavigationAdapterMap = new HashMap();
    private NavigationListener mNavigationListener = new NavigationListener();

    public void goCompany() {
    }

    public void goHome() {
    }

    public void goPoiDetailPage(String str, String str2, double d, double d2) throws RemoteException {
    }

    public void openNaviApp() {
    }

    public void searchKeyword(String str) {
    }

    public CarNavigationService(Context context) {
        this.mContext = context;
    }

    public void addNavigation(AbsNavigationAdapter absNavigationAdapter) {
        if (this.mNavigationAdapterMap.containsKey(absNavigationAdapter.getPackageName())) {
            return;
        }
        this.mNavigationAdapterMap.put(absNavigationAdapter.getPackageName(), absNavigationAdapter);
        absNavigationAdapter.init(this.mContext);
        absNavigationAdapter.setOnNavigationListener(this.mNavigationListener);
    }

    public void removeNavigation(AbsNavigationAdapter absNavigationAdapter) {
        if (this.mNavigationAdapterMap.containsKey(absNavigationAdapter.getPackageName())) {
            if (this.mCurStartNavigation == absNavigationAdapter) {
                this.mCurStartNavigation.setOnNavigationListener(null);
                this.mCurStartNavigation.release();
                this.mCurStartNavigation = null;
            }
            this.mNavigationAdapterMap.remove(absNavigationAdapter.getPackageName());
        }
    }

    public void onMapAppStart(AbsNavigationAdapter absNavigationAdapter) {
        if (this.mNavigationAdapterMap.containsKey(absNavigationAdapter.getPackageName())) {
            if (this.mCurStartNavigation != null && this.mCurStartNavigation != absNavigationAdapter) {
                this.mNavigationAdapterMap.get(this.mCurStartNavigation.getPackageName()).stop();
            }
            this.mNavigationAdapterMap.get(absNavigationAdapter.getPackageName()).start();
            this.mCurStartNavigation = absNavigationAdapter;
        }
    }

    public void registerCarNavigationCallback(ICarNavigationCallback iCarNavigationCallback) throws RemoteException {
        synchronized (this.mCarNavigationCallbacks) {
            this.mCarNavigationCallbacks.register(iCarNavigationCallback);
        }
    }

    public void unregisterCarNavigationCallback(ICarNavigationCallback iCarNavigationCallback) throws RemoteException {
        synchronized (this.mCarNavigationCallbacks) {
            this.mCarNavigationCallbacks.unregister(iCarNavigationCallback);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class NavigationListener extends AbsNavigationAdapter.OnNavigationListener {
        private NavigationListener() {
        }

        @Override // com.yftech.transfer.navigation.AbsNavigationAdapter.OnNavigationListener
        public void onManeuverChanged(AbsNavigationAdapter absNavigationAdapter, CarNavigationManeuver carNavigationManeuver) {
            Log.d(CarNavigationService.TAG, "onManeuverChanged, adapter:" + absNavigationAdapter.getPackageName() + ", info:" + carNavigationManeuver);
            if (carNavigationManeuver == null) {
                return;
            }
            synchronized (CarNavigationService.this.mCarNavigationCallbacks) {
                int beginBroadcast = CarNavigationService.this.mCarNavigationCallbacks.beginBroadcast();
                while (beginBroadcast != 0) {
                    beginBroadcast--;
                    try {
                        CarNavigationService.this.mCarNavigationCallbacks.getBroadcastItem(beginBroadcast).onManeuverChanged(carNavigationManeuver);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                CarNavigationService.this.mCarNavigationCallbacks.finishBroadcast();
            }
        }
    }

    protected void dump(@NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.println("=============car navigation service==================");
        printWriter.println("map list:");
        Iterator<String> it = this.mNavigationAdapterMap.keySet().iterator();
        while (it.hasNext()) {
            printWriter.println("\t" + it.next());
        }
        printWriter.println("current map: " + this.mCurStartNavigation);
    }
}
