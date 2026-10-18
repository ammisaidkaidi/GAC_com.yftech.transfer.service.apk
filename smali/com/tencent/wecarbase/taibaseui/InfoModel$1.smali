.class final Lcom/tencent/wecarbase/taibaseui/InfoModel$1;
.super Ljava/lang/Object;
.source "InfoModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/InfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarbase/taibaseui/InfoModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/taibaseui/InfoModel;
    .locals 2

    .line 62
    new-instance p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/wecarbase/taibaseui/InfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/InfoModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/taibaseui/InfoModel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarbase/taibaseui/InfoModel;
    .locals 0

    .line 67
    new-array p0, p1, [Lcom/tencent/wecarbase/taibaseui/InfoModel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/taibaseui/InfoModel$1;->newArray(I)[Lcom/tencent/wecarbase/taibaseui/InfoModel;

    move-result-object p0

    return-object p0
.end method
