.class final Lcom/tencent/taes/remote/api/account/bean/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/account/bean/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/account/bean/Model;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/account/bean/Model;
    .locals 0

    .line 42
    new-instance p0, Lcom/tencent/taes/remote/api/account/bean/Model;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/account/bean/Model;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/bean/Model$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/account/bean/Model;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/account/bean/Model;
    .locals 0

    .line 47
    new-array p0, p1, [Lcom/tencent/taes/remote/api/account/bean/Model;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/bean/Model$1;->newArray(I)[Lcom/tencent/taes/remote/api/account/bean/Model;

    move-result-object p0

    return-object p0
.end method
