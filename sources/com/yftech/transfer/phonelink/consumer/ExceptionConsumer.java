package com.yftech.transfer.phonelink.consumer;

import com.utils.LogUtil;
import io.reactivex.functions.Consumer;

/* loaded from: /home/user/work/dex/classes.dex */
public class ExceptionConsumer implements Consumer<Throwable> {
    @Override // io.reactivex.functions.Consumer
    public void accept(Throwable th) {
        LogUtil.i("ExceptionConsumer throwable:" + th.getMessage());
    }
}
