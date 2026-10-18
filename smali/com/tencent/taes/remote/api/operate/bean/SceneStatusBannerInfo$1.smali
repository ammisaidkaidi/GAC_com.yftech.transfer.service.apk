.class final Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$1;
.super Ljava/lang/Object;
.source "SceneStatusBannerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;
    .locals 0

    .line 336
    new-instance p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;
    .locals 0

    .line 341
    new-array p0, p1, [Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$1;->newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;

    move-result-object p0

    return-object p0
.end method
