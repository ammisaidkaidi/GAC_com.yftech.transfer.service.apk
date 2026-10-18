package com.tencent.wecarbase.client;

import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;

/* loaded from: /home/user/work/dex/classes.dex */
interface AccountEventListener {
    void onAuthChanged(boolean z);

    void onQQAccountBind(String str, TxAccount txAccount);

    void onQQAccountUnbind(String str, TxAccount txAccount);

    void onQQAccountUpdate(String str, TxAccount txAccount, TxAccount txAccount2);

    void onWXAccountBind(TxAccount txAccount);

    void onWXAccountUnbind(TxAccount txAccount);

    void onWXAccountUpdate(TxAccount txAccount, TxAccount txAccount2);

    void onWXBindActivityOpenOrClose(boolean z);

    void onWeCarIdChanged(WeCarAccount weCarAccount, WeCarAccount weCarAccount2);

    void onWeCarIdRegistered(WeCarAccount weCarAccount);
}
