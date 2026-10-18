package com.tencent.taes.remote.api.log;

import com.tencent.taes.remote.api.log.bean.LogConfiguration;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILogApi {
    LogConfiguration getLogConfiguration(String str);

    LogConfiguration registerModule(String str);

    boolean unregisterModule(String str);
}
