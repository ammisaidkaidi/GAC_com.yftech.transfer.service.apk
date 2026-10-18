.class public Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;
.super Ljava/lang/Object;
.source "TipsHint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint$1;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    return-object p0
.end method

.method public getTips()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    return-object p0
.end method

.method public hasHints()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTips()Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mTips:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->mHints:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
