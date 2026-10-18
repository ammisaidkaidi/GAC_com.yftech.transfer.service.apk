package com.tencent.wecarbase;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.wecarbase.IAccountListener;
import com.tencent.wecarbase.IConfigListener;
import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.model.WeCarContract;
import com.tencent.wecarbase.taiaccount.IMossCallBack;
import com.tencent.wecarbase.taiaccount.ITAIUserInfo;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAccountService extends IInterface {
    void AppletAuth(String str, IMossCallBack iMossCallBack) throws RemoteException;

    void addBindAccount(TxAccount txAccount) throws RemoteException;

    void appletLogin(String str, IMossCallBack iMossCallBack) throws RemoteException;

    void checkAppletSession(String str, IMossCallBack iMossCallBack) throws RemoteException;

    WeCarContract checkContract(int i) throws RemoteException;

    void closeAccountUI(String str) throws RemoteException;

    void closeFeedbackUI(String str) throws RemoteException;

    void getAppletUserInfo(String str, IMossCallBack iMossCallBack) throws RemoteException;

    void getAuthStatus(String str, IMossCallBack iMossCallBack) throws RemoteException;

    void getBaseCarInfo(String str, IMossCallBack iMossCallBack) throws RemoteException;

    long getNonce() throws RemoteException;

    void getPhoneNumber(String str, IMossCallBack iMossCallBack) throws RemoteException;

    void getProductConfigByKey(String str, String str2, String str3, IConfigListener iConfigListener) throws RemoteException;

    void getTaiAccountInfo(int i, Map map, String str, ITAIUserInfo iTAIUserInfo) throws RemoteException;

    void getUserConfigByKey(String str, IConfigListener iConfigListener) throws RemoteException;

    void getWeCarAccount(IAccountListener iAccountListener) throws RemoteException;

    WeCarAccount getWeCarAccountSync() throws RemoteException;

    boolean isTAIAuthOk() throws RemoteException;

    void logoutTaiAccount(int i, Map map, String str, String str2, String str3, ITAIUserInfo iTAIUserInfo) throws RemoteException;

    boolean removeTXAccount(TxAccount txAccount) throws RemoteException;

    boolean removeWXAccount() throws RemoteException;

    boolean removeWeCarAccount() throws RemoteException;

    void setUserConfig(String str, String str2, IConfigListener iConfigListener) throws RemoteException;

    void updateSessionKey(String str, long j) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IAccountService {
        private static final String DESCRIPTOR = "com.tencent.wecarbase.IAccountService";
        static final int TRANSACTION_AppletAuth = 17;
        static final int TRANSACTION_addBindAccount = 3;
        static final int TRANSACTION_appletLogin = 13;
        static final int TRANSACTION_checkAppletSession = 14;
        static final int TRANSACTION_checkContract = 24;
        static final int TRANSACTION_closeAccountUI = 22;
        static final int TRANSACTION_closeFeedbackUI = 23;
        static final int TRANSACTION_getAppletUserInfo = 16;
        static final int TRANSACTION_getAuthStatus = 18;
        static final int TRANSACTION_getBaseCarInfo = 19;
        static final int TRANSACTION_getNonce = 7;
        static final int TRANSACTION_getPhoneNumber = 15;
        static final int TRANSACTION_getProductConfigByKey = 9;
        static final int TRANSACTION_getTaiAccountInfo = 20;
        static final int TRANSACTION_getUserConfigByKey = 10;
        static final int TRANSACTION_getWeCarAccount = 2;
        static final int TRANSACTION_getWeCarAccountSync = 1;
        static final int TRANSACTION_isTAIAuthOk = 12;
        static final int TRANSACTION_logoutTaiAccount = 21;
        static final int TRANSACTION_removeTXAccount = 4;
        static final int TRANSACTION_removeWXAccount = 5;
        static final int TRANSACTION_removeWeCarAccount = 8;
        static final int TRANSACTION_setUserConfig = 11;
        static final int TRANSACTION_updateSessionKey = 6;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAccountService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAccountService)) {
                return (IAccountService) queryLocalInterface;
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
                    WeCarAccount weCarAccountSync = getWeCarAccountSync();
                    parcel2.writeNoException();
                    if (weCarAccountSync != null) {
                        parcel2.writeInt(1);
                        weCarAccountSync.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getWeCarAccount(IAccountListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    addBindAccount(parcel.readInt() != 0 ? TxAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean removeTXAccount = removeTXAccount(parcel.readInt() != 0 ? TxAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(removeTXAccount ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean removeWXAccount = removeWXAccount();
                    parcel2.writeNoException();
                    parcel2.writeInt(removeWXAccount ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateSessionKey(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    long nonce = getNonce();
                    parcel2.writeNoException();
                    parcel2.writeLong(nonce);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean removeWeCarAccount = removeWeCarAccount();
                    parcel2.writeNoException();
                    parcel2.writeInt(removeWeCarAccount ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getProductConfigByKey(parcel.readString(), parcel.readString(), parcel.readString(), IConfigListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserConfigByKey(parcel.readString(), IConfigListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUserConfig(parcel.readString(), parcel.readString(), IConfigListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isTAIAuthOk = isTAIAuthOk();
                    parcel2.writeNoException();
                    parcel2.writeInt(isTAIAuthOk ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    appletLogin(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    checkAppletSession(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPhoneNumber(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppletUserInfo(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    AppletAuth(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAuthStatus(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    getBaseCarInfo(parcel.readString(), IMossCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    getTaiAccountInfo(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()), parcel.readString(), ITAIUserInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    logoutTaiAccount(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), ITAIUserInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeAccountUI(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeFeedbackUI(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    WeCarContract checkContract = checkContract(parcel.readInt());
                    parcel2.writeNoException();
                    if (checkContract != null) {
                        parcel2.writeInt(1);
                        checkContract.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IAccountService {
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

            @Override // com.tencent.wecarbase.IAccountService
            public WeCarAccount getWeCarAccountSync() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? WeCarAccount.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getWeCarAccount(IAccountListener iAccountListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iAccountListener != null ? iAccountListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void addBindAccount(TxAccount txAccount) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (txAccount != null) {
                        obtain.writeInt(1);
                        txAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public boolean removeTXAccount(TxAccount txAccount) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (txAccount != null) {
                        obtain.writeInt(1);
                        txAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public boolean removeWXAccount() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void updateSessionKey(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public long getNonce() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public boolean removeWeCarAccount() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getProductConfigByKey(String str, String str2, String str3, IConfigListener iConfigListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(iConfigListener != null ? iConfigListener.asBinder() : null);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getUserConfigByKey(String str, IConfigListener iConfigListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iConfigListener != null ? iConfigListener.asBinder() : null);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void setUserConfig(String str, String str2, IConfigListener iConfigListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iConfigListener != null ? iConfigListener.asBinder() : null);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public boolean isTAIAuthOk() throws RemoteException {
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

            @Override // com.tencent.wecarbase.IAccountService
            public void appletLogin(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void checkAppletSession(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getPhoneNumber(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getAppletUserInfo(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void AppletAuth(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getAuthStatus(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getBaseCarInfo(String str, IMossCallBack iMossCallBack) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iMossCallBack != null ? iMossCallBack.asBinder() : null);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void getTaiAccountInfo(int i, Map map, String str, ITAIUserInfo iTAIUserInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeMap(map);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iTAIUserInfo != null ? iTAIUserInfo.asBinder() : null);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void logoutTaiAccount(int i, Map map, String str, String str2, String str3, ITAIUserInfo iTAIUserInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeMap(map);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(iTAIUserInfo != null ? iTAIUserInfo.asBinder() : null);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void closeAccountUI(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.wecarbase.IAccountService
            public void closeFeedbackUI(String str) throws RemoteException {
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

            @Override // com.tencent.wecarbase.IAccountService
            public WeCarContract checkContract(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? WeCarContract.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
