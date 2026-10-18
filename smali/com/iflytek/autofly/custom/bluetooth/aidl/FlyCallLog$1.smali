.class final Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog$1;
.super Ljava/lang/Object;
.source "FlyCallLog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;
    .locals 0

    .line 174
    new-instance p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;
    .locals 0

    .line 169
    new-array p0, p1, [Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog$1;->newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;

    move-result-object p0

    return-object p0
.end method
