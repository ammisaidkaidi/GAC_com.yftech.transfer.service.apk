.class public Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;
.super Ljava/lang/Object;
.source "SceneBannerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation
.end field

.field private bgImage:Ljava/lang/String;

.field private closable:Z

.field private handerType:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private iconText:Ljava/lang/String;

.field private subKey:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private validEndTime:I

.field private validStartTime:I

.field private vanishTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 286
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subKey:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->uuid:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->icon:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->iconText:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->title:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subTitle:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->bgImage:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validStartTime:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validEndTime:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->vanishTime:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->closable:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->handerType:Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    .line 283
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    const-class v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    return-object p0
.end method

.method public getBgImage()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->bgImage:Ljava/lang/String;

    return-object p0
.end method

.method public getHanderType()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->handerType:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->iconText:Ljava/lang/String;

    return-object p0
.end method

.method public getSubKey()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValidEndTime()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validEndTime:I

    return p0
.end method

.method public getValidStartTime()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validStartTime:I

    return p0
.end method

.method public getVanishTime()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->vanishTime:I

    return p0
.end method

.method public isClosable()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->closable:Z

    return p0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    return-void
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->bgImage:Ljava/lang/String;

    return-void
.end method

.method public setClosable(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->closable:Z

    return-void
.end method

.method public setHanderType(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->handerType:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->iconText:Ljava/lang/String;

    return-void
.end method

.method public setSubKey(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subKey:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setValidEndTime(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validEndTime:I

    return-void
.end method

.method public setValidStartTime(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validStartTime:I

    return-void
.end method

.method public setVanishTime(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->vanishTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneBannerInfo{subKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->iconText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bgImage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->bgImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", validStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validStartTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", validEndTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validEndTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vanishTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->vanishTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", closable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->closable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", handerType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->handerType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 251
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->iconText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->bgImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validStartTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->validEndTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->vanishTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->closable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->handerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;->actions:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
