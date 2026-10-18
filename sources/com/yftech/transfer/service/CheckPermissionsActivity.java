package com.yftech.transfer.service;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CheckPermissionsActivity extends Activity implements ActivityCompat.OnRequestPermissionsResultCallback {
    private static final int PERMISSON_REQUESTCODE = 0;
    protected String[] needPermissions = {"android.permission.READ_CONTACTS", "android.permission.READ_CALL_LOG"};
    private boolean isNeedCheck = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.isNeedCheck) {
            checkPermissions(this.needPermissions);
        }
    }

    private void checkPermissions(String... strArr) {
        List<String> findDeniedPermissions = findDeniedPermissions(strArr);
        if (findDeniedPermissions == null || findDeniedPermissions.size() <= 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, (String[]) findDeniedPermissions.toArray(new String[findDeniedPermissions.size()]), 0);
    }

    private List<String> findDeniedPermissions(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(this, str) != 0 || ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private boolean verifyPermissions(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 0 || verifyPermissions(iArr)) {
            return;
        }
        this.isNeedCheck = false;
    }

    private void startAppSettings() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivity(intent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
