.class public Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;
.super Ljava/lang/Object;
.source "FlyDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice$1;

    invoke-direct {v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice$1;-><init>()V

    sput-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 28
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mName:Ljava/lang/String;

    const-string v0, "00:00:00:00:00:00"

    .line 29
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mAddress:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mState:I

    return p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyDevice;->mState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
