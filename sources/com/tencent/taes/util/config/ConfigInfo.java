package com.tencent.taes.util.config;

import android.support.annotation.Nullable;
import android.util.Log;
import com.tencent.taes.local.LocalCompConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class ConfigInfo {
    private static final String TAG = "ConfigInfo";
    private Map<String, Object> mMap = new HashMap();

    public ConfigInfo(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys != null) {
                if (!keys.hasNext()) {
                    return;
                }
                String next = keys.next();
                Log.d(TAG, "--key = " + next);
                this.mMap.put(next, jSONObject.get(next));
            }
        } catch (JSONException e) {
            Log.e(TAG, "Json parse fail!", e);
        }
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getInt(String str, int i) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return i;
        }
        Integer integer = ConfigUtils.toInteger(obj);
        if (integer == null) {
            integer = Integer.valueOf(i);
            configLogForInvalid(str, obj, "Int");
        }
        return integer.intValue();
    }

    @Nullable
    public String getString(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        String configUtils = ConfigUtils.toString(obj);
        if (configUtils == null) {
            configLogForInvalid(str, obj, "String");
        }
        return configUtils;
    }

    public String getString(String str, String str2) {
        String string = getString(str);
        return string == null ? str2 : string;
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return z;
        }
        Boolean bool = ConfigUtils.toBoolean(obj);
        if (bool == null) {
            bool = Boolean.valueOf(z);
            configLogForInvalid(str, obj, "boolean");
        }
        return bool.booleanValue();
    }

    public int[] getIntArray(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        int[] intArray = ConfigUtils.toIntArray(obj);
        if (intArray == null) {
            configLogForInvalid(str, obj, "intArray");
        }
        return intArray;
    }

    public ArrayList<Integer> getIntegerArrayList(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        ArrayList<Integer> intArrayList = ConfigUtils.toIntArrayList(obj);
        if (intArrayList == null) {
            configLogForInvalid(str, obj, "integerArrayList");
        }
        return intArrayList;
    }

    public String[] getStringArray(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        String[] stringArray = ConfigUtils.toStringArray(obj);
        if (stringArray == null) {
            configLogForInvalid(str, obj, "StringArray");
        }
        return stringArray;
    }

    public ArrayList<String> getStringArrayList(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        ArrayList<String> stringArrayList = ConfigUtils.toStringArrayList(obj);
        if (stringArrayList == null) {
            configLogForInvalid(str, obj, "StringArrayList");
        }
        return stringArrayList;
    }

    public Map<String, Object>[] getMapArray(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        Map<String, Object>[] mapArray = ConfigUtils.toMapArray(obj);
        if (mapArray == null) {
            configLogForInvalid(str, obj, "MapArray");
        }
        return mapArray;
    }

    public ArrayList<Map<String, Object>> getMapArrayList(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        ArrayList<Map<String, Object>> mapArrayList = ConfigUtils.toMapArrayList(obj);
        if (mapArrayList == null) {
            configLogForInvalid(str, obj, "MapArrayList");
        }
        return mapArrayList;
    }

    public Map<String, Object> getMap(String str) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        Map<String, Object> map = ConfigUtils.toMap(obj);
        if (map == null) {
            configLogForInvalid(str, obj, LocalCompConstant.MAP);
        }
        return map;
    }

    private void configLogForInvalid(Object obj, Object obj2, String str) {
        Log.e(TAG, "Value " + obj2 + " at " + obj + " of type " + obj2.getClass().getName() + " cannot be converted to Integer");
    }
}
