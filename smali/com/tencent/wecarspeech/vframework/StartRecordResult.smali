.class public Lcom/tencent/wecarspeech/vframework/StartRecordResult;
.super Ljava/lang/Object;
.source "StartRecordResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/StartRecordResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarspeech/vframework/StartRecordResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL_ARBITRATION:I = -0x1

.field public static final FAIL_OTHERS:I = -0x3

.field public static final FAIL_REQUEST_MIC_FOCUS:I = -0x2

.field public static final SUCCESS:I


# instance fields
.field public mMsg:Ljava/lang/String;

.field public mRet:I

.field public mTaskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 44
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mRet:I

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mTaskId:Ljava/lang/String;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mMsg:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mRet:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mTaskId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/vframework/StartRecordResult$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/StartRecordResult;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget p2, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mRet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/StartRecordResult;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
