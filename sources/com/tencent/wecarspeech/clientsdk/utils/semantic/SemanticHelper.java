package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import com.tencent.wecarspeech.clientsdk.utils.GsonUtils;
import com.tencent.wecarspeech.clientsdk.utils.semantic.Slot;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SemanticHelper {
    protected static final int SLOT_TYPE_CONFIRM = 5;
    protected static final int SLOT_TYPE_DATE = 0;
    protected static final int SLOT_TYPE_ENTITY = 1;
    protected static final int SLOT_TYPE_LOCATION = 2;
    protected static final int SLOT_TYPE_NUMBER = 3;
    protected static final int SLOT_TYPE_UNIT = 4;
    private static final String TAG = "SemanticHelper";
    private static Gson mGson;

    public static SemanticData parse(String str) {
        if (mGson == null) {
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.registerTypeAdapter(Slot.class, new SlotDeserializer());
            mGson = gsonBuilder.create();
        }
        return (SemanticData) mGson.fromJson(str, SemanticData.class);
    }

    public static <T> T parseWithDataAndCommonCard(String str, Type type) {
        if (mGson == null) {
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.registerTypeAdapter(Slot.class, new SlotDeserializer());
            mGson = gsonBuilder.create();
        }
        return (T) mGson.fromJson(str, type);
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class SlotDeserializer implements JsonDeserializer<Slot> {
        private SlotDeserializer() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.JsonDeserializer
        public Slot deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
            int asInt = jsonElement.getAsJsonObject().get("slot_struct").getAsInt();
            Type type2 = new TypeToken<Slot<Slot.Entity>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.1
            }.getType();
            if (asInt == 0) {
                type2 = new TypeToken<Slot<Slot.Date>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.2
                }.getType();
            } else {
                switch (asInt) {
                    case 2:
                        type2 = new TypeToken<Slot<Slot.Location>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.3
                        }.getType();
                        break;
                    case 3:
                        type2 = new TypeToken<Slot<Slot.Number>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.4
                        }.getType();
                        break;
                    case 4:
                        type2 = new TypeToken<Slot<Slot.Unit>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.5
                        }.getType();
                        break;
                    case 5:
                        type2 = new TypeToken<Slot<Slot.Confirm>>() { // from class: com.tencent.wecarspeech.clientsdk.utils.semantic.SemanticHelper.SlotDeserializer.6
                        }.getType();
                        break;
                }
            }
            return (Slot) GsonUtils.fromJson(jsonElement, type2);
        }
    }

    @Keep
    public static TskProtocol getV3Protocol(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("data");
            if (jSONObject.getJSONObject("controlInfo") != null) {
                return (TskProtocol) GsonUtils.fromJson(jSONObject.toString(), TskProtocol.class);
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Keep
    @Nullable
    public static String getV3ProtocolTextContent(TskProtocol tskProtocol) {
        ListItem listItem;
        if (tskProtocol.getControlInfo() == null || tskProtocol.getListItems() == null || tskProtocol.getListItems().isEmpty() || (listItem = tskProtocol.getListItems().get(0)) == null) {
            return null;
        }
        return listItem.getTextContent();
    }

    @Keep
    @Nullable
    public static String getV3ProtocolTitle(TskProtocol tskProtocol) {
        ListItem listItem;
        if (tskProtocol.getControlInfo() == null || tskProtocol.getListItems() == null || tskProtocol.getListItems().isEmpty() || (listItem = tskProtocol.getListItems().get(0)) == null) {
            return null;
        }
        return listItem.getTitle();
    }

    @Keep
    @Nullable
    public static Object getV3ProtocolSelfData(TskProtocol tskProtocol) {
        ListItem listItem;
        if (tskProtocol.getControlInfo() == null || tskProtocol.getListItems() == null || tskProtocol.getListItems().isEmpty() || (listItem = tskProtocol.getListItems().get(0)) == null) {
            return null;
        }
        return listItem.getSelfData();
    }

    @Keep
    @Nullable
    public static String getV3ProtocolAudioPlayModeAndUrls(TskProtocol tskProtocol, ArrayList<String> arrayList) {
        if (tskProtocol.getControlInfo() == null) {
            return null;
        }
        if (tskProtocol.getListItems() != null && !tskProtocol.getListItems().isEmpty()) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            Iterator<ListItem> it = tskProtocol.getListItems().iterator();
            while (it.hasNext()) {
                String audioUrl = getAudioUrl(it.next().getAudio());
                if (!TextUtils.isEmpty(audioUrl)) {
                    arrayList.add(audioUrl);
                }
            }
        }
        if (tskProtocol.getGlobalInfo() != null) {
            return tskProtocol.getGlobalInfo().getPlayMode();
        }
        return null;
    }

    private static String getAudioUrl(Audio audio) {
        if (audio == null || audio.getStream() == null) {
            return null;
        }
        return audio.getStream().getUrl();
    }
}
