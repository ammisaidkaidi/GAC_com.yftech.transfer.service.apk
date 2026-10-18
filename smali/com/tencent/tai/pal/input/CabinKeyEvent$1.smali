.class final Lcom/tencent/tai/pal/input/CabinKeyEvent$1;
.super Ljava/lang/Object;
.source "CabinKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/input/CabinKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/tai/pal/input/CabinKeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tencent/tai/pal/input/CabinKeyEvent;
    .locals 1

    .line 313
    new-instance p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(Landroid/os/Parcel;Lcom/tencent/tai/pal/input/CabinKeyEvent$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/tencent/tai/pal/input/CabinKeyEvent;
    .locals 0

    const/4 p0, 0x0

    .line 318
    new-array p0, p0, [Lcom/tencent/tai/pal/input/CabinKeyEvent;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent$1;->a(Landroid/os/Parcel;)Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent$1;->a(I)[Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-result-object p0

    return-object p0
.end method
