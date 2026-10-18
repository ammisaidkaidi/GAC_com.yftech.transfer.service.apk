package com.tencent.taes.util.config;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taes.util.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
class ConfigParser {
    private static final String TAG = "ConfigParser";
    private JSONObject mConfigJsonObject = null;
    private Context mContext;
    private String mJsonString;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigParser(Context context, String str) {
        this.mJsonString = null;
        this.mContext = context;
        File file = new File(str);
        if (file.canRead()) {
            this.mJsonString = loadJsonFromSdcard(file);
        } else {
            try {
                this.mJsonString = FileUtils.readAssets(this.mContext, str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(this.mJsonString)) {
            return;
        }
        parseJsonString();
    }

    private void parseJsonString() {
        try {
            this.mConfigJsonObject = new JSONObject(this.mJsonString);
        } catch (JSONException e) {
            this.mConfigJsonObject = null;
            Log.e(TAG, "Json parse fail!", e);
        }
    }

    private String loadJsonFromSdcard(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject getJSONObject() {
        return this.mConfigJsonObject;
    }

    String getJsonString() {
        return this.mJsonString;
    }
}
