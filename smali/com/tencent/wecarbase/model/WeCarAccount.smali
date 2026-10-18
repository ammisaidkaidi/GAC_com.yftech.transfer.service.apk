.class public Lcom/tencent/wecarbase/model/WeCarAccount;
.super Ljava/lang/Object;
.source "WeCarAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/model/WeCarAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mQQAccount:Lcom/tencent/wecarbase/model/TxAccount;

.field private mSessionKey:Ljava/lang/String;

.field private mWeCarId:Ljava/lang/String;

.field private mWeCarKey:[B

.field private mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

.field private qqAcountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarbase/model/TxAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/tencent/wecarbase/model/WeCarAccount$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/WeCarAccount$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/model/WeCarAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->qqAcountMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->qqAcountMap:Ljava/util/HashMap;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarId:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarKey:[B

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mSessionKey:Ljava/lang/String;

    .line 115
    const-class v0, Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/model/TxAccount;

    iput-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mQQAccount:Lcom/tencent/wecarbase/model/TxAccount;

    .line 116
    const-class v0, Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    iput-object p1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQqAccount(Ljava/lang/String;)Lcom/tencent/wecarbase/model/TxAccount;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->qqAcountMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/model/TxAccount;

    return-object p0
.end method

.method public getQqAcountMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarbase/model/TxAccount;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->qqAcountMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarId:Ljava/lang/String;

    return-object p0
.end method

.method public getWxAccount()Lcom/tencent/wecarbase/model/TxAccount;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    return-object p0
.end method

.method public setQqAcount(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->qqAcountMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method public setWeCarId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarId:Ljava/lang/String;

    return-void
.end method

.method public setWxAccount(Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wecarid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sKey: "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    if-eqz v1, :cond_0

    const-string v1, ", wx account["

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/TxAccount;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWeCarKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    iget-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mQQAccount:Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarAccount;->mWxAccount:Lcom/tencent/wecarbase/model/TxAccount;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
