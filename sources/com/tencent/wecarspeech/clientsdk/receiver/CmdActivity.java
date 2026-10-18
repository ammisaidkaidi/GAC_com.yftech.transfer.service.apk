package com.tencent.wecarspeech.clientsdk.receiver;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CmdActivity extends Activity {
    private static final String FROM_PKG_NAME = "com.tencent.wecar";
    private static final String FROM_PKG_NAME_SYSTEM = "com.tencent.wecarspeech";
    private static final String KEY_FROM_PKG_NAME = "fromPkgName";

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        handleCmd(getIntent());
    }

    private void handleCmd(Intent intent) {
        String stringExtra = intent.getStringExtra(KEY_FROM_PKG_NAME);
        if ("com.tencent.wecarspeech".equals(stringExtra) || "com.tencent.wecar".equals(stringExtra)) {
            CmdParser.cmdExecute(intent);
        }
        finish();
    }
}
