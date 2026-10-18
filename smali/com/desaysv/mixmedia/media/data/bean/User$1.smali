.class Lcom/desaysv/mixmedia/media/data/bean/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desaysv/mixmedia/media/data/bean/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/desaysv/mixmedia/media/data/bean/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/desaysv/mixmedia/media/data/bean/User;
    .locals 0

    .line 65
    new-instance p0, Lcom/desaysv/mixmedia/media/data/bean/User;

    invoke-direct {p0, p1}, Lcom/desaysv/mixmedia/media/data/bean/User;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/desaysv/mixmedia/media/data/bean/User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/desaysv/mixmedia/media/data/bean/User;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/desaysv/mixmedia/media/data/bean/User;
    .locals 0

    .line 70
    new-array p0, p1, [Lcom/desaysv/mixmedia/media/data/bean/User;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/desaysv/mixmedia/media/data/bean/User$1;->newArray(I)[Lcom/desaysv/mixmedia/media/data/bean/User;

    move-result-object p0

    return-object p0
.end method
