.class public abstract Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub;
.super Landroid/os/Binder;
.source "ITaiUpdateService.java"

# interfaces
.implements Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wecarbase.taiupdate.ITaiUpdateService"

.field static final TRANSACTION_syncVersionInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.wecarbase.taiupdate.ITaiUpdateService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.wecarbase.taiupdate.ITaiUpdateService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "com.tencent.wecarbase.taiupdate.ITaiUpdateService"

    .line 44
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "com.tencent.wecarbase.taiupdate.ITaiUpdateService"

    .line 49
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub;->syncVersionInfo(Ljava/util/Map;Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
