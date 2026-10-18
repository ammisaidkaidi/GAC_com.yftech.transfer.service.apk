.class public Lcom/tencent/taes/api/moss/bean/MossLabel;
.super Ljava/lang/Object;
.source "MossLabel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/taes/api/moss/bean/MossLabel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/api/moss/bean/MossLabel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appSortId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appSortId"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public sortId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sortId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/tencent/taes/api/moss/bean/MossLabel$1;

    invoke-direct {v0}, Lcom/tencent/taes/api/moss/bean/MossLabel$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/api/moss/bean/MossLabel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->id:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->appSortId:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->sortId:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/taes/api/moss/bean/MossLabel;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->sortId:I

    iget p1, p1, Lcom/tencent/taes/api/moss/bean/MossLabel;->sortId:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/tencent/taes/api/moss/bean/MossLabel;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/api/moss/bean/MossLabel;->compareTo(Lcom/tencent/taes/api/moss/bean/MossLabel;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 50
    instance-of v0, p1, Lcom/tencent/taes/api/moss/bean/MossLabel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget p0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->id:I

    check-cast p1, Lcom/tencent/taes/api/moss/bean/MossLabel;

    iget p1, p1, Lcom/tencent/taes/api/moss/bean/MossLabel;->id:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget p2, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->appSortId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->sortId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossLabel;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
