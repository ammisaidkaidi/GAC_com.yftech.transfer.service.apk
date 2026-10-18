.class final Lcom/tencent/wecarspeech/vframework/RecordParam$1;
.super Ljava/lang/Object;
.source "RecordParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/RecordParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarspeech/vframework/RecordParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarspeech/vframework/RecordParam;
    .locals 0

    .line 105
    new-instance p0, Lcom/tencent/wecarspeech/vframework/RecordParam;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/vframework/RecordParam;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/vframework/RecordParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarspeech/vframework/RecordParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarspeech/vframework/RecordParam;
    .locals 0

    .line 110
    new-array p0, p1, [Lcom/tencent/wecarspeech/vframework/RecordParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/vframework/RecordParam$1;->newArray(I)[Lcom/tencent/wecarspeech/vframework/RecordParam;

    move-result-object p0

    return-object p0
.end method
