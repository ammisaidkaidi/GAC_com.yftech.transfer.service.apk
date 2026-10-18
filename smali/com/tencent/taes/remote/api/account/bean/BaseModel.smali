.class public Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.super Lcom/tencent/taes/remote/api/account/bean/Model;
.source "BaseModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private nonce:J

.field private sKey:Ljava/lang/String;

.field private xtraceid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/account/bean/Model;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->xtraceid:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->sKey:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->nonce:J

    return-void
.end method


# virtual methods
.method public getBNonce()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->nonce:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->sKey:Ljava/lang/String;

    return-object p0
.end method

.method public getXtraceid()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->xtraceid:Ljava/lang/String;

    return-object p0
.end method

.method public setBNonce(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->nonce:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->sKey:Ljava/lang/String;

    return-void
.end method

.method public setXtraceid(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->xtraceid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/bean/Model;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->xtraceid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->sKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->nonce:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
