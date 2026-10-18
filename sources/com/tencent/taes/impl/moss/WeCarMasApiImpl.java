package com.tencent.taes.impl.moss;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.google.gson.reflect.TypeToken;
import com.tencent.mosssdk.IInvokeChannelClient;
import com.tencent.mosssdk.IMossApiService;
import com.tencent.taes.api.moss.BaseApiImpl;
import com.tencent.taes.api.moss.IWeCarMasApi;
import com.tencent.taes.api.moss.bean.MiniAppInfo;
import com.tencent.taes.api.moss.bean.MossAppList;
import com.tencent.taes.api.moss.bean.MossAudioBean;
import com.tencent.taes.api.moss.bean.MossLabel;
import com.tencent.taes.api.moss.bean.ResultBean;
import com.tencent.taes.api.moss.listener.ICallBack;
import com.tencent.taes.api.moss.listener.IMinAppFrontListener;
import com.tencent.taes.api.moss.listener.IWeCarMasCallback;
import com.tencent.taes.local.api.moss.IMossRequestCallback;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.util.GsonUtils;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarMasApiImpl extends BaseApiImpl implements IWeCarMasApi {
    private static final String BACK_APP_TO_BACKGROUND = "backAppToBackground";
    private static final String BEGIN = "onBeginPlay";
    private static final String CLOSE_MOSS_APP = "closeMiniProgram";
    private static String DETAIL_RECOMMEND_APP_LIST = "requestDetailRecommendAppList";
    private static String GET_MEDIA_TYPE = "getMediaType";
    private static final String GET_MOSS_CLIENT_SHOW = "getMossAppClientShow";
    private static final String GET_MOSS_INFO = "getMossInfo";
    private static String GET_MOSS_LABEL = "getMossLabel";
    private static final String GET_MUSIC_INFO = "getMusicInfo";
    private static final String GET_RECENT_APP_LIST = "getRecentAppList";
    private static String IS_FIRST_MEDIA_OF_PLAYLIST = "isFirstMediaOfPlayList";
    private static String IS_FORWARD_OUT_OF_RANGE = "isForwardOutOfRange";
    private static String IS_LAST_MEDIA_OF_PLAYLIST = "isLastMediaOfPlayList";
    private static String IS_LOGIN = "isLogin";
    private static String IS_MINI_PROGRAM_EXIST = "isMiniProgramExist";
    private static String IS_MINI_PROGRAM_OPEN = "isMiniProgramOpened";
    private static String IS_MINI_PROGRAM_PLAY = "isMiniProgramPlay";
    private static String IS_MOSS_INIT = "isMossInited";
    private static String IS_SUPPORT_OPERATION = "isSupportOperation";
    private static final String LOAD_ALL_APP = "loadAllAppsFromNet";
    private static String LOAD_ALL_APP_CACHE = "loadAllAppsFromCache";
    private static final String LOGIN = "login";
    private static String NEXT = "next";
    private static final String ONEND = "onMusicEnd";
    private static final String ONERROR = "onMusicError";
    private static final String ONPAUSE = "onMusicPause";
    private static final String ONPLAY = "onMusicPlay";
    private static final String ONPROGRESS = "onProgress";
    public static final String ONSEEKCOMPLETE = "onSeekComplete";
    public static final String ONSEEKING = "onSeeking";
    private static final String ONSTOP = "onMusicStop";
    private static final String ONWAITING = "onMusicWaiting";
    private static final String OPEN_MOSS_APP = "openMossApp";
    private static final String OPEN_MOSS_IN_SYSTEM_DIALOG = "openMossInSystemDialog";
    private static String OPERATION_MEDIA = "operationMedia";
    private static String PAUSE = "pause";
    private static String PLAY = "play";
    private static String PREV = "prev";
    private static String RECOMMEND_APP_LIST = "requestRecommendAppList";
    private static final String REQUEST_WITH_TAA = "requestLbsRecommend";
    private static String SEARCH_APP_LIST = "searchAppListFromLabel";
    private static String SERVICE_ERROR = "Service is not connection";
    private static String TAG = "WeCarMasApiImpl";
    private volatile boolean isServiceBind;
    private Set<IServerConnectListener> mConnectListenerSet;
    private WeakReference<Context> mContext;
    private IMossApiService mMossApiService;
    private IWeCarMasCallback mMossAudioCallbackRef;
    private IMinAppFrontListener minAppFrontListener;
    protected IMossRequestCallback<MiniAppInfo> mossCacheCallback;
    protected IMossRequestCallback<MiniAppInfo> mossRequestCallback;
    private IMossRequestCallback<String> recentAppCallback;
    private int strTargePos;
    protected ICallBack<String> taaCallback;
    private int targeToffet;
    private HashMap<String, IMossRequestCallback> callbackHashMap = new HashMap<>();
    private boolean isMossRequestCallback = false;
    private ServiceConnection connection = new ServiceConnection() { // from class: com.tencent.taes.impl.moss.WeCarMasApiImpl.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(WeCarMasApiImpl.TAG, "onServiceConnected");
            WeCarMasApiImpl.this.mMossApiService = IMossApiService.Stub.asInterface(iBinder);
            try {
                WeCarMasApiImpl.this.mMossApiService.registerApiCallback(WeCarMasApiImpl.this.mMossApiCallback);
            } catch (RemoteException e) {
                Log.e(WeCarMasApiImpl.TAG, "registerApiCallback", e);
            }
            if (WeCarMasApiImpl.this.mConnectListenerSet != null) {
                Iterator it = WeCarMasApiImpl.this.mConnectListenerSet.iterator();
                while (it.hasNext()) {
                    try {
                        ((IServerConnectListener) it.next()).onConnected();
                    } catch (Exception e2) {
                        Log.e(WeCarMasApiImpl.TAG, "onServiceConnected", e2);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(WeCarMasApiImpl.TAG, "onServiceDisconnected");
            WeCarMasApiImpl.this.disconnected();
            WeCarMasApiImpl.this.mMossApiService = null;
        }
    };

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return null;
    }

    public WeCarMasApiImpl() {
        setObject(this);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        if (iServerConnectListener == null) {
            return;
        }
        if (this.mConnectListenerSet == null) {
            this.mConnectListenerSet = new HashSet();
        }
        Log.i(TAG, "registerConnectListener:" + iServerConnectListener);
        this.mConnectListenerSet.add(iServerConnectListener);
        if (this.mMossApiService != null) {
            iServerConnectListener.onConnected();
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void unregisterConnectListener(IServerConnectListener iServerConnectListener) {
        if (this.mConnectListenerSet != null) {
            this.mConnectListenerSet.remove(iServerConnectListener);
            Log.i(TAG, "unregisterConnectListener:" + iServerConnectListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnected() {
        if (this.mConnectListenerSet != null) {
            Iterator<IServerConnectListener> it = this.mConnectListenerSet.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onDisConnected();
                } catch (Exception e) {
                    Log.e(TAG, "onServiceDisconnected", e);
                }
            }
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void registerConnection(Context context) {
        if (context == null) {
            throw new NullPointerException("context don't be null!~");
        }
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        Intent intent = new Intent();
        intent.setAction("com.tencent.mossbiz.aidl.audioservice");
        if (checkAppExit(context, "com.tencent.wecar")) {
            intent.setPackage("com.tencent.wecar");
        } else if (checkAppExit(context, "com.tencent.wecarmas")) {
            intent.setPackage("com.tencent.wecarmas");
        } else {
            Log.e(TAG, "don't find moss service app, please install ‘腾讯随行’ or ‘小场景’ ");
            return;
        }
        this.isServiceBind = context.bindService(intent, this.connection, 1);
        this.mContext = new WeakReference<>(context);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void unRegisterConnection() {
        if (!this.isServiceBind) {
            Log.i(TAG, "service not bind.");
        } else if (this.mContext == null || this.mContext.get() == null) {
            Log.i(TAG, "context is null.");
        } else {
            this.mContext.get().unbindService(this.connection);
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void play() {
        mossApiInvoke(PLAY, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void pause() {
        mossApiInvoke(PAUSE, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void next() {
        mossApiInvoke(NEXT, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void prev() {
        mossApiInvoke(PREV, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void openMossApp(String str, String str2) {
        openMossApp(str, str2, -1);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void openMossApp(String str, String str2, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            jSONObject.put("pagePath", str2);
            jSONObject.put("position", i);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        mossApiInvoke(OPEN_MOSS_APP, jSONObject.toString());
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void openMossInSystemDialog(String str, String str2, int i, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            jSONObject.put("pagePath", str2);
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
            jSONObject.put("gravity", i3);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        mossApiInvoke(OPEN_MOSS_IN_SYSTEM_DIALOG, jSONObject.toString());
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void closeMossApp() {
        mossApiInvoke(CLOSE_MOSS_APP, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void backAppToBackground() {
        mossApiInvoke(BACK_APP_TO_BACKGROUND, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isMossAppForeground(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            return Boolean.valueOf(mossApiInvoke(GET_MOSS_CLIENT_SHOW, jSONObject.toString())).booleanValue();
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void startWeChatBindActivity() {
        mossApiInvoke(LOGIN, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void getRecentAppList(IMossRequestCallback<String> iMossRequestCallback) {
        this.recentAppCallback = iMossRequestCallback;
        String mossApiInvoke = mossApiInvoke(GET_RECENT_APP_LIST, null);
        if (TextUtils.isEmpty(mossApiInvoke)) {
            if (iMossRequestCallback != null) {
                iMossRequestCallback.onFailed("error: result is empty");
            }
        } else {
            ArrayList arrayList = new ArrayList(Arrays.asList(mossApiInvoke.split(" ")));
            if (iMossRequestCallback != null) {
                iMossRequestCallback.onSucceeded(arrayList);
            }
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void loadAllAppsFromCache(IMossRequestCallback<MiniAppInfo> iMossRequestCallback) {
        this.mossCacheCallback = iMossRequestCallback;
        if (this.mMossApiService == null && iMossRequestCallback != null) {
            iMossRequestCallback.onFailed("onServiceDisconnected");
        } else {
            mossApiInvoke(LOAD_ALL_APP_CACHE, null);
        }
    }

    public String loadAllAppsFromCache(String str, String str2) {
        ResultBean resultBean;
        try {
            Log.e(TAG, "loadAllAppsFromCache  : isRequest = " + this.isMossRequestCallback + " \n paramJson = " + str2);
        } catch (JSONException e) {
            e.printStackTrace();
            if (this.mossCacheCallback != null) {
                this.mossCacheCallback.onFailed(e.getMessage());
            }
        }
        if (this.mossCacheCallback == null) {
            return "";
        }
        if (!this.isMossRequestCallback) {
            try {
                resultBean = ResultBean.fromJSON(new JSONObject(str2).getString("result"));
            } catch (Exception e2) {
                e2.printStackTrace();
                resultBean = null;
            }
            if (resultBean == null) {
                return "";
            }
            List<MiniAppInfo> list = resultBean.data;
            if (this.mossCacheCallback != null) {
                this.mossCacheCallback.onSucceeded(list);
            }
        }
        this.isMossRequestCallback = false;
        return "";
    }

    public String minAppFrontChange(String str, final String str2) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.taes.impl.moss.WeCarMasApiImpl.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Log.e(WeCarMasApiImpl.TAG, "minAppFrontChange  : paramJson = " + str2);
                    JSONObject jSONObject = new JSONObject(str2);
                    String optString = jSONObject.optString("appId");
                    String optString2 = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                    if (WeCarMasApiImpl.this.minAppFrontListener != null) {
                        if ("onResume".equals(optString2)) {
                            WeCarMasApiImpl.this.minAppFrontListener.onResume(optString);
                        } else {
                            WeCarMasApiImpl.this.minAppFrontListener.onPause(optString);
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        return "";
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public List<MossLabel> getMossLabel() {
        String mossApiInvoke = mossApiInvoke(GET_MOSS_LABEL, null);
        Log.e(TAG, "getMossLabel : result= " + mossApiInvoke);
        return (List) GsonUtils.fromJson(mossApiInvoke, new TypeToken<ArrayList<MossLabel>>() { // from class: com.tencent.taes.impl.moss.WeCarMasApiImpl.3
        }.getType());
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public List<MiniAppInfo> searchAppListFromLabel(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("labelId", i);
            String mossApiInvoke = mossApiInvoke(SEARCH_APP_LIST, jSONObject.toString());
            Log.e(TAG, "searchAppListFromLabel : result= " + mossApiInvoke);
            return (List) GsonUtils.fromJson(mossApiInvoke, new TypeToken<ArrayList<MiniAppInfo>>() { // from class: com.tencent.taes.impl.moss.WeCarMasApiImpl.4
            }.getType());
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String recentAppDataChange(String str, String str2) {
        if (this.recentAppCallback == null) {
            return "";
        }
        String mossApiInvoke = mossApiInvoke(GET_RECENT_APP_LIST, null);
        if (!TextUtils.isEmpty(mossApiInvoke)) {
            ArrayList arrayList = new ArrayList(Arrays.asList(mossApiInvoke.split(" ")));
            if (this.recentAppCallback == null) {
                return "";
            }
            this.recentAppCallback.onSucceeded(arrayList);
            return "";
        }
        if (this.recentAppCallback == null) {
            return "";
        }
        this.recentAppCallback.onFailed("error: result is empty");
        return "";
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void registerMossCallback(IWeCarMasCallback iWeCarMasCallback) {
        this.mMossAudioCallbackRef = iWeCarMasCallback;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void unRegisterMossCallback() {
        this.mMossAudioCallbackRef = null;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void setIMinAppFrontListener(IMinAppFrontListener iMinAppFrontListener) {
        this.minAppFrontListener = iMinAppFrontListener;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void requestRecommendAppList(IMossRequestCallback<MiniAppInfo> iMossRequestCallback) {
        if (iMossRequestCallback == null) {
            Log.e(TAG, "requestRecommendAppList : callback is null");
        } else if (this.mMossApiService != null) {
            this.callbackHashMap.put(RECOMMEND_APP_LIST, iMossRequestCallback);
            mossApiInvoke(RECOMMEND_APP_LIST, null);
        } else {
            iMossRequestCallback.onFailed(SERVICE_ERROR);
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void requestDetailRecommendAppList(IMossRequestCallback<MossAppList> iMossRequestCallback) {
        if (iMossRequestCallback == null) {
            Log.e(TAG, "requestDetailRecommendAppList : callback is null");
        } else if (this.mMossApiService != null) {
            this.callbackHashMap.put(DETAIL_RECOMMEND_APP_LIST, iMossRequestCallback);
            mossApiInvoke(DETAIL_RECOMMEND_APP_LIST, null);
        } else {
            iMossRequestCallback.onFailed(SERVICE_ERROR);
        }
    }

    public String requestRecommendAppList(String str, String str2) {
        try {
            IMossRequestCallback iMossRequestCallback = this.callbackHashMap.get(RECOMMEND_APP_LIST);
            if (iMossRequestCallback == null) {
                Log.e(TAG, "requestRecommendAppList : callback is null  functionName = " + str);
                return "";
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.optBoolean(NotificationCompat.CATEGORY_STATUS)) {
                        String string = jSONObject.getString("response");
                        if (requireSuccess(string)) {
                            iMossRequestCallback.onSucceeded(appletList(string));
                        } else {
                            iMossRequestCallback.onFailed(message(string));
                        }
                    } else {
                        iMossRequestCallback.onFailed(jSONObject.getString(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS));
                    }
                    return "";
                } catch (JSONException e) {
                    e.printStackTrace();
                    return "";
                }
            }
            iMossRequestCallback.onFailed("response is null");
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public String requestDetailRecommendAppList(String str, String str2) {
        try {
            IMossRequestCallback iMossRequestCallback = this.callbackHashMap.get(DETAIL_RECOMMEND_APP_LIST);
            if (iMossRequestCallback == null) {
                Log.e(TAG, "requestDetailRecommendAppList : callback is null  functionName = " + str);
                return "";
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.optBoolean(NotificationCompat.CATEGORY_STATUS)) {
                        String string = jSONObject.getString("response");
                        if (requireSuccess(string)) {
                            iMossRequestCallback.onSucceeded(mossAppLists(string));
                        } else {
                            iMossRequestCallback.onFailed(message(string));
                        }
                    } else {
                        iMossRequestCallback.onFailed(jSONObject.getString(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS));
                    }
                    return "";
                } catch (JSONException e) {
                    e.printStackTrace();
                    return "";
                }
            }
            iMossRequestCallback.onFailed("response is null");
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public boolean requireSuccess(String str) {
        try {
            return new JSONObject(str).optInt("code") == 0;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    private String message(String str) {
        try {
            return new JSONObject(str).optString("message");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private List<MossAppList> mossAppLists(String str) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            Log.i(TAG, " mossAppLists  response is null");
            return arrayList;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("appletsList")) {
                JSONArray jSONArray = jSONObject.getJSONArray("appletsList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    MossAppList mossAppList = new MossAppList();
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    List<MiniAppInfo> appletList = appletList(jSONObject2.toString());
                    mossAppList.setTypeName(jSONObject2.optString("typeName"));
                    mossAppList.setSubtitle(jSONObject2.optString("subtitle"));
                    mossAppList.setBgImage(jSONObject2.optString("bgImage"));
                    mossAppList.setAppletsList(appletList);
                    arrayList.add(mossAppList);
                }
                Log.i(TAG, "mossAppLists = " + arrayList.size());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    private List<MiniAppInfo> appletList(String str) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            Log.i(TAG, " appletList  response is null");
            return arrayList;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("appletList")) {
                JSONArray jSONArray = jSONObject.getJSONArray("appletList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    MiniAppInfo miniAppInfo = new MiniAppInfo();
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    miniAppInfo.appId = jSONObject2.optString("appId");
                    miniAppInfo.logoUrl = jSONObject2.optString("icon");
                    miniAppInfo.cnName = jSONObject2.optString("name");
                    miniAppInfo.pagePath = jSONObject2.optString("path");
                    miniAppInfo.opWords = jSONObject2.optString("opWords");
                    miniAppInfo.banner = jSONObject2.optString("banner");
                    arrayList.add(miniAppInfo);
                }
                Log.i(TAG, "mossAppInfoList = " + arrayList.size());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public MossAudioBean getMossAudioBean() {
        try {
            String mossApiInvoke = mossApiInvoke(GET_MUSIC_INFO, null);
            String mossApiInvoke2 = mossApiInvoke(GET_MOSS_INFO, null);
            Log.e(TAG, "musicInfo = " + mossApiInvoke + "\n mossInfo = " + mossApiInvoke2);
            if (!TextUtils.isEmpty(mossApiInvoke)) {
                MossAudioBean mossAudioBean = (MossAudioBean) GsonUtils.fromJson(mossApiInvoke, MossAudioBean.class);
                if (!TextUtils.isEmpty(mossApiInvoke2)) {
                    JSONObject jSONObject = new JSONObject(mossApiInvoke2);
                    mossAudioBean.appId = jSONObject.optString("appid");
                    mossAudioBean.logoUrl = jSONObject.optString("logoUrl");
                    mossAudioBean.mossPath = jSONObject.optString("path");
                }
                return mossAudioBean;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void loadAllAppsFromNet(IMossRequestCallback<MiniAppInfo> iMossRequestCallback) {
        this.mossRequestCallback = iMossRequestCallback;
        try {
            this.isMossRequestCallback = true;
            if (this.mMossApiService == null && iMossRequestCallback != null) {
                iMossRequestCallback.onFailed("onServiceDisconnected");
                this.isMossRequestCallback = false;
            } else {
                mossApiInvoke(LOAD_ALL_APP, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String loadAllAppsFromNet(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int optInt = jSONObject.optInt("code");
            String string = jSONObject.getString("result");
            if (this.mossRequestCallback == null) {
                this.isMossRequestCallback = false;
                return "";
            }
            if (optInt != 200) {
                this.isMossRequestCallback = false;
                if (this.mossRequestCallback == null) {
                    return "";
                }
                this.mossRequestCallback.onFailed(string);
                return "";
            }
            if (str2 == null) {
                return "";
            }
            ResultBean resultBean = null;
            try {
                resultBean = ResultBean.fromJSON(string);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (resultBean == null) {
                return "";
            }
            List<MiniAppInfo> list = resultBean.data;
            Log.e(TAG, "loadAllAppsFromNet  : result= " + string);
            if (this.mossRequestCallback == null) {
                return "";
            }
            this.mossRequestCallback.onSucceeded(list);
            return "";
        } catch (JSONException e2) {
            e2.printStackTrace();
            this.isMossRequestCallback = false;
            if (this.mossRequestCallback == null) {
                return "";
            }
            this.mossRequestCallback.onFailed(e2.getMessage());
            return "";
        }
    }

    public String mossApiInvoke(String str, String str2) {
        if (this.mMossApiService != null) {
            try {
                return this.mMossApiService.mossApiInvoke(str, str2);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        disconnected();
        return null;
    }

    public void onProgress(long j, long j2) {
        if (this.mMossAudioCallbackRef == null) {
            return;
        }
        this.mMossAudioCallbackRef.onProgress(j, j2);
    }

    public void onMusicStatusChange(String str, String str2) {
        if (this.mMossAudioCallbackRef == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            String optString = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
            char c = 65535;
            switch (optString.hashCode()) {
                case -1758436830:
                    if (optString.equals(ONERROR)) {
                        c = 7;
                        break;
                    }
                    break;
                case -1748781552:
                    if (optString.equals(ONPAUSE)) {
                        c = 3;
                        break;
                    }
                    break;
                case -1103742882:
                    if (optString.equals(BEGIN)) {
                        c = 1;
                        break;
                    }
                    break;
                case -986867829:
                    if (optString.equals(ONSEEKING)) {
                        c = '\b';
                        break;
                    }
                    break;
                case -681158795:
                    if (optString.equals(ONEND)) {
                        c = 4;
                        break;
                    }
                    break;
                case -503449776:
                    if (optString.equals(ONSEEKCOMPLETE)) {
                        c = '\t';
                        break;
                    }
                    break;
                case 359239642:
                    if (optString.equals(ONPLAY)) {
                        c = 2;
                        break;
                    }
                    break;
                case 359337128:
                    if (optString.equals(ONSTOP)) {
                        c = 5;
                        break;
                    }
                    break;
                case 659654631:
                    if (optString.equals(ONWAITING)) {
                        c = 6;
                        break;
                    }
                    break;
                case 1768875308:
                    if (optString.equals(ONPROGRESS)) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    onProgress(jSONObject.optLong("currentPosition"), jSONObject.optLong(FeedBackConstants.PROP_BUG_DURATION));
                    return;
                case 1:
                    this.mMossAudioCallbackRef.onMusicInfoChange(getMossAudioBean());
                    return;
                case 2:
                    this.mMossAudioCallbackRef.onMusicPlay();
                    return;
                case 3:
                    this.mMossAudioCallbackRef.onMusicPause();
                    return;
                case 4:
                    this.mMossAudioCallbackRef.onMusicEnd();
                    return;
                case 5:
                    this.mMossAudioCallbackRef.onMusicStop();
                    return;
                case 6:
                    this.mMossAudioCallbackRef.onMusicWaiting();
                    return;
                case 7:
                    this.mMossAudioCallbackRef.onMusicError();
                    return;
                case '\b':
                    this.mMossAudioCallbackRef.onSeeking();
                    return;
                case '\t':
                    this.mMossAudioCallbackRef.onSeekComplete();
                    return;
                default:
                    return;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void registerClient(IInvokeChannelClient iInvokeChannelClient) throws RemoteException {
        if (this.mMossApiService != null) {
            this.mMossApiService.registerClient(iInvokeChannelClient);
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void unregisterClient() throws RemoteException {
        if (this.mMossApiService != null) {
            this.mMossApiService.unregisterClient();
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void emitEvent(String str, String str2) throws RemoteException {
        if (this.mMossApiService != null) {
            this.mMossApiService.emitEvent(str, str2);
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public void requestLbsRecommend(ICallBack<String> iCallBack) throws RemoteException {
        this.taaCallback = iCallBack;
        if (this.mMossApiService == null && this.taaCallback != null) {
            this.taaCallback.onFailure("onServiceDisconnected");
        }
        mossApiInvoke(REQUEST_WITH_TAA, null);
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean canMossAppOpen(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            String mossApiInvoke = mossApiInvoke(IS_MINI_PROGRAM_EXIST, jSONObject.toString());
            Log.i(TAG, "isMiniProgramExist  =" + mossApiInvoke);
            return Boolean.valueOf(mossApiInvoke).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isMiniProgramOpened(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            String mossApiInvoke = mossApiInvoke(IS_MINI_PROGRAM_OPEN, jSONObject.toString());
            Log.i(TAG, "isMiniProgramOpened  =" + mossApiInvoke);
            return Boolean.valueOf(mossApiInvoke).booleanValue();
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public int getMediaType() {
        try {
            return Integer.parseInt(mossApiInvoke(GET_MEDIA_TYPE, null));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public int isSupportOperation(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("operation", i);
            return Integer.valueOf(mossApiInvoke(IS_SUPPORT_OPERATION, jSONObject.toString())).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isFirstMediaOfPlayList() {
        try {
            String mossApiInvoke = mossApiInvoke(IS_FIRST_MEDIA_OF_PLAYLIST, null);
            Log.i(TAG, "isFirst  =" + mossApiInvoke);
            return Boolean.valueOf(mossApiInvoke).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isLastMediaOfPlayList() {
        try {
            return Boolean.valueOf(mossApiInvoke(IS_LAST_MEDIA_OF_PLAYLIST, null)).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isForwardOutOfRange(int i) {
        try {
            new JSONObject().put("step", i);
            return !Boolean.valueOf(mossApiInvoke(IS_FORWARD_OUT_OF_RANGE, r0.toString())).booleanValue();
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isLogin(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            return Boolean.valueOf(mossApiInvoke(IS_LOGIN, jSONObject.toString())).booleanValue();
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isMiniProgramPlay() {
        try {
            return Boolean.valueOf(mossApiInvoke(IS_MINI_PROGRAM_PLAY, new JSONObject().toString())).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean operationMedia(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("command", str);
            if (this.strTargePos != 0) {
                jSONObject.put("strTargePos", this.strTargePos);
            }
            if (this.targeToffet != 0) {
                jSONObject.put("targeToffet", this.targeToffet);
            }
            this.strTargePos = 0;
            this.targeToffet = 0;
            return Boolean.valueOf(mossApiInvoke(OPERATION_MEDIA, jSONObject.toString())).booleanValue();
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public IWeCarMasApi strTargePos(int i) {
        this.strTargePos = i;
        return this;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public IWeCarMasApi targeToffet(int i) {
        this.targeToffet = i;
        return this;
    }

    @Override // com.tencent.taes.api.moss.IWeCarMasApi
    public boolean isMossInited() {
        try {
            return Boolean.valueOf(mossApiInvoke(IS_MOSS_INIT, null)).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public String requestLbsRecommend(String str, String str2) {
        if (this.taaCallback == null) {
            return "";
        }
        this.taaCallback.onResponse(str2);
        return "";
    }
}
