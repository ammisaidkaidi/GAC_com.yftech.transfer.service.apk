.class public Lcom/tencent/wecarbase/model/WeCarContract;
.super Ljava/lang/Object;
.source "WeCarContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/model/WeCarContract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auth:I

.field private available:Z

.field private endTime:J

.field private remainTime:J

.field private startTime:J

.field private wxSign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/tencent/wecarbase/model/WeCarContract$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/WeCarContract$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/model/WeCarContract;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJJLjava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->auth:I

    .line 24
    iput-wide p2, p0, Lcom/tencent/wecarbase/model/WeCarContract;->startTime:J

    .line 25
    iput-wide p4, p0, Lcom/tencent/wecarbase/model/WeCarContract;->endTime:J

    .line 26
    iput-wide p6, p0, Lcom/tencent/wecarbase/model/WeCarContract;->remainTime:J

    .line 27
    iput-object p8, p0, Lcom/tencent/wecarbase/model/WeCarContract;->wxSign:Ljava/lang/String;

    .line 28
    iput-boolean p9, p0, Lcom/tencent/wecarbase/model/WeCarContract;->available:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->auth:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->startTime:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->endTime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->remainTime:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->wxSign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuth()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->auth:I

    return p0
.end method

.method public getEndTime()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->endTime:J

    return-wide v0
.end method

.method public getRemainTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->remainTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->startTime:J

    return-wide v0
.end method

.method public getWxSign()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->wxSign:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->available:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarContract{startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->remainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wxSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/model/WeCarContract;->wxSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->available:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 100
    iget p2, p0, Lcom/tencent/wecarbase/model/WeCarContract;->auth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->remainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object p0, p0, Lcom/tencent/wecarbase/model/WeCarContract;->wxSign:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
