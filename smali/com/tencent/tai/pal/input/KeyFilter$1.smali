.class final Lcom/tencent/tai/pal/input/KeyFilter$1;
.super Ljava/lang/Object;
.source "KeyFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/input/KeyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/tai/pal/input/KeyFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tencent/tai/pal/input/KeyFilter;
    .locals 0

    .line 72
    new-instance p0, Lcom/tencent/tai/pal/input/KeyFilter;

    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/input/KeyFilter;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/tencent/tai/pal/input/KeyFilter;
    .locals 0

    .line 77
    new-array p0, p1, [Lcom/tencent/tai/pal/input/KeyFilter;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/input/KeyFilter$1;->a(Landroid/os/Parcel;)Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/input/KeyFilter$1;->a(I)[Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object p0

    return-object p0
.end method
