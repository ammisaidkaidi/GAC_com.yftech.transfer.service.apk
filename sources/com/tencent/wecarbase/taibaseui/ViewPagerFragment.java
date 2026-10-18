package com.tencent.wecarbase.taibaseui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.tencent.wecarbase.utils.AppResourcesUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ViewPagerFragment extends Fragment {
    ImageView mImageView;
    View mRootView;
    TextView mTitle1;
    TextView mTitle2;
    InfoModel model;

    public static ViewPagerFragment newInstance(InfoModel infoModel) {
        ViewPagerFragment viewPagerFragment = new ViewPagerFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(DeviceHelper.BUILD_MODEL, infoModel);
        viewPagerFragment.setArguments(bundle);
        return viewPagerFragment;
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mRootView = layoutInflater.inflate(AppResourcesUtils.getSdkId("wbsdk_fragment_view_pager", "layout"), viewGroup, false);
        this.model = (InfoModel) getArguments().getParcelable(DeviceHelper.BUILD_MODEL);
        initUI();
        return this.mRootView;
    }

    private void initUI() {
        this.mTitle1 = (TextView) this.mRootView.findViewById(AppResourcesUtils.getSdkId("title1", "id"));
        this.mTitle2 = (TextView) this.mRootView.findViewById(AppResourcesUtils.getSdkId("title2", "id"));
        this.mImageView = (ImageView) this.mRootView.findViewById(AppResourcesUtils.getSdkId("imageview", "id"));
        if (this.model != null) {
            this.mTitle1.setText(this.model.getTitle1());
            this.mTitle2.setText(this.model.getTitle2());
            this.mImageView.setImageResource(this.model.getImageResId());
        }
    }
}
