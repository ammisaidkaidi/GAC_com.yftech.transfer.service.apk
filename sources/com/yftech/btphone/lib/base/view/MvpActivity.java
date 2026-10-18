package com.yftech.btphone.lib.base.view;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yftech.btphone.lib.base.presenter.IPresenter;
import java.lang.reflect.ParameterizedType;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class MvpActivity<P extends IPresenter> extends BaseActivity implements IView {
    protected P mPresenter;

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    public void onCreate(@Nullable Bundle bundle) {
        this.mPresenter = initPresenter();
        getLifecycle().addObserver(this.mPresenter);
        super.onCreate(bundle);
        logd("onCreate");
    }

    public void onResume() {
        super.onResume();
        logd("onResume");
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity
    public void onDestroy() {
        logd("onDestroy");
        if (this.mPresenter != null) {
            this.mPresenter = null;
        }
        super.onDestroy();
    }

    @Override // com.yftech.btphone.lib.base.view.IView
    public P initPresenter() {
        try {
            this.mPresenter = (P) ((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();
            this.mPresenter.attachView(this);
            return this.mPresenter;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public P getPresenter() {
        return this.mPresenter;
    }
}
