.class public interface abstract Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;
.super Ljava/lang/Object;
.source "IBluetoothPhoneListener.java"


# virtual methods
.method public abstract onAccept(Ljava/lang/String;)I
.end method

.method public abstract onCall(Ljava/lang/String;)I
.end method

.method public abstract onGetBluetoothDevice()Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
.end method

.method public abstract onGetCallLogList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onGetConnectionState()I
.end method

.method public abstract onGetContactByName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onGetContactByNumber(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onGetContactList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onGetName()Ljava/lang/String;
.end method

.method public abstract onHang(Ljava/lang/String;)I
.end method

.method public abstract onLaunchActivity(I)I
.end method

.method public abstract onRecall()I
.end method

.method public abstract onReject(Ljava/lang/String;)I
.end method

.method public abstract onServiceStatusChanged(I)V
.end method

.method public abstract onSyncPhoneBook(I)I
.end method

.method public abstract onTransfer()I
.end method
