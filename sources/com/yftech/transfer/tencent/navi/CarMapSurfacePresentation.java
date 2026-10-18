package com.yftech.transfer.tencent.navi;

import android.app.Presentation;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.yftech.transfer.service.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarMapSurfacePresentation extends Presentation {
    private SurfaceHolder mMapSurfaceHolder;
    private SurfaceView mMapSurfaceView;
    private ViewGroup mRootView;

    public static CarMapSurfacePresentation createCarPresentation(Context context, SurfaceHolder.Callback callback) {
        PlatformAdapter.LOGI("===========CarMapSurfacePresentation=================");
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DeviceHelper.BUILD_DISPLAY);
        PlatformAdapter.LOGI("CarMapSurfacePresentation：：：：：：：display size:" + displayManager.getDisplays().length);
        if (displayManager.getDisplays().length > 1) {
            return new CarMapSurfacePresentation(context, callback, displayManager.getDisplays()[2]);
        }
        return new CarMapSurfacePresentation(context, callback, displayManager.getDisplays()[0]);
    }

    public CarMapSurfacePresentation(Context context, SurfaceHolder.Callback callback, Display display) {
        super(context, display);
        this.mRootView = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.car_map_surface_layout, (ViewGroup) null);
        this.mMapSurfaceView = (SurfaceView) this.mRootView.findViewById(R.id.id_car_map_surface);
        this.mMapSurfaceHolder = this.mMapSurfaceView.getHolder();
        this.mMapSurfaceHolder.addCallback(callback);
        this.mRootView.addView(this.mMapSurfaceView);
        setContentView(this.mRootView);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        PlatformAdapter.LOGI("======CarMapSurfacePresentation::onCreate======");
        super.onCreate(bundle);
    }
}
