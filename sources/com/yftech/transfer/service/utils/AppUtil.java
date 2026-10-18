package com.yftech.transfer.service.utils;

import android.content.Context;
import android.content.Intent;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.utils.LogUtil;
import com.yftech.car.permission.CarPermission;
import com.yftech.transfer.phonelink.consumer.ExceptionConsumer;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.Manifest;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppUtil {
    public static void startHiCarUsbConnect(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.yftech.hicar");
        LogUtil.i("startHiCar:" + launchIntentForPackage);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            launchIntentForPackage.putExtra("usb_connect", true);
            context.startActivity(launchIntentForPackage);
        }
    }

    public static void startHiCarWifiConnect(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.yftech.hicar");
        LogUtil.i("startHiCar:" + launchIntentForPackage);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            launchIntentForPackage.putExtra("usb_connect", false);
            context.startActivity(launchIntentForPackage);
        }
    }

    public static void startCarPlay(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(ActivityChangedReceiver.PKG_CARPLAY);
        LogUtil.i("startCarPlay:" + launchIntentForPackage);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(launchIntentForPackage);
        }
    }

    public static Disposable onThread(Consumer consumer) {
        return Observable.just(1).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(consumer, new ExceptionConsumer());
    }

    public static Disposable onUI(Consumer consumer) {
        return Observable.just(1).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }

    public static Disposable atTime(Consumer<Long> consumer, long j) {
        return Observable.timer(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }

    public static Disposable atTimeOnThread(Consumer<Long> consumer, long j) {
        return Observable.timer(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(consumer, new ExceptionConsumer());
    }

    public static Disposable interval(Consumer<Long> consumer, long j) {
        return Observable.interval(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }

    public static Disposable intervalOnThread(Consumer<Long> consumer, long j) {
        return Observable.interval(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(consumer, new ExceptionConsumer());
    }

    public static boolean isGetPhoneLinkPermission() {
        boolean checkPermission = CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink);
        LogUtil.i("isGetPhoneLinkPermission isGet:" + checkPermission);
        return checkPermission;
    }

    public static boolean isGetPhoneLinkMediaPermission() {
        boolean checkPermission = CarPermission.checkPermission(CarTransferApplication.context, Manifest.permission.phonelink);
        LogUtil.i("isGetPhoneLinkMediaPermission isGet:" + checkPermission);
        return checkPermission;
    }
}
