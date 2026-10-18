.class final Lcom/yftech/hicar/sdk/HiCarDeviceEntity$1;
.super Ljava/lang/Object;
.source "HiCarDeviceEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/HiCarDeviceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yftech/hicar/sdk/HiCarDeviceEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yftech/hicar/sdk/HiCarDeviceEntity;
    .locals 0

    .line 41
    new-instance p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;

    invoke-direct {p0, p1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yftech/hicar/sdk/HiCarDeviceEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yftech/hicar/sdk/HiCarDeviceEntity;
    .locals 0

    .line 46
    new-array p0, p1, [Lcom/yftech/hicar/sdk/HiCarDeviceEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity$1;->newArray(I)[Lcom/yftech/hicar/sdk/HiCarDeviceEntity;

    move-result-object p0

    return-object p0
.end method
