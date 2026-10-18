package com.tencent.wecarbase.taibaseui.commonui;

import android.view.View;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICommonUIHelper {
    void bindData(View view, JSONObject jSONObject, ICommonUIViewListener iCommonUIViewListener);

    void showLayout(View view);
}
