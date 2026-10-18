.class public abstract Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub;
.super Landroid/os/Binder;
.source "IRecorderGetService.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/IRecorderGetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/IRecorderGetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wecarspeech.sdk.IRecorderGetService"

.field static final TRANSACTION_registerRecorder:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.wecarspeech.sdk.IRecorderGetService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/sdk/IRecorderGetService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.wecarspeech.sdk.IRecorderGetService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/wecarspeech/sdk/IRecorderGetService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/wecarspeech/sdk/IRecorderGetService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.wecarspeech.sdk.IRecorderGetService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 50
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/IClientRecorder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/sdk/IClientRecorder;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub;->registerRecorder(Lcom/tencent/wecarspeech/sdk/IClientRecorder;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
