package com.tencent.wecarbase.client;

import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;

/* loaded from: /home/user/work/dex/classes.dex */
public class SimpleEventListener implements AccountEventListener {
    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onAuthChanged(boolean z) {
    }

    public void onFeedBackCenterOpenOrClose(boolean z) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onQQAccountBind(String str, TxAccount txAccount) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onQQAccountUnbind(String str, TxAccount txAccount) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onQQAccountUpdate(String str, TxAccount txAccount, TxAccount txAccount2) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWXAccountBind(TxAccount txAccount) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWXAccountUnbind(TxAccount txAccount) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWXAccountUpdate(TxAccount txAccount, TxAccount txAccount2) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWXBindActivityOpenOrClose(boolean z) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWeCarIdChanged(WeCarAccount weCarAccount, WeCarAccount weCarAccount2) {
    }

    @Override // com.tencent.wecarbase.client.AccountEventListener
    public void onWeCarIdRegistered(WeCarAccount weCarAccount) {
    }
}
