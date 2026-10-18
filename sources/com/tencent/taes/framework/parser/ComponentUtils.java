package com.tencent.taes.framework.parser;

import android.support.annotation.Keep;
import com.tencent.taes.framework.parser.ComponentConfigInfo;
import com.tencent.taes.util.config.ConfigInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ComponentUtils {
    public static List<ComponentConfigInfo> parseConfig(ConfigInfo configInfo) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        ArrayList<Map<String, Object>> mapArrayList = configInfo.getMapArrayList(ConfigConstant.CONFIG_KEY_MODULES);
        if (mapArrayList == null || mapArrayList.size() == 0) {
            return arrayList;
        }
        int size = mapArrayList.size();
        for (int i = 0; i < size; i++) {
            Map<String, Object> map = mapArrayList.get(i);
            if (map != null) {
                String str = (String) map.get("name");
                String str2 = map.containsKey(ConfigConstant.CONFIG_KEY_LC_CLS_NAME) ? (String) map.get(ConfigConstant.CONFIG_KEY_LC_CLS_NAME) : "";
                String str3 = map.containsKey(ConfigConstant.CONFIG_KEY_APP_LC_CLS) ? (String) map.get(ConfigConstant.CONFIG_KEY_APP_LC_CLS) : "";
                String str4 = map.containsKey("desc") ? (String) map.get("desc") : "";
                String str5 = map.containsKey("type") ? (String) map.get("type") : "";
                boolean booleanValue = map.containsKey(ConfigConstant.CONFIG_KEY_BOOTCOMPLETE) ? ((Boolean) map.get(ConfigConstant.CONFIG_KEY_BOOTCOMPLETE)).booleanValue() : false;
                boolean booleanValue2 = map.containsKey(ConfigConstant.CONFIG_KEY_NECESSARY) ? ((Boolean) map.get(ConfigConstant.CONFIG_KEY_NECESSARY)).booleanValue() : true;
                boolean booleanValue3 = map.containsKey(ConfigConstant.CONFIG_KEY_PERSISTENT) ? ((Boolean) map.get(ConfigConstant.CONFIG_KEY_PERSISTENT)).booleanValue() : true;
                boolean booleanValue4 = map.containsKey(ConfigConstant.CONFIG_KEY_PARALLEL) ? ((Boolean) map.get(ConfigConstant.CONFIG_KEY_PARALLEL)).booleanValue() : false;
                String str6 = map.containsKey(ConfigConstant.CONFIG_KEY_ACTION_NAME) ? (String) map.get(ConfigConstant.CONFIG_KEY_ACTION_NAME) : "";
                ComponentConfigInfo componentConfigInfo = new ComponentConfigInfo();
                componentConfigInfo.setName(str);
                componentConfigInfo.setDesc(str4);
                componentConfigInfo.setType(str5);
                componentConfigInfo.setLifecycleImpCls(str2);
                componentConfigInfo.setApplicationApiImplCls(str3);
                componentConfigInfo.setBootCompleteLoad(booleanValue);
                componentConfigInfo.setNecessaryLoad(booleanValue2);
                componentConfigInfo.setParallelLoad(booleanValue4);
                componentConfigInfo.setPersistent(booleanValue3);
                componentConfigInfo.setActionName(str6);
                if (map.containsKey(ConfigConstant.CONFIG_KEY_SUPPORT_FEATURES) && (jSONArray = (JSONArray) map.get(ConfigConstant.CONFIG_KEY_SUPPORT_FEATURES)) != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i2);
                            ComponentConfigInfo.SupportFeaturesBean supportFeaturesBean = new ComponentConfigInfo.SupportFeaturesBean();
                            supportFeaturesBean.setApi(jSONObject.optString(ConfigConstant.CONFIG_KEY_SUPPORT_FEATURES_API));
                            supportFeaturesBean.setApiImpl(jSONObject.optString(ConfigConstant.CONFIG_KEY_SUPPORT_FEATURES_API_IMPL));
                            supportFeaturesBean.setBinderName(jSONObject.optString(ConfigConstant.CONFIG_KEY_SUPPORT_FEATURES_BINDER));
                            arrayList2.add(supportFeaturesBean);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                    componentConfigInfo.setSupportFeatures(arrayList2);
                }
                if (map.containsKey(ConfigConstant.CONFIG_KEY_CONNECT_NAMES)) {
                    try {
                        JSONArray jSONArray2 = (JSONArray) map.get(ConfigConstant.CONFIG_KEY_CONNECT_NAMES);
                        if (jSONArray2 != null) {
                            String[] strArr = new String[jSONArray2.length()];
                            for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                                strArr[i3] = jSONArray2.getString(i3);
                            }
                            componentConfigInfo.setConnectPriorityPkgNames(strArr);
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> getServerComponents(ConfigInfo configInfo) {
        List<ComponentConfigInfo> parseConfig = parseConfig(configInfo);
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : parseConfig) {
            if (componentConfigInfo.isServerComponent()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> getNecessaryServerComponents(ConfigInfo configInfo) {
        List<ComponentConfigInfo> parseConfig = parseConfig(configInfo);
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : parseConfig) {
            if (componentConfigInfo.isServerComponent() && componentConfigInfo.isNecessaryLoad()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> getBootCompleteServerComponents(ConfigInfo configInfo) {
        List<ComponentConfigInfo> parseConfig = parseConfig(configInfo);
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : parseConfig) {
            if (componentConfigInfo.isServerComponent() && componentConfigInfo.isBootCompleteLoad()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> getLocalComponents(ConfigInfo configInfo) {
        List<ComponentConfigInfo> parseConfig = parseConfig(configInfo);
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : parseConfig) {
            if (componentConfigInfo.isLocalComponent()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> filterServerComponents(List<ComponentConfigInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : list) {
            if (componentConfigInfo.isServerComponent()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> filterLocalComponents(List<ComponentConfigInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : list) {
            if (componentConfigInfo.isLocalComponent()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }

    public static List<ComponentConfigInfo> filterNecessaryServerComponents(List<ComponentConfigInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (ComponentConfigInfo componentConfigInfo : list) {
            if (componentConfigInfo.isNecessaryLoad() && componentConfigInfo.isServerComponent()) {
                arrayList.add(componentConfigInfo);
            }
        }
        return arrayList;
    }
}
