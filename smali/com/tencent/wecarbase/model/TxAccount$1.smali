.class final Lcom/tencent/wecarbase/model/TxAccount$1;
.super Ljava/lang/Object;
.source "TxAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/model/TxAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarbase/model/TxAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/model/TxAccount;
    .locals 0

    .line 180
    new-instance p0, Lcom/tencent/wecarbase/model/TxAccount;

    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/model/TxAccount;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/model/TxAccount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarbase/model/TxAccount;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarbase/model/TxAccount;
    .locals 0

    .line 185
    new-array p0, p1, [Lcom/tencent/wecarbase/model/TxAccount;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/model/TxAccount$1;->newArray(I)[Lcom/tencent/wecarbase/model/TxAccount;

    move-result-object p0

    return-object p0
.end method
