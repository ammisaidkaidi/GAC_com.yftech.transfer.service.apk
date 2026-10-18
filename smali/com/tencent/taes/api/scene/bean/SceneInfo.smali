.class public Lcom/tencent/taes/api/scene/bean/SceneInfo;
.super Ljava/lang/Object;
.source "SceneInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/api/scene/bean/SceneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bgImage:Ljava/lang/String;

.field private closable:Z

.field private extData:Landroid/os/Bundle;

.field private icon:Ljava/lang/String;

.field private iconText:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private validEndTime:I

.field private validStartTime:I

.field private vanishTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/tencent/taes/api/scene/bean/SceneInfo$1;

    invoke-direct {v0}, Lcom/tencent/taes/api/scene/bean/SceneInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->uuid:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->icon:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->iconText:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->title:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->subTitle:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->bgImage:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validStartTime:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validEndTime:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->vanishTime:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->closable:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->extData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBgImage()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->bgImage:Ljava/lang/String;

    return-object p0
.end method

.method public getExtData()Landroid/os/Bundle;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->extData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->iconText:Ljava/lang/String;

    return-object p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValidEndTime()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validEndTime:I

    return p0
.end method

.method public getValidStartTime()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validStartTime:I

    return p0
.end method

.method public getVanishTime()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->vanishTime:I

    return p0
.end method

.method public isClosable()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->closable:Z

    return p0
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->bgImage:Ljava/lang/String;

    return-void
.end method

.method public setClosable(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->closable:Z

    return-void
.end method

.method public setExtData(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->extData:Landroid/os/Bundle;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->iconText:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setValidEndTime(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validEndTime:I

    return-void
.end method

.method public setValidStartTime(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validStartTime:I

    return-void
.end method

.method public setVanishTime(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->vanishTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneInfo{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->iconText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bgImage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->bgImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", validStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", validEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vanishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->vanishTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", closable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->closable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->extData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->iconText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->bgImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validStartTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->validEndTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->vanishTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean p2, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->closable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    iget-object p0, p0, Lcom/tencent/taes/api/scene/bean/SceneInfo;->extData:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
