.class public Lcom/tencent/wecarbase/taibaseui/InfoModel;
.super Ljava/lang/Object;
.source "InfoModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/taibaseui/InfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageResId:I

.field private title1:Ljava/lang/String;

.field private title2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/InfoModel$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/taibaseui/InfoModel$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title1:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title2:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->imageResId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImageResId()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->imageResId:I

    return p0
.end method

.method public getTitle1()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title1:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle2()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title2:Ljava/lang/String;

    return-object p0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->imageResId:I

    return-void
.end method

.method public setTitle1(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title1:Ljava/lang/String;

    return-void
.end method

.method public setTitle2(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title2:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->title2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget p0, p0, Lcom/tencent/wecarbase/taibaseui/InfoModel;->imageResId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
