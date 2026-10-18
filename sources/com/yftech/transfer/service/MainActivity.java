package com.yftech.transfer.service;

import android.content.Intent;
import android.os.Bundle;

/* loaded from: /home/user/work/dex/classes.dex */
public class MainActivity extends CheckPermissionsActivity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        startService(new Intent(this, (Class<?>) CarTransferService.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.transfer.service.CheckPermissionsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }
}
