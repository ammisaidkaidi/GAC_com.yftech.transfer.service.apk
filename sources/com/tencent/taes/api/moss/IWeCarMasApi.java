package com.tencent.taes.api.moss;

import android.content.Context;
import android.os.RemoteException;
import com.tencent.mosssdk.IInvokeChannelClient;
import com.tencent.taes.api.base.BaseApi;
import com.tencent.taes.api.moss.bean.MiniAppInfo;
import com.tencent.taes.api.moss.bean.MossAppList;
import com.tencent.taes.api.moss.bean.MossAudioBean;
import com.tencent.taes.api.moss.bean.MossLabel;
import com.tencent.taes.api.moss.listener.ICallBack;
import com.tencent.taes.api.moss.listener.IMinAppFrontListener;
import com.tencent.taes.api.moss.listener.IWeCarMasCallback;
import com.tencent.taes.local.api.moss.IMossRequestCallback;
import com.tencent.taes.remote.api.IServerConnectListener;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarMasApi extends BaseApi {
    void backAppToBackground();

    boolean canMossAppOpen(String str);

    void closeMossApp();

    void emitEvent(String str, String str2) throws RemoteException;

    int getMediaType();

    MossAudioBean getMossAudioBean();

    List<MossLabel> getMossLabel();

    void getRecentAppList(IMossRequestCallback<String> iMossRequestCallback);

    boolean isFirstMediaOfPlayList();

    boolean isForwardOutOfRange(int i);

    boolean isLastMediaOfPlayList();

    boolean isLogin(String str);

    boolean isMiniProgramOpened(String str);

    boolean isMiniProgramPlay();

    boolean isMossAppForeground(String str);

    boolean isMossInited();

    int isSupportOperation(int i);

    void loadAllAppsFromCache(IMossRequestCallback<MiniAppInfo> iMossRequestCallback);

    void loadAllAppsFromNet(IMossRequestCallback<MiniAppInfo> iMossRequestCallback);

    void next();

    void openMossApp(String str, String str2);

    void openMossApp(String str, String str2, int i);

    void openMossInSystemDialog(String str, String str2, int i, int i2, int i3);

    boolean operationMedia(String str);

    void pause();

    void play();

    void prev();

    void registerClient(IInvokeChannelClient iInvokeChannelClient) throws RemoteException;

    void registerConnectListener(IServerConnectListener iServerConnectListener);

    void registerConnection(Context context);

    void registerMossCallback(IWeCarMasCallback iWeCarMasCallback);

    void requestDetailRecommendAppList(IMossRequestCallback<MossAppList> iMossRequestCallback);

    void requestLbsRecommend(ICallBack<String> iCallBack) throws RemoteException;

    void requestRecommendAppList(IMossRequestCallback<MiniAppInfo> iMossRequestCallback);

    List<MiniAppInfo> searchAppListFromLabel(int i);

    void setIMinAppFrontListener(IMinAppFrontListener iMinAppFrontListener);

    void startWeChatBindActivity();

    IWeCarMasApi strTargePos(int i);

    IWeCarMasApi targeToffet(int i);

    void unRegisterConnection();

    void unRegisterMossCallback();

    void unregisterClient() throws RemoteException;

    void unregisterConnectListener(IServerConnectListener iServerConnectListener);
}
