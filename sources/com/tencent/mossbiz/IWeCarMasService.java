package com.tencent.mossbiz;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.mossbiz.IWeCarAudioService;
import com.tencent.mossbiz.IWeCarMasAudioCallback;
import com.tencent.mossbiz.IWeCarMasCallback;
import com.tencent.mossbiz.IWeCarMasServiceCallback;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarMasService extends IInterface {
    void addCollectionWithAppId(String str) throws RemoteException;

    void addPlayListener(IWeCarMasAudioCallback iWeCarMasAudioCallback) throws RemoteException;

    void addRecentApp(String str) throws RemoteException;

    void addRecentAppWithTime(String str, long j) throws RemoteException;

    void addSearchHistory(String str) throws RemoteException;

    void clearAllAuth() throws RemoteException;

    void clearAuth(String str, String str2, String str3) throws RemoteException;

    void clearData() throws RemoteException;

    void clearRecentAppList() throws RemoteException;

    void clearSearchHistory() throws RemoteException;

    String getAllAuthInfo() throws RemoteException;

    Map getAuth(String str, String str2, String str3) throws RemoteException;

    String getChannelId() throws RemoteException;

    List<String> getCollectedAppIdList() throws RemoteException;

    void getLabelCategory(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    void getMossCategoryList(IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    int getMossContextEnv() throws RemoteException;

    int getMossEvn() throws RemoteException;

    Bundle getMossLabel() throws RemoteException;

    void getMossTestPoiList(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    void getNewLabelCategory(IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    Map getRecentAppAndTimeList() throws RemoteException;

    List<String> getRecentAppList() throws RemoteException;

    List<String> getSearchHistoryList() throws RemoteException;

    boolean hasAuth(String str, String str2, String str3, String str4) throws RemoteException;

    void initAudioListener(IWeCarMasAudioCallback iWeCarMasAudioCallback) throws RemoteException;

    void initAudioService(IWeCarAudioService iWeCarAudioService) throws RemoteException;

    boolean isDisplayDebugLog() throws RemoteException;

    boolean isDisplayLog() throws RemoteException;

    boolean isIsEnableVConsole() throws RemoteException;

    boolean isLogin() throws RemoteException;

    boolean isMossAppExists(String str) throws RemoteException;

    boolean isRecentNeedRefresh() throws RemoteException;

    void loadAllAppsFromNet(IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    String mCategoryId() throws RemoteException;

    String mossInfo() throws RemoteException;

    String mossSdkVersion() throws RemoteException;

    String musicInfo() throws RemoteException;

    void onAudioNext() throws RemoteException;

    boolean onAudioPause() throws RemoteException;

    boolean onAudioPlayer(String str) throws RemoteException;

    void onAudioPre() throws RemoteException;

    boolean onAudioState() throws RemoteException;

    boolean onAudioStop() throws RemoteException;

    boolean onPlayer() throws RemoteException;

    void onReport(IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    boolean openMossApp(String str, String str2) throws RemoteException;

    void openMossBySemantics(String str, String str2, String str3, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    void openPushInfo(String str, boolean z) throws RemoteException;

    void playTts(String str) throws RemoteException;

    void registerCallback(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException;

    void removeCollectionWithAppId(String str) throws RemoteException;

    boolean removeRecentApp(String str) throws RemoteException;

    void requestLoginQrCode(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    void saveRecentAppIdListToDisk() throws RemoteException;

    void searchAppCategoryFromNet(String str, String str2, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    void searchAppsFromNet(String str, String str2, String str3, IWeCarMasCallback iWeCarMasCallback) throws RemoteException;

    Bundle searchMossInfoFromeLabelID(int i) throws RemoteException;

    boolean seekBackgroundAudio(int i) throws RemoteException;

    void setAuth(String str, String str2, String str3, String str4) throws RemoteException;

    void setChannelId(String str) throws RemoteException;

    void setDisplayDebugLog(boolean z) throws RemoteException;

    void setDisplayLog(boolean z) throws RemoteException;

    void setIsEnableVConsole(boolean z) throws RemoteException;

    void setModel(int i) throws RemoteException;

    void setMossContextEnv(int i) throws RemoteException;

    void setMossEvn(int i) throws RemoteException;

    void test(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException;

    void unregisterCallback(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IWeCarMasService {
        private static final String DESCRIPTOR = "com.tencent.mossbiz.IWeCarMasService";
        static final int TRANSACTION_addCollectionWithAppId = 18;
        static final int TRANSACTION_addPlayListener = 50;
        static final int TRANSACTION_addRecentApp = 15;
        static final int TRANSACTION_addRecentAppWithTime = 16;
        static final int TRANSACTION_addSearchHistory = 23;
        static final int TRANSACTION_clearAllAuth = 7;
        static final int TRANSACTION_clearAuth = 6;
        static final int TRANSACTION_clearData = 68;
        static final int TRANSACTION_clearRecentAppList = 12;
        static final int TRANSACTION_clearSearchHistory = 22;
        static final int TRANSACTION_getAllAuthInfo = 9;
        static final int TRANSACTION_getAuth = 8;
        static final int TRANSACTION_getChannelId = 33;
        static final int TRANSACTION_getCollectedAppIdList = 19;
        static final int TRANSACTION_getLabelCategory = 28;
        static final int TRANSACTION_getMossCategoryList = 27;
        static final int TRANSACTION_getMossContextEnv = 38;
        static final int TRANSACTION_getMossEvn = 36;
        static final int TRANSACTION_getMossLabel = 29;
        static final int TRANSACTION_getMossTestPoiList = 49;
        static final int TRANSACTION_getNewLabelCategory = 31;
        static final int TRANSACTION_getRecentAppAndTimeList = 11;
        static final int TRANSACTION_getRecentAppList = 10;
        static final int TRANSACTION_getSearchHistoryList = 21;
        static final int TRANSACTION_hasAuth = 5;
        static final int TRANSACTION_initAudioListener = 62;
        static final int TRANSACTION_initAudioService = 60;
        static final int TRANSACTION_isDisplayDebugLog = 42;
        static final int TRANSACTION_isDisplayLog = 40;
        static final int TRANSACTION_isIsEnableVConsole = 35;
        static final int TRANSACTION_isLogin = 48;
        static final int TRANSACTION_isMossAppExists = 63;
        static final int TRANSACTION_isRecentNeedRefresh = 14;
        static final int TRANSACTION_loadAllAppsFromNet = 24;
        static final int TRANSACTION_mCategoryId = 66;
        static final int TRANSACTION_mossInfo = 65;
        static final int TRANSACTION_mossSdkVersion = 45;
        static final int TRANSACTION_musicInfo = 61;
        static final int TRANSACTION_onAudioNext = 58;
        static final int TRANSACTION_onAudioPause = 53;
        static final int TRANSACTION_onAudioPlayer = 52;
        static final int TRANSACTION_onAudioPre = 59;
        static final int TRANSACTION_onAudioState = 54;
        static final int TRANSACTION_onAudioStop = 55;
        static final int TRANSACTION_onPlayer = 51;
        static final int TRANSACTION_onReport = 57;
        static final int TRANSACTION_openMossApp = 44;
        static final int TRANSACTION_openMossBySemantics = 64;
        static final int TRANSACTION_openPushInfo = 69;
        static final int TRANSACTION_playTts = 46;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_removeCollectionWithAppId = 20;
        static final int TRANSACTION_removeRecentApp = 13;
        static final int TRANSACTION_requestLoginQrCode = 47;
        static final int TRANSACTION_saveRecentAppIdListToDisk = 17;
        static final int TRANSACTION_searchAppCategoryFromNet = 26;
        static final int TRANSACTION_searchAppsFromNet = 25;
        static final int TRANSACTION_searchMossInfoFromeLabelID = 30;
        static final int TRANSACTION_seekBackgroundAudio = 56;
        static final int TRANSACTION_setAuth = 4;
        static final int TRANSACTION_setChannelId = 32;
        static final int TRANSACTION_setDisplayDebugLog = 43;
        static final int TRANSACTION_setDisplayLog = 41;
        static final int TRANSACTION_setIsEnableVConsole = 34;
        static final int TRANSACTION_setModel = 67;
        static final int TRANSACTION_setMossContextEnv = 39;
        static final int TRANSACTION_setMossEvn = 37;
        static final int TRANSACTION_test = 3;
        static final int TRANSACTION_unregisterCallback = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWeCarMasService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IWeCarMasService)) {
                return (IWeCarMasService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallback(IWeCarMasServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(IWeCarMasServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    test(IWeCarMasServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAuth(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasAuth = hasAuth(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(hasAuth ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearAuth(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearAllAuth();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map auth = getAuth(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeMap(auth);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String allAuthInfo = getAllAuthInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(allAuthInfo);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> recentAppList = getRecentAppList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(recentAppList);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map recentAppAndTimeList = getRecentAppAndTimeList();
                    parcel2.writeNoException();
                    parcel2.writeMap(recentAppAndTimeList);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearRecentAppList();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean removeRecentApp = removeRecentApp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(removeRecentApp ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isRecentNeedRefresh = isRecentNeedRefresh();
                    parcel2.writeNoException();
                    parcel2.writeInt(isRecentNeedRefresh ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRecentApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRecentAppWithTime(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    saveRecentAppIdListToDisk();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    addCollectionWithAppId(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> collectedAppIdList = getCollectedAppIdList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(collectedAppIdList);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeCollectionWithAppId(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> searchHistoryList = getSearchHistoryList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(searchHistoryList);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearSearchHistory();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    addSearchHistory(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    loadAllAppsFromNet(IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchAppsFromNet(parcel.readString(), parcel.readString(), parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchAppCategoryFromNet(parcel.readString(), parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    getMossCategoryList(IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    getLabelCategory(parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle mossLabel = getMossLabel();
                    parcel2.writeNoException();
                    if (mossLabel != null) {
                        parcel2.writeInt(1);
                        mossLabel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle searchMossInfoFromeLabelID = searchMossInfoFromeLabelID(parcel.readInt());
                    parcel2.writeNoException();
                    if (searchMossInfoFromeLabelID != null) {
                        parcel2.writeInt(1);
                        searchMossInfoFromeLabelID.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    getNewLabelCategory(IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    setChannelId(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    String channelId = getChannelId();
                    parcel2.writeNoException();
                    parcel2.writeString(channelId);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIsEnableVConsole(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isIsEnableVConsole = isIsEnableVConsole();
                    parcel2.writeNoException();
                    parcel2.writeInt(isIsEnableVConsole ? 1 : 0);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mossEvn = getMossEvn();
                    parcel2.writeNoException();
                    parcel2.writeInt(mossEvn);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMossEvn(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mossContextEnv = getMossContextEnv();
                    parcel2.writeNoException();
                    parcel2.writeInt(mossContextEnv);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMossContextEnv(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDisplayLog = isDisplayLog();
                    parcel2.writeNoException();
                    parcel2.writeInt(isDisplayLog ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDisplayLog(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isDisplayDebugLog = isDisplayDebugLog();
                    parcel2.writeNoException();
                    parcel2.writeInt(isDisplayDebugLog ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDisplayDebugLog(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean openMossApp = openMossApp(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(openMossApp ? 1 : 0);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mossSdkVersion = mossSdkVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(mossSdkVersion);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    playTts(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestLoginQrCode(parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isLogin = isLogin();
                    parcel2.writeNoException();
                    parcel2.writeInt(isLogin ? 1 : 0);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    getMossTestPoiList(parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPlayListener(IWeCarMasAudioCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onPlayer = onPlayer();
                    parcel2.writeNoException();
                    parcel2.writeInt(onPlayer ? 1 : 0);
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onAudioPlayer = onAudioPlayer(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onAudioPlayer ? 1 : 0);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onAudioPause = onAudioPause();
                    parcel2.writeNoException();
                    parcel2.writeInt(onAudioPause ? 1 : 0);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onAudioState = onAudioState();
                    parcel2.writeNoException();
                    parcel2.writeInt(onAudioState ? 1 : 0);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onAudioStop = onAudioStop();
                    parcel2.writeNoException();
                    parcel2.writeInt(onAudioStop ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean seekBackgroundAudio = seekBackgroundAudio(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(seekBackgroundAudio ? 1 : 0);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    onReport(IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAudioNext();
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAudioPre();
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    initAudioService(IWeCarAudioService.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    String musicInfo = musicInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(musicInfo);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    initAudioListener(IWeCarMasAudioCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isMossAppExists = isMossAppExists(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isMossAppExists ? 1 : 0);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    openMossBySemantics(parcel.readString(), parcel.readString(), parcel.readString(), IWeCarMasCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mossInfo = mossInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(mossInfo);
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mCategoryId = mCategoryId();
                    parcel2.writeNoException();
                    parcel2.writeString(mCategoryId);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    setModel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearData();
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    openPushInfo(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IWeCarMasService {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void registerCallback(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasServiceCallback != null ? iWeCarMasServiceCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void unregisterCallback(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasServiceCallback != null ? iWeCarMasServiceCallback.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void test(IWeCarMasServiceCallback iWeCarMasServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasServiceCallback != null ? iWeCarMasServiceCallback.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setAuth(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean hasAuth(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void clearAuth(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void clearAllAuth() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public Map getAuth(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String getAllAuthInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public List<String> getRecentAppList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public Map getRecentAppAndTimeList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void clearRecentAppList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean removeRecentApp(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isRecentNeedRefresh() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void addRecentApp(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void addRecentAppWithTime(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void saveRecentAppIdListToDisk() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void addCollectionWithAppId(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public List<String> getCollectedAppIdList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void removeCollectionWithAppId(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public List<String> getSearchHistoryList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void clearSearchHistory() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void addSearchHistory(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void loadAllAppsFromNet(IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void searchAppsFromNet(String str, String str2, String str3, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void searchAppCategoryFromNet(String str, String str2, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void getMossCategoryList(IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void getLabelCategory(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public Bundle getMossLabel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public Bundle searchMossInfoFromeLabelID(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void getNewLabelCategory(IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setChannelId(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String getChannelId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setIsEnableVConsole(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isIsEnableVConsole() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public int getMossEvn() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setMossEvn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public int getMossContextEnv() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setMossContextEnv(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isDisplayLog() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setDisplayLog(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isDisplayDebugLog() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setDisplayDebugLog(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean openMossApp(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String mossSdkVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void playTts(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void requestLoginQrCode(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isLogin() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void getMossTestPoiList(String str, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void addPlayListener(IWeCarMasAudioCallback iWeCarMasAudioCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasAudioCallback != null ? iWeCarMasAudioCallback.asBinder() : null);
                    this.mRemote.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean onPlayer() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean onAudioPlayer(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean onAudioPause() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean onAudioState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean onAudioStop() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean seekBackgroundAudio(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void onReport(IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void onAudioNext() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(58, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void onAudioPre() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void initAudioService(IWeCarAudioService iWeCarAudioService) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarAudioService != null ? iWeCarAudioService.asBinder() : null);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String musicInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void initAudioListener(IWeCarMasAudioCallback iWeCarMasAudioCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeCarMasAudioCallback != null ? iWeCarMasAudioCallback.asBinder() : null);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public boolean isMossAppExists(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void openMossBySemantics(String str, String str2, String str3, IWeCarMasCallback iWeCarMasCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(iWeCarMasCallback != null ? iWeCarMasCallback.asBinder() : null);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String mossInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public String mCategoryId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void setModel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void clearData() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.mossbiz.IWeCarMasService
            public void openPushInfo(String str, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
