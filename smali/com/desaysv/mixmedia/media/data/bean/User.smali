.class public Lcom/desaysv/mixmedia/media/data/bean/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/desaysv/mixmedia/media/data/bean/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private expireTime:Ljava/lang/String;

.field private isBind:Z

.field private isLogin:Z

.field private isVip:Z

.field private nickName:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private vipEndTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/desaysv/mixmedia/media/data/bean/User$1;

    invoke-direct {v0}, Lcom/desaysv/mixmedia/media/data/bean/User$1;-><init>()V

    sput-object v0, Lcom/desaysv/mixmedia/media/data/bean/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-string v1, ""

    const-string v2, ""

    const-string v3, "guest"

    const-string v4, ""

    const-string v5, "0"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 29
    invoke-direct/range {v0 .. v8}, Lcom/desaysv/mixmedia/media/data/bean/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->token:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isBind:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->token:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    .line 24
    iput-boolean p7, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    .line 25
    iput-boolean p8, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireTime()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    return-object p0
.end method

.method public isBind()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isBind:Z

    return p0
.end method

.method public isLogin()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    return p0
.end method

.method public isVip()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    return p0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBind(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isBind:Z

    return-void
.end method

.method public setExpireTime(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    return-void
.end method

.method public setLogin(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    return-void
.end method

.method public setVipEndTime(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vipEndTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isVip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isBind:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->expireTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->vipEndTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isVip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-boolean p2, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isLogin:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/User;->isBind:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
