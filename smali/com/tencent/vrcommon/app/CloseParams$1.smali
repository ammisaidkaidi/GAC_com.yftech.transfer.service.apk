.class final Lcom/tencent/vrcommon/app/CloseParams$1;
.super Ljava/lang/Object;
.source "CloseParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrcommon/app/CloseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/vrcommon/app/CloseParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/app/CloseParams;
    .locals 0

    .line 76
    new-instance p0, Lcom/tencent/vrcommon/app/CloseParams;

    invoke-direct {p0, p1}, Lcom/tencent/vrcommon/app/CloseParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/app/CloseParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/app/CloseParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/vrcommon/app/CloseParams;
    .locals 0

    .line 81
    new-array p0, p1, [Lcom/tencent/vrcommon/app/CloseParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/app/CloseParams$1;->newArray(I)[Lcom/tencent/vrcommon/app/CloseParams;

    move-result-object p0

    return-object p0
.end method
