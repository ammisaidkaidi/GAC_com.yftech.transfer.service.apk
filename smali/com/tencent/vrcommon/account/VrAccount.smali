.class public Lcom/tencent/vrcommon/account/VrAccount;
.super Ljava/lang/Object;
.source "VrAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/vrcommon/account/VrAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvatarUrl:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mWeCarId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/tencent/vrcommon/account/VrAccount$1;

    invoke-direct {v0}, Lcom/tencent/vrcommon/account/VrAccount$1;-><init>()V

    sput-object v0, Lcom/tencent/vrcommon/account/VrAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mNickName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mAvatarUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mWeCarId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/vrcommon/account/VrAccount;->mUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mAvatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mWeCarId:Ljava/lang/String;

    return-object p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/vrcommon/account/VrAccount;->mAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/vrcommon/account/VrAccount;->mNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/vrcommon/account/VrAccount;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public setWeCarId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/vrcommon/account/VrAccount;->mWeCarId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 76
    iget-object p2, p0, Lcom/tencent/vrcommon/account/VrAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/tencent/vrcommon/account/VrAccount;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/tencent/vrcommon/account/VrAccount;->mWeCarId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/tencent/vrcommon/account/VrAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
