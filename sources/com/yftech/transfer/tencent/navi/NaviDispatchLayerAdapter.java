package com.yftech.transfer.tencent.navi;

import android.app.Presentation;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.tencent.taes.TaesSDK;
import com.tencent.taes.api.map.IMapApi;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarEtaInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarGuideInfo;
import com.tencent.taes.base.api.bean.infodispatcher.map.WeCarStartStopEvent;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnETAInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnGuideInfoListener;
import com.tencent.taes.remote.api.infodispatcher.listener.OnStartStopEventListener;
import com.tencent.taes.remote.api.map.MapSurfaceListener;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.yftech.transfer.service.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class NaviDispatchLayerAdapter implements OnStartStopEventListener, OnGuideInfoListener, OnETAInfoListener, TaesSDK.InitListener, SurfaceHolder.Callback, IServerConnectListener, MapSurfaceListener.OnMapContextListener {
    private static final String DISPLAY_SEC_SCREEN = "SecScreen";
    private static final int START_NAVI = 1;
    private static final int STOP_NAVI = 2;
    private static Context mContext;
    private static IMapApi mIMapApi;
    private static SurfaceView mMapSurfaceView;
    private static volatile Presentation mPresentation;
    private static NaviDispatchLayerAdapter NAVI_DISPATCH_LAYER_ADAPTER = new NaviDispatchLayerAdapter();
    private static boolean isInitSuccess = false;
    private static Handler mH = new Handler();
    private static Runnable mCheckRunnable = new Runnable() { // from class: com.yftech.transfer.tencent.navi.NaviDispatchLayerAdapter.1
        @Override // java.lang.Runnable
        public void run() {
        }
    };
    private boolean isNaviStart = false;
    private boolean isConnectedMap = false;
    private long mSurfaceId = -1;

    @Override // com.tencent.taes.remote.api.IServerConnectListener
    public void onConnected() {
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.listener.OnGuideInfoListener
    public void onGuideInfoChanged(WeCarGuideInfo weCarGuideInfo) {
    }

    @Override // com.tencent.taes.TaesSDK.InitListener
    public void onInitSuccess() {
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.listener.OnStartStopEventListener
    public void onStartStopEvent(WeCarStartStopEvent weCarStartStopEvent) {
    }

    private NaviDispatchLayerAdapter() {
    }

    private static void initMapSurface(Context context) {
        Display[] displays;
        if (mIMapApi == null) {
            mIMapApi = TaesSDK.getMapApi();
            mIMapApi.registerConnectListener(NAVI_DISPATCH_LAYER_ADAPTER);
        }
        if (mPresentation == null && (displays = ((DisplayManager) context.getSystemService(DeviceHelper.BUILD_DISPLAY)).getDisplays()) != null && displays.length > 1) {
            Display display = null;
            for (Display display2 : displays) {
                if (DISPLAY_SEC_SCREEN.equals(display2.getName())) {
                    display = display2;
                }
            }
            if (display != null) {
                mPresentation = new Presentation(context, display);
                mPresentation.setContentView(R.layout.car_map_surface_layout);
                mMapSurfaceView = (SurfaceView) mPresentation.findViewById(R.id.id_car_map_surface);
                mMapSurfaceView.getHolder().addCallback(NAVI_DISPATCH_LAYER_ADAPTER);
            } else {
                Log.e(NaviDispatchLayerAdapter.class.getSimpleName(), "the target dispay is null!!!!!");
            }
        }
        if (mPresentation == null || mPresentation.isShowing()) {
            return;
        }
        mPresentation.show();
    }

    public static void start(Context context) {
        mContext = context;
        mH.removeCallbacks(mCheckRunnable);
        mH.postDelayed(mCheckRunnable, 5000L);
    }

    @Override // com.tencent.taes.TaesSDK.InitListener
    public void onInitError(String str, int i) {
        PlatformAdapter.LOGW("NaviDispatchLayerAdapter TAESSDK init error ,onInitError:" + str + "," + i);
        isInitSuccess = false;
        mH.removeCallbacks(mCheckRunnable);
        mH.postDelayed(mCheckRunnable, 1000L);
    }

    @Override // com.tencent.taes.remote.api.infodispatcher.listener.OnETAInfoListener
    public void onETAInfoChanged(WeCarEtaInfo weCarEtaInfo) {
        PlatformAdapter.LOGI("onETAInfoChanged remainTimeInSecond:" + weCarEtaInfo.remainTimeInSecond + ",remainDisInMetre:" + weCarEtaInfo.remainDisInMetre + " pid: " + Binder.getCallingPid() + "," + Thread.currentThread().toString());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (mIMapApi != null) {
            mIMapApi.createSurface(surfaceHolder.getSurface(), 600, 480, 2, 60, NAVI_DISPATCH_LAYER_ADAPTER);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (mIMapApi == null || this.mSurfaceId == -1) {
            return;
        }
        mIMapApi.updateSurface(this.mSurfaceId, surfaceHolder.getSurface(), 600, 480, NAVI_DISPATCH_LAYER_ADAPTER);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (mIMapApi == null || this.mSurfaceId == -1) {
            return;
        }
        mIMapApi.onPause(this.mSurfaceId);
    }

    @Override // com.tencent.taes.remote.api.IServerConnectListener
    public void onDisConnected() {
        if (mIMapApi == null || this.mSurfaceId == -1) {
            return;
        }
        mIMapApi.removedSurface(this.mSurfaceId);
    }

    @Override // com.tencent.taes.remote.api.map.MapSurfaceListener.OnMapContextListener
    public void onResult(long j, boolean z) {
        this.mSurfaceId = j;
    }
}
