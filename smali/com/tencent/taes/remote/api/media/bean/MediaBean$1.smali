.class final Lcom/tencent/taes/remote/api/media/bean/MediaBean$1;
.super Ljava/lang/Object;
.source "MediaBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/media/bean/MediaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/media/bean/MediaBean;
    .locals 0

    .line 196
    new-instance p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/media/bean/MediaBean;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/bean/MediaBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/media/bean/MediaBean;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/media/bean/MediaBean;
    .locals 0

    .line 201
    new-array p0, p1, [Lcom/tencent/taes/remote/api/media/bean/MediaBean;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/media/bean/MediaBean$1;->newArray(I)[Lcom/tencent/taes/remote/api/media/bean/MediaBean;

    move-result-object p0

    return-object p0
.end method
