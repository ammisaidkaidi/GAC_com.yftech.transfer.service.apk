.class public abstract Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;
.super Landroid/os/Binder;
.source "IPushDispatchService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/push/IPushDispatchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/push/IPushDispatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.push.IPushDispatchService"

.field static final TRANSACTION_addMessage:I = 0x4

.field static final TRANSACTION_registerMockPushListener:I = 0x2

.field static final TRANSACTION_registerPushConnectionStateListener:I = 0x3

.field static final TRANSACTION_registerPushDispatchListener:I = 0x1

.field static final TRANSACTION_subscribe:I = 0x5

.field static final TRANSACTION_unsubscribe:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.push.IPushDispatchService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushDispatchService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.push.IPushDispatchService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/taes/remote/api/push/IPushDispatchService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/taes/remote/api/push/IPushDispatchService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.tencent.taes.remote.api.push.IPushDispatchService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 103
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->unsubscribe(Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 92
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;

    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->subscribe(Ljava/util/List;Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 79
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->addMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 70
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->registerPushConnectionStateListener(Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 61
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/push/IPushDispatchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushDispatchListener;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->registerMockPushListener(Lcom/tencent/taes/remote/api/push/IPushDispatchListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 50
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/push/IPushDispatchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/push/IPushDispatchListener;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/push/IPushDispatchService$Stub;->registerPushDispatchListener(Ljava/lang/String;Lcom/tencent/taes/remote/api/push/IPushDispatchListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
