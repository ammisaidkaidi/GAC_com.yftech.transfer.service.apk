package com.tencent.taes.impl.open;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.taes.TaesSDKHelper;
import com.tencent.taes.api.open.IOpenApi;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.bean.IPCEvent;
import com.tencent.taes.framework.interfaces.IEventListener;
import com.tencent.taes.framework.parser.ConfigConstant;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.open.OpenApiConsts;
import com.tencent.taes.util.config.ConfigManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class OpenApiImpl extends AbstractApi implements IOpenApi {
    public static final String TAG = "OpenApiImp";
    private String mIntentScheme = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_URI_SCHEME);
    private String mIntentAction = ConfigManager.getInstance().getConfigInfo(TaesSDKHelper.getContext(), TaesSDKHelper.getConfigFileName()).getString(ConfigConstant.INTENT_API_ACTION);

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void openApp() {
        Log.d(TAG, "openApp");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://"));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void openApp(int i) {
        Log.d(TAG, "openApp tab:" + i);
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://"));
        intent.putExtra("launchTab", i);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void exitApp(boolean z) {
        Log.d(TAG, "exitApp : showDialog ——>> " + z);
        if (z) {
            Intent intent = new Intent(this.mIntentAction);
            intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.EXIT_APP + "?"));
            intent.putExtra(OpenApiConsts.Key.SHOW_DIALOG, z);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            TaesSDKHelper.getContext().startActivity(intent);
            return;
        }
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.EXIT_APP));
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public String getAppVersionName() {
        PackageInfo packageInfo;
        try {
            packageInfo = TaesSDKHelper.getContext().getPackageManager().getPackageInfo("com.tencent.wecar", 0);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "com.tencent.wecar is not install.");
            try {
                packageInfo = TaesSDKHelper.getContext().getPackageManager().getPackageInfo("com.tencent.wecarnavi", 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.e(TAG, "com.tencent.wecarnavi is not install.");
                packageInfo = null;
            }
        }
        if (packageInfo == null) {
            Log.e(TAG, "getAppVersionName failed!!!");
            return "";
        }
        return packageInfo.versionName;
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public long getAppVersionCode() {
        PackageInfo packageInfo;
        try {
            packageInfo = TaesSDKHelper.getContext().getPackageManager().getPackageInfo("com.tencent.wecar", 0);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "com.tencent.wecar is not install.");
            try {
                packageInfo = TaesSDKHelper.getContext().getPackageManager().getPackageInfo("com.tencent.wecarnavi", 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.e(TAG, "com.tencent.wecarnavi is not install.");
                packageInfo = null;
            }
        }
        if (packageInfo == null) {
            Log.e(TAG, "getAppVersionCode failed!!!");
            return -1L;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Log.e(TAG, "versionCode: " + packageInfo.getLongVersionCode());
            return packageInfo.getLongVersionCode();
        }
        Log.e(TAG, "versionCode: " + packageInfo.versionCode);
        return packageInfo.versionCode;
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void showNavigationBar(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString(OpenApiConsts.Key.APP_EVENT_NAME, OpenApiConsts.Key.SHOW_NAVIGATION_BAR);
        bundle.putBoolean(OpenApiConsts.Key.SHOW_NAVIGATION_BAR, z);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.APP_EVENT, bundle));
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void showStatusBar(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString(OpenApiConsts.Key.APP_EVENT_NAME, OpenApiConsts.Key.SHOW_STATUS_BAR);
        bundle.putBoolean(OpenApiConsts.Key.SHOW_STATUS_BAR, z);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.APP_EVENT, bundle));
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void joinTeamTrip(boolean z, String str) {
        Log.d(TAG, "joinTeamTrip,isJoinLastTeamTrip: " + z + " teamTripId: " + str);
        if (!z && TextUtils.isEmpty(str)) {
            Log.d(TAG, "teamTripId is empty");
            return;
        }
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.EXTERNAL_JOIN_TEAMTRIP));
        intent.putExtra(OpenApiConsts.Key.IS_JOIN_LAST_TEAMTRIP, z);
        intent.putExtra(OpenApiConsts.Key.TEAMTRIP_ID, str);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void createTeamTrip() {
        Log.d(TAG, "createTeamTrip");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.EXTERNAL_CREATE_TEAMTRIP));
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void exitTeamTrip(boolean z) {
        Log.d(TAG, "exitTeamTrip");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.EXTERNAL_EXIT_TEAMTRIP));
        intent.putExtra(OpenApiConsts.Key.IS_SHOW_CONFIRM_DIALOG, z);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void setTeamTripTarget(double d, double d2, String str, String str2) {
        Log.d(TAG, "setTeamTripTarget");
        Intent intent = new Intent(this.mIntentAction);
        intent.setData(Uri.parse(this.mIntentScheme + "://" + OpenApiConsts.Host.EXTERNAL_SET_TEAMTRIP_TARGET));
        intent.putExtra("latitude", d);
        intent.putExtra("longitude", d2);
        intent.putExtra(OpenApiConsts.Key.POI_NAME, str);
        intent.putExtra(OpenApiConsts.Key.POI_ADDRESS, str2);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        TaesSDKHelper.getContext().startActivity(intent);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void subscribe(String str, IEventListener iEventListener) {
        TAESFrameworkManager.getInstance().getEventDispatcher().subscribe(str, iEventListener);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void unsubscribe(String str, IEventListener iEventListener) {
        TAESFrameworkManager.getInstance().getEventDispatcher().unsubscribe(str, iEventListener);
    }

    @Override // com.tencent.taes.api.open.IOpenApi
    public void closePage(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(OpenApiConsts.Key.CLOSE_PAGE, str);
        TAESFrameworkManager.getInstance().getEventDispatcher().publish(new IPCEvent(OpenApiConsts.Host.PAGE_EVENT, bundle));
    }
}
