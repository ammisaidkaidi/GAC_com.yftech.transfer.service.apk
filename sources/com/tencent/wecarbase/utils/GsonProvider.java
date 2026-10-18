package com.tencent.wecarbase.utils;

import com.google.gson.Gson;

/* loaded from: /home/user/work/dex/classes.dex */
public final class GsonProvider {
    private GsonProvider() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class GsonHolder {
        private static final Gson INSTANCE = new Gson();

        private GsonHolder() {
        }
    }

    public static Gson getInstance() {
        return GsonHolder.INSTANCE;
    }
}
