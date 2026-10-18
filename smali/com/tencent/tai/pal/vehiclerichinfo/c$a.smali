.class public abstract Lcom/tencent/tai/pal/vehiclerichinfo/c$a;
.super Landroid/os/Binder;
.source "IVehicleRichInfoAidl.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclerichinfo/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/vehiclerichinfo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/vehiclerichinfo/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/tai/pal/vehiclerichinfo/c;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/tai/pal/vehiclerichinfo/c;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/tai/pal/vehiclerichinfo/c$a$a;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfoAidl"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 94
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->b()I

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 85
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/a;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->b(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 76
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/a;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->a(Lcom/tencent/tai/pal/vehiclerichinfo/a;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 68
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->a()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 59
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/b;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->b(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 50
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/vehiclerichinfo/b;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/c$a;->a(Lcom/tencent/tai/pal/vehiclerichinfo/b;)V

    .line 54
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
