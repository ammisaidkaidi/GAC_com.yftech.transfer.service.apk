.class public Lcom/tencent/wecarflow/controlsdk/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarflow/controlsdk/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isChangedByPlay:Z

.field private isFavorable:Z

.field private isFavored:Z

.field private itemIndex:I

.field private mediaAuthor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemAuthor"
    .end annotation
.end field

.field private mediaGroupName:Ljava/lang/String;

.field private mediaImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemImageUrl"
    .end annotation
.end field

.field private mediaName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemTitle"
    .end annotation
.end field

.field private mediaPlaymode:I

.field private mediaType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemType"
    .end annotation
.end field

.field private shouldSetPlaymode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/tencent/wecarflow/controlsdk/MediaInfo$1;

    invoke-direct {v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->itemIndex:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaAuthor:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaImage:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaGroupName:Ljava/lang/String;

    .line 42
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
    iput-boolean v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavorable:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavored:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->shouldSetPlaymode:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaPlaymode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemIndex()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->itemIndex:I

    return p0
.end method

.method public getMediaAuthor()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaAuthor:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaGroupName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaImage()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaImage:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaName()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaName:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaPlaymode()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaPlaymode:I

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public isChangedByPlay()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isChangedByPlay:Z

    return p0
.end method

.method public isFavorable()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavorable:Z

    return p0
.end method

.method public isFavored()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavored:Z

    return p0
.end method

.method public isShouldSetPlaymode()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->shouldSetPlaymode:Z

    return p0
.end method

.method public setChangedByPlay(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isChangedByPlay:Z

    return-void
.end method

.method public setFavorable(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavorable:Z

    return-void
.end method

.method public setFavored(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavored:Z

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->itemIndex:I

    return-void
.end method

.method public setMediaAuthor(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaAuthor:Ljava/lang/String;

    return-void
.end method

.method public setMediaGroupName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaGroupName:Ljava/lang/String;

    return-void
.end method

.method public setMediaImage(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaImage:Ljava/lang/String;

    return-void
.end method

.method public setMediaName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaName:Ljava/lang/String;

    return-void
.end method

.method public setMediaPlaymode(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaPlaymode:I

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setShouldSetPlaymode(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->shouldSetPlaymode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaAuthor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFavorable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavorable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFavored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldSetPlaymode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->shouldSetPlaymode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaPlaymode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaPlaymode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 165
    iget p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->itemIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaGroupName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-boolean p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavorable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-boolean p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->isFavored:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-boolean p2, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->shouldSetPlaymode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget p0, p0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->mediaPlaymode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
