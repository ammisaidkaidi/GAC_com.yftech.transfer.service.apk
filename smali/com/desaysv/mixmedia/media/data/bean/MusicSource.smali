.class public Lcom/desaysv/mixmedia/media/data/bean/MusicSource;
.super Ljava/lang/Object;
.source "MusicSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/desaysv/mixmedia/media/data/bean/MusicSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectState:I

.field private select:Z

.field private sourceName:Ljava/lang/String;

.field private sourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource$1;

    invoke-direct {v0}, Lcom/desaysv/mixmedia/media/data/bean/MusicSource$1;-><init>()V

    sput-object v0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "\u9177\u72d7\u97f3\u4e50"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;-><init>(Ljava/lang/String;IZI)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    .line 16
    iput-boolean p3, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    .line 17
    iput p4, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectState()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    return p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    return p0
.end method

.method public isSelect()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    return p0
.end method

.method public setConnectState(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSource{sourceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget-object p2, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->sourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-boolean p2, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->select:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/MusicSource;->connectState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
