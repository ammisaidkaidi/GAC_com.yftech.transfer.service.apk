.class public abstract Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;
.super Landroid/os/Binder;
.source "IOperateService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/operate/IOperateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/IOperateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/IOperateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.operate.IOperateService"

.field static final TRANSACTION_getSceneBannerInfos:I = 0x1

.field static final TRANSACTION_getSceneTipsInfos:I = 0xb

.field static final TRANSACTION_getSceneWeakPushInfos:I = 0x8

.field static final TRANSACTION_getStatusBannerInfos:I = 0x5

.field static final TRANSACTION_registerSceneBannerInfoListener:I = 0x2

.field static final TRANSACTION_registerSceneTipsInfoListener:I = 0xc

.field static final TRANSACTION_registerSceneWeakPushInfoListener:I = 0x9

.field static final TRANSACTION_registerStatusBannerInfoListener:I = 0x6

.field static final TRANSACTION_showSceneBannerDetail:I = 0x4

.field static final TRANSACTION_unregisterSceneBannerInfoListener:I = 0x3

.field static final TRANSACTION_unregisterSceneTipsInfoListener:I = 0xd

.field static final TRANSACTION_unregisterSceneWeakPushInfoListener:I = 0xa

.field static final TRANSACTION_unregisterStatusBannerInfoListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.operate.IOperateService"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/IOperateService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.operate.IOperateService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/tencent/taes/remote/api/operate/IOperateService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.taes.remote.api.operate.IOperateService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 159
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 150
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 142
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->getSceneTipsInfos()Ljava/util/List;

    move-result-object p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 133
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->unregisterSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 124
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->registerSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 116
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->getSceneWeakPushInfos()Ljava/util/List;

    move-result-object p0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 107
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->unregisterStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 98
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->registerStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 90
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->getStatusBannerInfos()Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 78
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->showSceneBannerDetail(Ljava/lang/String;Z)Z

    move-result p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 69
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->unregisterSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 60
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->registerSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 52
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->getSceneBannerInfos()Ljava/util/List;

    move-result-object p0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 47
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
