.class final Lcom/tencent/wecarbase/model/CloudMessage$1;
.super Ljava/lang/Object;
.source "CloudMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/model/CloudMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarbase/model/CloudMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/model/CloudMessage;
    .locals 0

    .line 216
    new-instance p0, Lcom/tencent/wecarbase/model/CloudMessage;

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/model/CloudMessage;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/model/CloudMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/model/CloudMessage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarbase/model/CloudMessage;
    .locals 0

    .line 221
    new-array p0, p1, [Lcom/tencent/wecarbase/model/CloudMessage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/model/CloudMessage$1;->newArray(I)[Lcom/tencent/wecarbase/model/CloudMessage;

    move-result-object p0

    return-object p0
.end method
