.class public Lcom/tencent/vrcommon/app/CloseParams;
.super Ljava/lang/Object;
.source "CloseParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrcommon/app/CloseParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/vrcommon/app/CloseParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CLOSE_ALL_VR_UI:I = 0x2

.field public static final TYPE_CLOSE_VR_SPRITE:I = 0x3

.field public static final TYPE_CLOSE_WIDGET_CONTAINER:I = 0x1


# instance fields
.field private mCloseDelay:J

.field private mCloseType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/tencent/vrcommon/app/CloseParams$1;

    invoke-direct {v0}, Lcom/tencent/vrcommon/app/CloseParams$1;-><init>()V

    sput-object v0, Lcom/tencent/vrcommon/app/CloseParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseType:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/tencent/vrcommon/app/CloseParams$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/tencent/vrcommon/app/CloseParams;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseType:I

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/vrcommon/app/CloseParams;I)I
    .locals 0

    .line 8
    iput p1, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseType:I

    return p1
.end method

.method static synthetic access$202(Lcom/tencent/vrcommon/app/CloseParams;J)J
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseDelay:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCloseDelay()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseDelay:J

    return-wide v0
.end method

.method public getCloseType()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseType:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget p0, p0, Lcom/tencent/vrcommon/app/CloseParams;->mCloseType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
