package com.tencent.wecarbase.taiupdate.server;

import android.os.RemoteException;
import com.tencent.wecarbase.taiupdate.ITaiUpdateListener;
import com.tencent.wecarbase.taiupdate.ITaiUpdateService;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaiUpdateServiceImpl extends ITaiUpdateService.Stub {
    private static final String TAG = "TaiUpdateServiceImpl";

    @Override // com.tencent.wecarbase.taiupdate.ITaiUpdateService
    public void syncVersionInfo(Map map, ITaiUpdateListener iTaiUpdateListener) throws RemoteException {
        LogUtils.d(TAG, "syncVersionInfo  ext : " + map + "  --ITaiUpdateListener :" + iTaiUpdateListener);
        if (map != null) {
            JSONObject jSONObject = new JSONObject(map);
            LogUtils.d(TAG, "syncVersionInfo jsonObject : " + jSONObject.toString());
        }
        if (iTaiUpdateListener != null) {
            iTaiUpdateListener.onResult("we are connected my version is:3.1.0.474");
        }
    }
}
