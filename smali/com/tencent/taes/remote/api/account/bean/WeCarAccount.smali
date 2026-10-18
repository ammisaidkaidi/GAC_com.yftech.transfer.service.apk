.class public Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;
.super Ljava/lang/Object;
.source "WeCarAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;

.field private mWeCarId:Ljava/lang/String;

.field private mWeCarKey:[B

.field private mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarKey:[B

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mSessionKey:Ljava/lang/String;

    .line 102
    const-class v0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarId:Ljava/lang/String;

    return-object p0
.end method

.method public getWxAccount()Lcom/tencent/taes/remote/api/account/bean/TxAccount;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method public setWeCarId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarId:Ljava/lang/String;

    return-void
.end method

.method public setWxAccount(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wecarid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sKey: "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    if-eqz v1, :cond_0

    const-string v1, ", wx account["

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWeCarKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mWxAccount:Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
