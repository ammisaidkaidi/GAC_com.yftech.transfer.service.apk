package com.tencent.car.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.car.sdk.IWeChatMsgCallback;
import com.tencent.car.sdk.IWeChatNotDisturbCallback;
import com.tencent.car.sdk.IWeChatPanelCallback;
import com.tencent.car.sdk.IWeChatSemiAutoLoginCallback;
import com.tencent.car.sdk.IWeChatUIStateCallback;
import com.tencent.car.sdk.IWeChatUnreadMsgStateCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeChatService extends IInterface {
    void callMethod(String str, int i, String str2) throws RemoteException;

    boolean getDashboardConfig() throws RemoteException;

    boolean getNotDisturbConfig() throws RemoteException;

    boolean getUserGuideConfig() throws RemoteException;

    boolean getWeChatLoginState() throws RemoteException;

    int getWeChatNotDisturbState() throws RemoteException;

    boolean getWeChatPanelState() throws RemoteException;

    boolean getWeChatSemiAutoLoginState() throws RemoteException;

    int getWeChatUIState() throws RemoteException;

    int getWeChatUnreadMsgState() throws RemoteException;

    int getWeChatVoipState() throws RemoteException;

    void invokeWithText(String str, int i, String str2) throws RemoteException;

    void invokeWithWakeupWord(String str, int i, String str2) throws RemoteException;

    int launchMiniProgramm(String str) throws RemoteException;

    void logoutWeChat() throws RemoteException;

    void openWeChatFunctionPage(int i) throws RemoteException;

    void setPanel(boolean z) throws RemoteException;

    void setSemiAutoLogin(boolean z) throws RemoteException;

    void setWeChaPanelStateObserve(IWeChatPanelCallback iWeChatPanelCallback) throws RemoteException;

    void setWeChaSemiAutoLoginStateObserve(IWeChatSemiAutoLoginCallback iWeChatSemiAutoLoginCallback) throws RemoteException;

    void setWeChaUiStateObserve(IWeChatUIStateCallback iWeChatUIStateCallback) throws RemoteException;

    void setWeChatMsgObserve(IWeChatMsgCallback iWeChatMsgCallback) throws RemoteException;

    void setWeChatNotDisturbState(int i) throws RemoteException;

    void setWeChatNotDisturbStateObserve(IWeChatNotDisturbCallback iWeChatNotDisturbCallback) throws RemoteException;

    void setWeChatUnreadMsgStateObserve(IWeChatUnreadMsgStateCallback iWeChatUnreadMsgStateCallback) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IWeChatService {
        private static final String DESCRIPTOR = "com.tencent.car.sdk.IWeChatService";
        static final int TRANSACTION_callMethod = 1;
        static final int TRANSACTION_getDashboardConfig = 22;
        static final int TRANSACTION_getNotDisturbConfig = 23;
        static final int TRANSACTION_getUserGuideConfig = 24;
        static final int TRANSACTION_getWeChatLoginState = 3;
        static final int TRANSACTION_getWeChatNotDisturbState = 14;
        static final int TRANSACTION_getWeChatPanelState = 11;
        static final int TRANSACTION_getWeChatSemiAutoLoginState = 12;
        static final int TRANSACTION_getWeChatUIState = 6;
        static final int TRANSACTION_getWeChatUnreadMsgState = 20;
        static final int TRANSACTION_getWeChatVoipState = 4;
        static final int TRANSACTION_invokeWithText = 17;
        static final int TRANSACTION_invokeWithWakeupWord = 18;
        static final int TRANSACTION_launchMiniProgramm = 25;
        static final int TRANSACTION_logoutWeChat = 16;
        static final int TRANSACTION_openWeChatFunctionPage = 21;
        static final int TRANSACTION_setPanel = 7;
        static final int TRANSACTION_setSemiAutoLogin = 8;
        static final int TRANSACTION_setWeChaPanelStateObserve = 9;
        static final int TRANSACTION_setWeChaSemiAutoLoginStateObserve = 10;
        static final int TRANSACTION_setWeChaUiStateObserve = 5;
        static final int TRANSACTION_setWeChatMsgObserve = 2;
        static final int TRANSACTION_setWeChatNotDisturbState = 13;
        static final int TRANSACTION_setWeChatNotDisturbStateObserve = 15;
        static final int TRANSACTION_setWeChatUnreadMsgStateObserve = 19;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWeChatService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IWeChatService)) {
                return (IWeChatService) queryLocalInterface;
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
                    callMethod(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChatMsgObserve(IWeChatMsgCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean weChatLoginState = getWeChatLoginState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatLoginState ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int weChatVoipState = getWeChatVoipState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatVoipState);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChaUiStateObserve(IWeChatUIStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int weChatUIState = getWeChatUIState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatUIState);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPanel(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSemiAutoLogin(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChaPanelStateObserve(IWeChatPanelCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChaSemiAutoLoginStateObserve(IWeChatSemiAutoLoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean weChatPanelState = getWeChatPanelState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatPanelState ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean weChatSemiAutoLoginState = getWeChatSemiAutoLoginState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatSemiAutoLoginState ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChatNotDisturbState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int weChatNotDisturbState = getWeChatNotDisturbState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatNotDisturbState);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChatNotDisturbStateObserve(IWeChatNotDisturbCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    logoutWeChat();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    invokeWithText(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    invokeWithWakeupWord(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWeChatUnreadMsgStateObserve(IWeChatUnreadMsgStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int weChatUnreadMsgState = getWeChatUnreadMsgState();
                    parcel2.writeNoException();
                    parcel2.writeInt(weChatUnreadMsgState);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    openWeChatFunctionPage(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean dashboardConfig = getDashboardConfig();
                    parcel2.writeNoException();
                    parcel2.writeInt(dashboardConfig ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean notDisturbConfig = getNotDisturbConfig();
                    parcel2.writeNoException();
                    parcel2.writeInt(notDisturbConfig ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean userGuideConfig = getUserGuideConfig();
                    parcel2.writeNoException();
                    parcel2.writeInt(userGuideConfig ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int launchMiniProgramm = launchMiniProgramm(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(launchMiniProgramm);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IWeChatService {
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

            @Override // com.tencent.car.sdk.IWeChatService
            public void callMethod(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChatMsgObserve(IWeChatMsgCallback iWeChatMsgCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatMsgCallback != null ? iWeChatMsgCallback.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getWeChatLoginState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public int getWeChatVoipState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChaUiStateObserve(IWeChatUIStateCallback iWeChatUIStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatUIStateCallback != null ? iWeChatUIStateCallback.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public int getWeChatUIState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setPanel(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setSemiAutoLogin(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChaPanelStateObserve(IWeChatPanelCallback iWeChatPanelCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatPanelCallback != null ? iWeChatPanelCallback.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChaSemiAutoLoginStateObserve(IWeChatSemiAutoLoginCallback iWeChatSemiAutoLoginCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatSemiAutoLoginCallback != null ? iWeChatSemiAutoLoginCallback.asBinder() : null);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getWeChatPanelState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getWeChatSemiAutoLoginState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChatNotDisturbState(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public int getWeChatNotDisturbState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChatNotDisturbStateObserve(IWeChatNotDisturbCallback iWeChatNotDisturbCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatNotDisturbCallback != null ? iWeChatNotDisturbCallback.asBinder() : null);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void logoutWeChat() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void invokeWithText(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void invokeWithWakeupWord(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void setWeChatUnreadMsgStateObserve(IWeChatUnreadMsgStateCallback iWeChatUnreadMsgStateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iWeChatUnreadMsgStateCallback != null ? iWeChatUnreadMsgStateCallback.asBinder() : null);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public int getWeChatUnreadMsgState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public void openWeChatFunctionPage(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getDashboardConfig() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getNotDisturbConfig() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public boolean getUserGuideConfig() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.car.sdk.IWeChatService
            public int launchMiniProgramm(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
