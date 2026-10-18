.class public Lcom/tencent/wecarspeech/vframework/RecordSyncParam;
.super Ljava/lang/Object;
.source "RecordSyncParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarspeech/vframework/RecordSyncParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFINITE_TIMEOUT:I = -0x1

.field public static final TYPE_MINIPROGRAM_PASSTHROUGH:I = 0xc

.field public static final TYPE_MINIPROGRAM_VR:I = 0xd

.field public static final TYPE_OTHER_PASSTHROUGH:I = 0xe

.field public static final TYPE_OTHER_VR:I = 0xf

.field public static final TYPE_UNDEFINED:I = -0x2

.field public static final TYPE_WECHAT_PASSTHROUGH:I = 0xa

.field public static final TYPE_WECHAT_VR:I = 0xb


# instance fields
.field private mAllowRecordInterrupted:I

.field private mCancelCmd:Ljava/lang/String;

.field private mCompleteCmd:Ljava/lang/String;

.field private mPcmPath:Ljava/lang/String;

.field private mSilenceTimeout:J

.field public mSpeechTimeout:J

.field private mType:I

.field private mVadEndTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$1;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1389

    .line 58
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSilenceTimeout:J

    const-wide/16 v0, 0x1388

    .line 59
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mVadEndTimeout:J

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCancelCmd:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCompleteCmd:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mPcmPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mAllowRecordInterrupted:I

    const-wide/32 v0, 0xea60

    .line 64
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSpeechTimeout:J

    const/4 v0, -0x2

    .line 65
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSilenceTimeout:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mVadEndTimeout:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCancelCmd:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCompleteCmd:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mPcmPath:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mAllowRecordInterrupted:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSpeechTimeout:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/vframework/RecordSyncParam$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSilenceTimeout:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mVadEndTimeout:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCancelCmd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCompleteCmd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mPcmPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mAllowRecordInterrupted:I

    return p1
.end method

.method static synthetic access$702(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mType:I

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

    .line 121
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mAllowRecordInterrupted:I

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

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCancelCmd:Ljava/lang/String;

    return-object p0
.end method

.method public getCompleteCmd()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCompleteCmd:Ljava/lang/String;

    return-object p0
.end method

.method public getPcmPath()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mPcmPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSilenceTimeout()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSilenceTimeout:J

    return-wide v0
.end method

.method public getSpeechTimeout()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSpeechTimeout:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mType:I

    return p0
.end method

.method public getVadEndTimeout()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mVadEndTimeout:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSilenceTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mVadEndTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCancelCmd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mCompleteCmd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mPcmPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget p2, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mAllowRecordInterrupted:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSpeechTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
