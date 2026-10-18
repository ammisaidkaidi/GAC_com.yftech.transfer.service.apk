.class public Lcom/tencent/taes/remote/api/account/bean/TxAccount;
.super Ljava/lang/Object;
.source "TxAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/TxAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isTokenExpired:I

.field private loginType:I

.field private mAvatarUrl:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private triggerSource:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/TxAccount$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/TxAccount$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->pkgName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mNickName:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mAvatarUrl:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->isTokenExpired:I

    const/4 v0, 0x1

    .line 199
    iget v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    if-ne v0, v1, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mPhone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    if-eqz v1, :cond_3

    .line 143
    check-cast p1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    .line 145
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 147
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mAvatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLoginType()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    return p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mPhone:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getTokenExpired()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->isTokenExpired:I

    return p0
.end method

.method public getTriggerSource()Lcom/tencent/taes/remote/api/account/bean/TriggerSource;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->triggerSource:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x29

    return p0
.end method

.method public isWX()Z
    .locals 1

    .line 68
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mNickName:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mPhone:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setTriggerSource(Lcom/tencent/taes/remote/api/account/bean/TriggerSource;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->triggerSource:Lcom/tencent/taes/remote/api/account/bean/TriggerSource;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public setisTokenExpired(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->isTokenExpired:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAvatarUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loginType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTokenExpired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->isTokenExpired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 175
    iget p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/taes/util/StringUtils;->isInteger(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    .line 179
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 178
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->isTokenExpired:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x1

    .line 183
    iget v0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->loginType:I

    if-ne p2, v0, :cond_1

    .line 184
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
