.class public Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;
.super Ljava/lang/Object;
.source "FlyMediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private mediaTitle:Ljava/lang/String;

.field private songLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo$1;

    invoke-direct {v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo$1;-><init>()V

    sput-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    const-string v2, "unknown"

    .line 26
    iput-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    const-string v2, "unknown"

    .line 27
    iput-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    const-string v2, "unknown"

    .line 28
    iput-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    .line 29
    iput-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 123
    instance-of v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;

    .line 128
    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v3, p1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    iget-wide p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 130
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    if-nez p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    return-object p0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    return-object p0
.end method

.method public getMeidaTitle()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSongLength()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    return-wide v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setMeidaTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    return-void
.end method

.method public setSongLength(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlyMediaInfo{mediaTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", songLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 146
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->mediaTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-wide v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;->songLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
