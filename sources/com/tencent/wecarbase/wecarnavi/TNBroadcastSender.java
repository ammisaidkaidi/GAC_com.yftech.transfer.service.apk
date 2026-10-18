package com.tencent.wecarbase.wecarnavi;

import android.os.Bundle;
import android.util.Log;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.wecarnavi.ExternalDefaultBroadcastKey;
import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TNBroadcastSender {
    private final String TAG;

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class LayzerHolder {
        private static final TNBroadcastSender sIntance = new TNBroadcastSender();

        private LayzerHolder() {
        }
    }

    private TNBroadcastSender() {
        this.TAG = TNBroadcastSender.class.getSimpleName();
    }

    public static TNBroadcastSender getInstance() {
        return LayzerHolder.sIntance;
    }

    public void exitNaviApp() {
        Log.d(this.TAG, "exitNaviApp");
        Bundle bundle = new Bundle();
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.KEY_TYPE, 1002);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.EXTRA_OPERA, 1);
        sendBroadcast(1002, bundle);
    }

    public void startNaviTo(String str, double d, double d2) {
        String packageName = ContextHolder.getContext().getPackageName();
        Bundle bundle = new Bundle();
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.KEY_TYPE, 1008);
        bundle.putString(ExternalDefaultBroadcastKey.KEY.SOURCE_APP, packageName);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.POITYPE, 0);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.RPTYPE, 0);
        bundle.putString(ExternalDefaultBroadcastKey.KEY.POINAME, str);
        bundle.putString(ExternalDefaultBroadcastKey.KEY.POIID, CarAppList.MediaPage.PAGE_FM);
        bundle.putString(ExternalDefaultBroadcastKey.KEY.POICLASS, CarAppList.MediaPage.PAGE_FM);
        bundle.putDouble(ExternalDefaultBroadcastKey.KEY.LAT, d);
        bundle.putDouble(ExternalDefaultBroadcastKey.KEY.LON, d2);
        bundle.putString(ExternalDefaultBroadcastKey.KEY.ADDRESS, str);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.COORD, 1);
        sendBroadcast(1008, bundle);
    }

    public void closeNavi(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.KEY_TYPE, 1003);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.EXTRA_OPERA, 1);
        bundle.putInt(ExternalDefaultBroadcastKey.KEY.EXTRA_EXIT_TYPE, !z ? 1 : 0);
        sendBroadcast(1003, bundle);
    }

    public void sendBroadcast(int i, Bundle bundle) {
        TASNaviSRActionDispatcher.getInstance().action(i, bundle);
    }
}
