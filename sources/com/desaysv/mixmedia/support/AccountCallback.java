package com.desaysv.mixmedia.support;

import com.desaysv.mixmedia.media.data.bean.User;
import com.desaysv.mixradio.media.data.model.xm.Profile;

/* loaded from: /home/user/work/dex/classes.dex */
public interface AccountCallback {
    default void onKugouUserChanged(User user) {
    }

    default void onXmlyUserChanged(Profile profile) {
    }
}
