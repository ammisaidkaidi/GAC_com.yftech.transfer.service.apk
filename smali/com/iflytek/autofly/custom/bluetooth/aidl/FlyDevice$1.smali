.class final Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice$1;
.super Ljava/lang/Object;
.source "FlyDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
    .locals 0

    .line 107
    new-instance p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
    .locals 0

    .line 102
    new-array p0, p1, [Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice$1;->newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;

    move-result-object p0

    return-object p0
.end method
