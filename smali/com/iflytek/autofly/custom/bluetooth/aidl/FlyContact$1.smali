.class final Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact$1;
.super Ljava/lang/Object;
.source "FlyContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;
    .locals 2

    .line 275
    new-instance p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/HashMap;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;
    .locals 0

    .line 270
    new-array p0, p1, [Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact$1;->newArray(I)[Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;

    move-result-object p0

    return-object p0
.end method
