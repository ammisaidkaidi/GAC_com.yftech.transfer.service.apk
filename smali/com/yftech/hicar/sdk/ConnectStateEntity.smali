.class public Lcom/yftech/hicar/sdk/ConnectStateEntity;
.super Ljava/lang/Object;
.source "ConnectStateEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/hicar/sdk/ConnectStateEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectType:I

.field private connected:Z

.field private deviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/yftech/hicar/sdk/ConnectStateEntity$1;

    invoke-direct {v0}, Lcom/yftech/hicar/sdk/ConnectStateEntity$1;-><init>()V

    sput-object v0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    .line 13
    iput-object p2, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

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

    .line 73
    iget p0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    return p0
.end method

.method public setConnectType(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectStateEntity{connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", connectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget-boolean p2, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-object p2, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p0, p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;->connectType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
