package a.b.b;

import com.tencent.sceneengine.IQueryCallback;
import com.tencent.sceneengine.SceneEngine;
import com.tencent.sceneengine.model.MossInfo;
import com.tencent.taiutils.GsonUtils;
import com.tencent.taiutils.log.LogUtils;
import com.tencent.taiutils.network.HttpRequestMgr;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class k implements HttpRequestMgr.ICallback<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IQueryCallback f17a;

    public k(SceneEngine sceneEngine, IQueryCallback iQueryCallback) {
        this.f17a = iQueryCallback;
    }

    @Override // com.tencent.taiutils.network.HttpRequestMgr.ICallback
    public void onFailure(int i, String str) {
        LogUtils.e(SceneEngine.f42a, "queryMiniProgramsNearby onFailure i = " + i + " s = " + str);
        IQueryCallback iQueryCallback = this.f17a;
        if (iQueryCallback != null) {
            iQueryCallback.onFailed(i, str);
        }
    }

    @Override // com.tencent.taiutils.network.HttpRequestMgr.ICallback
    public void onResponse(int i, String str) {
        IQueryCallback iQueryCallback;
        int i2;
        String str2;
        String str3 = str;
        LogUtils.d(SceneEngine.f42a, "queryMiniProgramsNearby onResponse i = " + i + " s = " + str3);
        if (str3 != null) {
            JSONObject jSONObject = null;
            try {
                jSONObject = new JSONObject(str3);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (jSONObject != null) {
                List<MossInfo> list = (List) GsonUtils.mGson.fromJson(jSONObject.optString("data"), new j(this).getType());
                IQueryCallback iQueryCallback2 = this.f17a;
                if (iQueryCallback2 != null) {
                    iQueryCallback2.onSuccess(i, list);
                    return;
                }
                return;
            }
            iQueryCallback = this.f17a;
            if (iQueryCallback == null) {
                return;
            }
            i2 = 101;
            str2 = "msg parse error";
        } else {
            iQueryCallback = this.f17a;
            if (iQueryCallback == null) {
                return;
            }
            i2 = 102;
            str2 = "empty result";
        }
        iQueryCallback.onFailed(i2, str2);
    }
}
