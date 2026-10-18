package a.b.a.b;

import android.util.SparseArray;
import com.tencent.scenebizsdk.model.SceneMsg;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray<b> f3a = new SparseArray<>();

    static {
        c.class.getSimpleName();
    }

    public c() {
        a aVar = new a();
        this.f3a.put(3, aVar);
        this.f3a.put(4, aVar);
        this.f3a.put(8, aVar);
        this.f3a.put(9, aVar);
    }

    public SceneMsg a(String str, String str2, long j) {
        try {
            SceneMsg sceneMsg = new SceneMsg();
            JSONObject jSONObject = new JSONObject(new JSONObject(str).optString("operationMessage"));
            sceneMsg.msgId = str2;
            sceneMsg.msgTime = j;
            JSONObject jSONObject2 = jSONObject.getJSONObject("operationMode");
            sceneMsg.modeContainer = jSONObject2.optString("modeContainer");
            sceneMsg.modeName = jSONObject.getJSONObject("extendInfo").optString("modeName");
            JSONObject jSONObject3 = jSONObject2.getJSONArray("modeViews").getJSONObject(0);
            int i = jSONObject3.getInt("modeType");
            sceneMsg.modeType = i;
            b bVar = this.f3a.get(i);
            if (bVar != null) {
                return ((a) bVar).a(jSONObject3.getString("modeData"), sceneMsg);
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
