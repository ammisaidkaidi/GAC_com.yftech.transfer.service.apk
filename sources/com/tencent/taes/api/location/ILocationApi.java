package com.tencent.taes.api.location;

import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
import com.tencent.taes.remote.api.location.bean.LocationBean;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILocationApi extends BaseApi, IRegitsterConnectStateApi {
    LocationBean getCurLocation();
}
