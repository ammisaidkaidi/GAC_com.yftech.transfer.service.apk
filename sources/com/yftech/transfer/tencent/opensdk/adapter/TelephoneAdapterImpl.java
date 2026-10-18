package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import android.content.Intent;
import com.tencent.tai.pal.platform.adapter.PlatformAdapter;
import com.tencent.tai.pal.telephone.PhoneContact;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TelephoneAdapterImpl extends TelephoneAdapter {
    private Context mContext;

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public PhoneContact getRecentContact(int i) {
        return null;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public void registerOnTelInfoListener(TelephoneAdapter.OnTelInfoListener onTelInfoListener) {
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public void unregisterOnTelInfoListener(TelephoneAdapter.OnTelInfoListener onTelInfoListener) {
    }

    public TelephoneAdapterImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int call(String str, String str2) {
        PlatformAdapter.LOGI("call,the name:" + str + ",number:" + str2);
        return -1;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int answerInComingCall() {
        PlatformAdapter.LOGI("answerInComingCall");
        return -1;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int refuseInComingCall() {
        PlatformAdapter.LOGI("refuseInComingCall");
        return -1;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int ignoreInComingCall() {
        PlatformAdapter.LOGI("ignoreInComingCall");
        return -1;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int viewPhonebook() {
        PlatformAdapter.LOGI("viewPhonebook");
        Intent intent = new Intent(this.mContext.getPackageManager().getLaunchIntentForPackage(CarAppList.BT_PHONE_PKG));
        intent.putExtra("page_index", 0);
        this.mContext.startActivity(intent);
        return 0;
    }

    @Override // com.tencent.tai.pal.telephone.TelephoneAdapter
    public int viewCallRecord(int i) {
        PlatformAdapter.LOGI("viewCallRecord,the callRecordType:" + i);
        Intent intent = new Intent(this.mContext.getPackageManager().getLaunchIntentForPackage(CarAppList.BT_PHONE_PKG));
        switch (i) {
            case 0:
                intent.putExtra("page_index", 1);
                break;
            case 1:
                intent.putExtra("page_index", 1);
                break;
            case 2:
                intent.putExtra("page_index", 1);
                break;
            case 3:
                intent.putExtra("page_index", 1);
                break;
        }
        this.mContext.startActivity(intent);
        return 0;
    }
}
