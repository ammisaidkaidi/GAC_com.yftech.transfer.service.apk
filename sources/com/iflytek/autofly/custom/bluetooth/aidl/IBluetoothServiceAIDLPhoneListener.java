package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothServiceAIDLPhoneListener extends IInterface {
    int onAccept(String str) throws RemoteException;

    int onCall(String str) throws RemoteException;

    FlyDevice onGetBluetoothDevice() throws RemoteException;

    List<FlyCallLog> onGetCallLogList() throws RemoteException;

    int onGetConnectionState() throws RemoteException;

    List<FlyContact> onGetContactByName(String str) throws RemoteException;

    List<FlyContact> onGetContactByNumber(String str) throws RemoteException;

    List<FlyContact> onGetContactList() throws RemoteException;

    String onGetName() throws RemoteException;

    int onHang(String str) throws RemoteException;

    int onLaunchActivity(int i) throws RemoteException;

    int onRecall() throws RemoteException;

    int onReject(String str) throws RemoteException;

    int onSyncPhoneBook(int i) throws RemoteException;

    int onTransfer() throws RemoteException;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Stub extends Binder implements IBluetoothServiceAIDLPhoneListener {
        private static final String DESCRIPTOR = "com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener";
        static final int TRANSACTION_onAccept = 7;
        static final int TRANSACTION_onCall = 3;
        static final int TRANSACTION_onGetBluetoothDevice = 13;
        static final int TRANSACTION_onGetCallLogList = 14;
        static final int TRANSACTION_onGetConnectionState = 2;
        static final int TRANSACTION_onGetContactByName = 9;
        static final int TRANSACTION_onGetContactByNumber = 10;
        static final int TRANSACTION_onGetContactList = 8;
        static final int TRANSACTION_onGetName = 1;
        static final int TRANSACTION_onHang = 5;
        static final int TRANSACTION_onLaunchActivity = 12;
        static final int TRANSACTION_onRecall = 4;
        static final int TRANSACTION_onReject = 6;
        static final int TRANSACTION_onSyncPhoneBook = 15;
        static final int TRANSACTION_onTransfer = 11;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothServiceAIDLPhoneListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IBluetoothServiceAIDLPhoneListener)) {
                return (IBluetoothServiceAIDLPhoneListener) queryLocalInterface;
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
                    String onGetName = onGetName();
                    parcel2.writeNoException();
                    parcel2.writeString(onGetName);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onGetConnectionState = onGetConnectionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(onGetConnectionState);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onCall = onCall(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onCall);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onRecall = onRecall();
                    parcel2.writeNoException();
                    parcel2.writeInt(onRecall);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onHang = onHang(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onHang);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onReject = onReject(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onReject);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onAccept = onAccept(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onAccept);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<FlyContact> onGetContactList = onGetContactList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(onGetContactList);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<FlyContact> onGetContactByName = onGetContactByName(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(onGetContactByName);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<FlyContact> onGetContactByNumber = onGetContactByNumber(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(onGetContactByNumber);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onTransfer = onTransfer();
                    parcel2.writeNoException();
                    parcel2.writeInt(onTransfer);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onLaunchActivity = onLaunchActivity(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onLaunchActivity);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    FlyDevice onGetBluetoothDevice = onGetBluetoothDevice();
                    parcel2.writeNoException();
                    if (onGetBluetoothDevice != null) {
                        parcel2.writeInt(1);
                        onGetBluetoothDevice.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<FlyCallLog> onGetCallLogList = onGetCallLogList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(onGetCallLogList);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onSyncPhoneBook = onSyncPhoneBook(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onSyncPhoneBook);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class Proxy implements IBluetoothServiceAIDLPhoneListener {
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

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public String onGetName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onGetConnectionState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onCall(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onRecall() throws RemoteException {
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

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onHang(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onReject(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onAccept(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public List<FlyContact> onGetContactList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(FlyContact.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public List<FlyContact> onGetContactByName(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(FlyContact.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public List<FlyContact> onGetContactByNumber(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(FlyContact.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onTransfer() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onLaunchActivity(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public FlyDevice onGetBluetoothDevice() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? FlyDevice.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public List<FlyCallLog> onGetCallLogList() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(FlyCallLog.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.iflytek.autofly.custom.bluetooth.aidl.IBluetoothServiceAIDLPhoneListener
            public int onSyncPhoneBook(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(15, obtain, obtain2, 0);
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
