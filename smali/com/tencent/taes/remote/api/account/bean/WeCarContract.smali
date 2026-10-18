.class public Lcom/tencent/taes/remote/api/account/bean/WeCarContract;
.super Ljava/lang/Object;
.source "WeCarContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/WeCarContract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auth:I

.field private available:Z

.field private brandName:Ljava/lang/String;

.field private carModel:Ljava/lang/String;

.field private endTime:J

.field private productId:Ljava/lang/String;

.field private remainTime:J

.field private startTime:J

.field private wxRegDid:Ljava/lang/String;

.field private wxSign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/WeCarContract$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->auth:I

    .line 28
    iput-wide p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->startTime:J

    .line 29
    iput-wide p4, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->endTime:J

    .line 30
    iput-wide p6, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->remainTime:J

    .line 31
    iput-object p8, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxSign:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxRegDid:Ljava/lang/String;

    .line 33
    iput-boolean p10, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->available:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->auth:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->startTime:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->endTime:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->remainTime:J

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxSign:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxRegDid:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->available:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->productId:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->brandName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->carModel:Ljava/lang/String;

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

    .line 40
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->auth:I

    return p0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->brandName:Ljava/lang/String;

    return-object p0
.end method

.method public getCarModel()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->carModel:Ljava/lang/String;

    return-object p0
.end method

.method public getEndTime()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->endTime:J

    return-wide v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public getRemainTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->remainTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->startTime:J

    return-wide v0
.end method

.method public getWxRegDid()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxRegDid:Ljava/lang/String;

    return-object p0
.end method

.method public getWxSign()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxSign:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->available:Z

    return p0
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->brandName:Ljava/lang/String;

    return-void
.end method

.method public setCarModel(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->carModel:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->productId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeCarContract{startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->remainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wxSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wxRegDid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxRegDid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brandName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->brandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->carModel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 145
    iget p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->auth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->remainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->wxRegDid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->available:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->brandName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->carModel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
