package a.b.a.b;

import android.support.annotation.NonNull;
import com.tencent.scenebizsdk.model.SceneMsg;
import com.tencent.scenebizsdk.model.widgets.ActionData;
import com.tencent.scenebizsdk.model.widgets.PicData;
import com.tencent.scenebizsdk.model.widgets.TextData;
import com.tencent.scenebizsdk.model.widgets.VoiData;
import com.tencent.sceneengine.model.Action;
import com.tencent.taes.remote.api.open.OpenApiConsts;
import com.tencent.taiutils.GsonUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class a implements b {
    static {
        a.class.getSimpleName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ActionData a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ActionData actionData = new ActionData();
        actionData.action = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("action");
        if (optJSONArray == null) {
            optJSONArray = jSONObject.optJSONArray(OpenApiConsts.Key.ACTIONS);
        }
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null && Action.ACTION_APP.equals(optJSONObject.optString("action"))) {
                    actionData.action.add(GsonUtils.mGson.fromJson(optJSONObject.optString("param"), com.tencent.scenebizsdk.model.widgets.Action.class));
                }
            }
        }
        return actionData;
    }

    public SceneMsg a(String str, @NonNull SceneMsg sceneMsg) {
        PicData picData;
        TextData textData;
        TextData textData2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject optJSONObject = jSONObject.optJSONObject("picView");
            VoiData voiData = null;
            if (optJSONObject != null) {
                picData = new PicData();
                picData.url = optJSONObject.optString("url");
            } else {
                picData = null;
            }
            sceneMsg.picView = picData;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("titleText");
            if (optJSONObject2 != null) {
                textData = new TextData();
                textData.text = optJSONObject2.optString("text");
            } else {
                textData = null;
            }
            sceneMsg.titleText = textData;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("subText");
            if (optJSONObject3 != null) {
                textData2 = new TextData();
                textData2.text = optJSONObject3.optString("text");
            } else {
                textData2 = null;
            }
            sceneMsg.subText = textData2;
            JSONObject optJSONObject4 = jSONObject.optJSONObject("voi");
            if (optJSONObject4 == null) {
                optJSONObject4 = jSONObject.optJSONObject("tts");
            }
            if (optJSONObject4 != null) {
                voiData = new VoiData();
                voiData.text = optJSONObject4.optString("text");
            }
            sceneMsg.voi = voiData;
            JSONObject optJSONObject5 = jSONObject.optJSONObject("okButton");
            if (optJSONObject5 == null) {
                optJSONObject5 = jSONObject.optJSONObject("modeCommon");
            }
            sceneMsg.okAction = a(optJSONObject5);
            sceneMsg.cancelAction = a(jSONObject.optJSONObject("cancelButton"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sceneMsg;
    }
}
