.class public Lcom/yftech/hicar/sdk/HiCarDeviceEntity;
.super Ljava/lang/Object;
.source "HiCarDeviceEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/hicar/sdk/HiCarDeviceEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectType:I

.field private connected:Z

.field private lastConnectTime:Ljava/lang/String;

.field private phoneBrMac:Ljava/lang/String;

.field private phoneId:Ljava/lang/String;

.field private phoneName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity$1;

    invoke-direct {v0}, Lcom/yftech/hicar/sdk/HiCarDeviceEntity$1;-><init>()V

    sput-object v0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneBrMac:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->lastConnectTime:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connected:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connectType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneBrMac:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->lastConnectTime:Ljava/lang/String;

    .line 25
    iput-boolean p5, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connected:Z

    .line 26
    iput p6, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connectType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectType()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connectType:I

    return p0
.end method

.method public getLastConnectTime()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->lastConnectTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneBrMac()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneBrMac:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneName:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connected:Z

    return p0
.end method

.method public setConnectType(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connectType:I

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connected:Z

    return-void
.end method

.method public setLastConnectTime(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->lastConnectTime:Ljava/lang/String;

    return-void
.end method

.method public setPhoneBrMac(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneBrMac:Ljava/lang/String;

    return-void
.end method

.method public setPhoneId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneId:Ljava/lang/String;

    return-void
.end method

.method public setPhoneName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 57
    iget-object p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->phoneBrMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->lastConnectTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-boolean p2, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget p0, p0, Lcom/yftech/hicar/sdk/HiCarDeviceEntity;->connectType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
