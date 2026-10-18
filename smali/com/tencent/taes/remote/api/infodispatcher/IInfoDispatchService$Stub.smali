.class public abstract Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;
.super Landroid/os/Binder;
.source "IInfoDispatchService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService"

.field static final TRANSACTION_getAppEventStateCache:I = 0x5

.field static final TRANSACTION_getStartEventCache:I = 0x4

.field static final TRANSACTION_registerInfoDispatchListener:I = 0x2

.field static final TRANSACTION_sendCacheMessage:I = 0x6

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_unregisterInfoDispatchListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.taes.remote.api.infodispatcher.IInfoDispatchService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 93
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->sendCacheMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 85
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->getAppEventStateCache()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 77
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->getStartEventCache()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 68
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->unregisterInfoDispatchListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 59
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->registerInfoDispatchListener(Lcom/tencent/taes/remote/api/infodispatcher/listener/IInfoDispatchListener;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/infodispatcher/IInfoDispatchService$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
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
