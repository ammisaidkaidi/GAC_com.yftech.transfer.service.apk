.class public Lcom/tencent/vrcommon/app/LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/vrcommon/app/LaunchParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_SETTING_HELP:I = 0x0

.field public static final INDEX_SETTING_JD:I = 0x2

.field public static final INDEX_SETTING_SETTING:I = 0x1

.field public static final TYPE_ACTIVE_SPRITE:I = 0x6

.field public static final TYPE_CLOSE_HELP:I = 0xa

.field public static final TYPE_CLOSE_SETTING:I = 0x9

.field public static final TYPE_OPEN_WIDGET_CONTAINER:I = 0x8

.field public static final TYPE_SHOW_DATA_UPGRADE:I = 0x4

.field public static final TYPE_SHOW_HELP:I = 0x3

.field public static final TYPE_SHOW_SETTING:I = 0x2

.field public static final TYPE_START_ASR:I = 0x1

.field public static final TYPE_UPDATE_SPRITE:I = 0x7


# instance fields
.field private mAsrTTS:Ljava/lang/String;

.field private mAutoClose:Z

.field private mDimBehind:Z

.field private mDoaDirectionMode:I

.field private mLaunchType:I

.field private mPageIndex:I

.field private mPlayAsrBee:Z

.field private mSpriteModal:Z

.field private mWakeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    new-instance v0, Lcom/tencent/vrcommon/app/LaunchParams$1;

    invoke-direct {v0}, Lcom/tencent/vrcommon/app/LaunchParams$1;-><init>()V

    sput-object v0, Lcom/tencent/vrcommon/app/LaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    .line 45
    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mLaunchType:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/tencent/vrcommon/app/LaunchParams$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vrcommon/app/LaunchParams;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mLaunchType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mSpriteModal:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDimBehind:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPlayAsrBee:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mWakeType:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAsrTTS:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAutoClose:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDoaDirectionMode:I

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPlayAsrBee:Z

    return p1
.end method

.method static synthetic access$202(Lcom/tencent/vrcommon/app/LaunchParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mWakeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/vrcommon/app/LaunchParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAsrTTS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mSpriteModal:Z

    return p1
.end method

.method static synthetic access$502(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDimBehind:Z

    return p1
.end method

.method static synthetic access$602(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAutoClose:Z

    return p1
.end method

.method static synthetic access$702(Lcom/tencent/vrcommon/app/LaunchParams;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    return p1
.end method

.method static synthetic access$802(Lcom/tencent/vrcommon/app/LaunchParams;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDoaDirectionMode:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAsrTTS()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAsrTTS:Ljava/lang/String;

    return-object p0
.end method

.method public getDoaDirectionMode()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDoaDirectionMode:I

    return p0
.end method

.method public getLaunchType()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mLaunchType:I

    return p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    return p0
.end method

.method public getWakeType()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mWakeType:Ljava/lang/String;

    return-object p0
.end method

.method public isAsrSoundEnabled()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPlayAsrBee:Z

    return p0
.end method

.method public isAutoCloseEnabled()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAutoClose:Z

    return p0
.end method

.method public isDimBehind()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDimBehind:Z

    return p0
.end method

.method public isSpriteModal()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mSpriteModal:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 215
    iget p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mLaunchType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-boolean p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mSpriteModal:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 217
    iget-boolean p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDimBehind:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    iget-boolean p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPlayAsrBee:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget-object p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mWakeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAsrTTS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mAutoClose:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget p2, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mPageIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget p0, p0, Lcom/tencent/vrcommon/app/LaunchParams;->mDoaDirectionMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
