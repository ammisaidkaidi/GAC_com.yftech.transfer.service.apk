package com.yftech.btphone.lib.base.fragment;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.yftech.btphone.lib.base.view.BaseActivity;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseFragment extends Fragment implements BaseActivity.OnActivityListener {
    protected String TAG = "";
    protected View contentView;
    protected Unbinder mUnbinder;

    public abstract int getViewLayout();

    protected abstract void initView(Bundle bundle, Bundle bundle2);

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.TAG = getClass().getSimpleName();
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        getActivity().addOnPhoneActivityListener(this);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.contentView = layoutInflater.inflate(getViewLayout(), viewGroup, false);
        this.mUnbinder = ButterKnife.bind(this, this.contentView);
        return this.contentView;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(bundle, getArguments());
    }

    protected <T extends View> T findThisFgView(@IdRes int i, Class<T> cls) {
        if (cls == null || this.contentView == null || i < 0) {
            return null;
        }
        return (T) this.contentView.findViewById(i);
    }

    protected <T extends View> T findViewInParent(View view, @IdRes int i, Class<T> cls) {
        if (cls == null || view == null || i < 0) {
            return null;
        }
        return (T) view.findViewById(i);
    }

    public void onDestroyView() {
        this.mUnbinder.unbind();
        super.onDestroyView();
    }

    public void onDetach() {
        getActivity().removeOnPhoneActivityListener(this);
        super.onDetach();
    }

    @Override // com.yftech.btphone.lib.base.view.BaseActivity.OnActivityListener
    public void onFragmentSwitch(BaseFragment baseFragment) {
        log("onFragmentSwitch   fg=" + baseFragment);
    }

    public String getMyTag() {
        return getClass().getName();
    }

    protected void log(String str) {
        Log.d(getClass().getSimpleName(), str);
    }
}
