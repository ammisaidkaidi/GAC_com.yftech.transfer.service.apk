.class public abstract Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;
.super Landroid/os/Binder;
.source "IDashboardServiceAIDLListener.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener"

.field static final TRANSACTION_onCheckDashboardValid:I = 0x1

.field static final TRANSACTION_onGetDashboradStatus:I = 0x4

.field static final TRANSACTION_onSendData:I = 0x2

.field static final TRANSACTION_onSendDataString:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.iflytek.autofly.custom.dashboard.aidl.IDashboardServiceAIDLListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 86
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;->onGetDashboradStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 71
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;->onSendDataString(IIILjava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 56
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;->onSendData(III[B)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener$Stub;->onCheckDashboardValid()Z

    move-result p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
