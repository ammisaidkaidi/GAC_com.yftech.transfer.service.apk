package com.tencent.taes.api.open;

import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.framework.interfaces.IEventListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IOpenApi extends BaseApi {
    public static final int TAB_AI_BOARD = 4;
    public static final int TAB_MAP = 1;
    public static final int TAB_MUSIC = 2;
    public static final int TAB_PERSONAL = 0;
    public static final int TAB_SCENE = 3;
    public static final int TAB_WECAR_HOME = 5;

    void closePage(String str);

    void createTeamTrip();

    void exitApp(boolean z);

    void exitTeamTrip(boolean z);

    long getAppVersionCode();

    String getAppVersionName();

    void joinTeamTrip(boolean z, String str);

    void openApp();

    void openApp(int i);

    void setTeamTripTarget(double d, double d2, String str, String str2);

    void showNavigationBar(boolean z);

    void showStatusBar(boolean z);

    void subscribe(String str, IEventListener iEventListener);

    void unsubscribe(String str, IEventListener iEventListener);
}
