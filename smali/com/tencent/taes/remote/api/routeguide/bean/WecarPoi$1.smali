.class final Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi$1;
.super Ljava/lang/Object;
.source "WecarPoi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;
    .locals 0

    .line 54
    new-instance p0, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;
    .locals 0

    .line 59
    new-array p0, p1, [Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi$1;->newArray(I)[Lcom/tencent/taes/remote/api/routeguide/bean/WecarPoi;

    move-result-object p0

    return-object p0
.end method
