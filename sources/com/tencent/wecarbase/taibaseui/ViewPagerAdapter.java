package com.tencent.wecarbase.taibaseui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ViewPagerAdapter extends FragmentPagerAdapter {
    private List<InfoModel> mItemList;

    public ViewPagerAdapter(FragmentManager fragmentManager, List<InfoModel> list) {
        super(fragmentManager);
        this.mItemList = list;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mItemList.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return ViewPagerFragment.newInstance(this.mItemList.get(i));
    }
}
