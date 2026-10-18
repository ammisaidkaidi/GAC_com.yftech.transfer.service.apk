.class public Lcom/tencent/wecarspeech/vframework/RecordParam;
.super Ljava/lang/Object;
.source "RecordParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarspeech/vframework/RecordParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFINITE_TIMEOUT:I = -0x1


# instance fields
.field private mAllowRecordInterrupted:I

.field private mCancelCmd:Ljava/lang/String;

.field private mCompleteCmd:Ljava/lang/String;

.field private mPcmPath:Ljava/lang/String;

.field private mSilenceTimeout:J

.field private mVadEndTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/tencent/wecarspeech/vframework/RecordParam$1;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/vframework/RecordParam$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/vframework/RecordParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1389

    .line 18
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mSilenceTimeout:J

    const-wide/16 v0, 0x1388

    .line 19
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mVadEndTimeout:J

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCancelCmd:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCompleteCmd:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mPcmPath:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mSilenceTimeout:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mVadEndTimeout:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCancelCmd:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCompleteCmd:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mPcmPath:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mAllowRecordInterrupted:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/vframework/RecordParam$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/RecordParam;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/wecarspeech/vframework/RecordParam;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mSilenceTimeout:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/tencent/wecarspeech/vframework/RecordParam;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mVadEndTimeout:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCancelCmd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCompleteCmd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mPcmPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/tencent/wecarspeech/vframework/RecordParam;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mAllowRecordInterrupted:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowRecordInterrupted()Z
    .locals 1

    .line 75
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mAllowRecordInterrupted:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCancelCmd()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCancelCmd:Ljava/lang/String;

    return-object p0
.end method

.method public getCompleteCmd()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCompleteCmd:Ljava/lang/String;

    return-object p0
.end method

.method public getPcmPath()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mPcmPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSilenceTimeout()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mSilenceTimeout:J

    return-wide v0
.end method

.method public getVadEndTimeout()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mVadEndTimeout:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mSilenceTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mVadEndTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCancelCmd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mCompleteCmd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mPcmPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam;->mAllowRecordInterrupted:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
