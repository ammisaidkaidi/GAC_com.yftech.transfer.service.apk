package com.tencent.taes.util.config;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class ConfigManager {
    private static final String TAG = "ConfigManager";
    private Map<String, ConfigInfo> mConfigInfoMap;

    private ConfigManager() {
        this.mConfigInfoMap = new HashMap();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class LazyHolder {
        private static final ConfigManager sInstance = new ConfigManager();

        private LazyHolder() {
        }
    }

    public static ConfigManager getInstance() {
        return LazyHolder.sInstance;
    }

    @Nullable
    public ConfigInfo getConfigInfo(Context context, String str) {
        if (!this.mConfigInfoMap.containsKey(str)) {
            ConfigParser configParser = new ConfigParser(context, str);
            if (configParser.getJSONObject() != null) {
                this.mConfigInfoMap.put(str, new ConfigInfo(configParser.getJSONObject()));
            } else {
                Log.e(TAG, "Json object is null !");
            }
        }
        return this.mConfigInfoMap.get(str);
    }
}
