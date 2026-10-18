.class final Lcom/tencent/wecarbase/policy/Response$1;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/policy/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarbase/policy/Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 48
    new-instance p0, Lcom/tencent/wecarbase/policy/Response;

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/policy/Response;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/policy/Response$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 53
    new-array p0, p1, [Lcom/tencent/wecarbase/policy/Response;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/policy/Response$1;->newArray(I)[Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method
