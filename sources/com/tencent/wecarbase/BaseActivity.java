package com.tencent.wecarbase;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.taibaseui.TAIProgressDialog;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseActivity extends FragmentActivity {
    protected String TAG = getClass().getSimpleName();
    protected boolean isDestroyed;
    protected TAIProgressDialog mProgressDialog;

    protected void initViews() {
    }

    protected void registerLinstners() {
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (ConfigHolder.getInstance().hasInitialized()) {
            return;
        }
        finish();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.isDestroyed = true;
        super.onDestroy();
    }

    public boolean isActivityDestroyed() {
        return this.isDestroyed;
    }

    public void showProgress(String str) {
        if (isFinishing() || this.isDestroyed) {
            return;
        }
        if (this.mProgressDialog == null || !this.mProgressDialog.isShowing()) {
            this.mProgressDialog = new TAIProgressDialog(this);
            this.mProgressDialog.show(str);
        }
    }

    public void hideProgress() {
        if (isFinishing() || this.isDestroyed || this.mProgressDialog == null || !this.mProgressDialog.isShowing()) {
            return;
        }
        this.mProgressDialog.dismiss();
    }
}
