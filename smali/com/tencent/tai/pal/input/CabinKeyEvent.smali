.class public Lcom/tencent/tai/pal/input/CabinKeyEvent;
.super Ljava/lang/Object;
.source "CabinKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ACTION_CLICK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DOWN:I = 0x1

.field static final ACTION_LONG_PRESS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UP:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/tai/pal/input/CabinKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CODE_ASSISTANT:I = 0x7

.field public static final KEY_CODE_ASSISTANT_EXIT:I = 0xb

.field public static final KEY_CODE_CENTER:I = 0x5

.field public static final KEY_CODE_DOWN:I = 0x2

.field public static final KEY_CODE_LEFT:I = 0x3

.field public static final KEY_CODE_MEDIA_FAST_FORWARD:I = 0xd

.field public static final KEY_CODE_MEDIA_NEXT:I = 0x9

.field public static final KEY_CODE_MEDIA_PREVIOUS:I = 0x8

.field public static final KEY_CODE_MEDIA_REWIND:I = 0xc

.field public static final KEY_CODE_MESSAGING:I = 0x6

.field public static final KEY_CODE_MESSAGING_EXIT:I = 0xa

.field public static final KEY_CODE_RIGHT:I = 0x4

.field public static final KEY_CODE_TENCENT_MEETING_MICROPHONE_SWITCH:I = 0xe

.field public static final KEY_CODE_UNKNOWN:I = 0x0

.field public static final KEY_CODE_UP:I = 0x1

.field public static final SOURCE_BLUETOOTH_CONTROLLER:I = 0x2

.field public static final SOURCE_STEERING_WHEEL:I = 0x1


# instance fields
.field private mAction:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/tencent/tai/pal/input/CabinKeyEvent$1;

    invoke-direct {v0}, Lcom/tencent/tai/pal/input/CabinKeyEvent$1;-><init>()V

    sput-object v0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJ)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput p1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mSource:I

    .line 238
    iput p2, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mAction:I

    .line 239
    iput p3, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mKeyCode:I

    .line 240
    iput-wide p4, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mDownTime:J

    .line 241
    iput-wide p6, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mEventTime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mSource:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mAction:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mKeyCode:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mDownTime:J

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mEventTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/tai/pal/input/CabinKeyEvent$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAction()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mAction:I

    return p0
.end method

.method public getDownTime()J
    .locals 2

    .line 292
    iget-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public getKeyCode()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mKeyCode:I

    return p0
.end method

.method public getSource()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mSource:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CabinKeyEvent{src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 332
    iget p2, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget p2, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget p2, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    iget-wide v0, p0, Lcom/tencent/tai/pal/input/CabinKeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
