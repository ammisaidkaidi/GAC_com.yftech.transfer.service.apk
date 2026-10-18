package com.tencent.wecarbase.config.def;

import android.content.Context;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.config.IDeviceConfig;
import com.tencent.wecarbase.utils.PackageUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class DeviceConfig implements IDeviceConfig {
    private static final String TAG = "DeviceConfig";

    @Override // com.tencent.wecarbase.config.IDeviceConfig
    public Map<String, String> collectDeviceIds() {
        Context context = ContextHolder.getContext();
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("wifiMac", PackageUtils.getWifiMacAddress(context));
        } catch (Exception e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
        try {
            hashMap.put("androidId", PackageUtils.getAndroidId());
        } catch (Exception e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
        }
        try {
            hashMap.put("cid", PackageUtils.getCID());
        } catch (Exception e3) {
            Log.e(TAG, Log.getStackTraceString(e3));
        }
        try {
            hashMap.put("phoneNum", PackageUtils.getPhoneNum());
        } catch (Exception e4) {
            Log.e(TAG, Log.getStackTraceString(e4));
        }
        try {
            hashMap.put("imei", PackageUtils.getImeiNum());
        } catch (Exception e5) {
            Log.e(TAG, Log.getStackTraceString(e5));
        }
        try {
            hashMap.put("imsi", PackageUtils.getImsiNum());
        } catch (Exception e6) {
            Log.e(TAG, Log.getStackTraceString(e6));
        }
        try {
            hashMap.put("iccid", PackageUtils.getICCID(context));
        } catch (Exception e7) {
            Log.e(TAG, Log.getStackTraceString(e7));
        }
        try {
            hashMap.put(DeviceHelper.BUILD_BRAND, PackageUtils.getBrand());
        } catch (Exception e8) {
            Log.e(TAG, Log.getStackTraceString(e8));
        }
        try {
            hashMap.put(DeviceHelper.BUILD_SERIAL, PackageUtils.getSerial());
        } catch (Exception e9) {
            Log.e(TAG, Log.getStackTraceString(e9));
        }
        try {
            hashMap.put(DeviceHelper.BUILD_MANUFACTURER, PackageUtils.getManufacturer());
        } catch (Exception e10) {
            Log.e(TAG, Log.getStackTraceString(e10));
        }
        return hashMap;
    }
}
