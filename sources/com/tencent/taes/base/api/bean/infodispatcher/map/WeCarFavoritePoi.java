package com.tencent.taes.base.api.bean.infodispatcher.map;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarFavoritePoi extends WeCarPoi {
    public int favoriteType;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Type {
        public static final int COMPANY = 2;
        public static final int HOME = 1;
        public static final int NORMAL = 0;
    }
}
