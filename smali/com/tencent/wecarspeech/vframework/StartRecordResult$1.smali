.class final Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;
.super Ljava/lang/Object;
.source "StartRecordResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/StartRecordResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/wecarspeech/vframework/StartRecordResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;
    .locals 0

    .line 58
    new-instance p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/wecarspeech/vframework/StartRecordResult;
    .locals 0

    .line 63
    new-array p0, p1, [Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;->newArray(I)[Lcom/tencent/wecarspeech/vframework/StartRecordResult;

    move-result-object p0

    return-object p0
.end method
