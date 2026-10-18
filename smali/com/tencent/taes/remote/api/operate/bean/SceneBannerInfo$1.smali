.class final Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$1;
.super Ljava/lang/Object;
.source "SceneBannerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;
    .locals 0

    .line 289
    new-instance p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;
    .locals 0

    .line 294
    new-array p0, p1, [Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$1;->newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;

    move-result-object p0

    return-object p0
.end method
