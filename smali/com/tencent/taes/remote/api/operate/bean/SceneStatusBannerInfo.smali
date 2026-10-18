.class public Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;
.super Ljava/lang/Object;
.source "SceneStatusBannerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation
.end field

.field private deactiveActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation
.end field

.field private enable:Z

.field private firstOverviewCity:Z

.field private handerType:Ljava/lang/String;

.field private statusBarIconDay:Ljava/lang/String;

.field private statusBarIconNight:Ljava/lang/String;

.field private statusBarSwitchIconDay:Ljava/lang/String;

.field private statusBarSwitchIconNight:Ljava/lang/String;

.field private statusBarSwitchIconSelectedDay:Ljava/lang/String;

.field private statusBarSwitchIconSelectedNight:Ljava/lang/String;

.field private subKey:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private validEndTime:J

.field private validStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 333
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->subKey:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->uuid:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->title:Ljava/lang/String;

    .line 318
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
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->enable:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->firstOverviewCity:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validStartTime:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validEndTime:J

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconDay:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconNight:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconDay:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconNight:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedDay:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedNight:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->handerType:Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->activeActions:Ljava/util/List;

    .line 330
    sget-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->deactiveActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActiveActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->activeActions:Ljava/util/List;

    return-object p0
.end method

.method public getDeactiveActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->deactiveActions:Ljava/util/List;

    return-object p0
.end method

.method public getHanderType()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->handerType:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarIconDay()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconDay:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarIconNight()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconNight:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarSwitchIconDay()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconDay:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarSwitchIconNight()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconNight:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarSwitchIconSelectedDay()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedDay:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarSwitchIconSelectedNight()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedNight:Ljava/lang/String;

    return-object p0
.end method

.method public getSubKey()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->subKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValidEndTime()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validEndTime:J

    return-wide v0
.end method

.method public getValidStartTime()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validStartTime:J

    return-wide v0
.end method

.method public isEnable()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->enable:Z

    return p0
.end method

.method public isFirstOverviewCity()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->firstOverviewCity:Z

    return p0
.end method

.method public setActiveActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->activeActions:Ljava/util/List;

    return-void
.end method

.method public setDeactiveActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo$ActionsBean;",
            ">;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->deactiveActions:Ljava/util/List;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->enable:Z

    return-void
.end method

.method public setFirstOverviewCity(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->firstOverviewCity:Z

    return-void
.end method

.method public setHanderType(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->handerType:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarIconDay(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconDay:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarIconNight(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconNight:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarSwitchIconDay(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconDay:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarSwitchIconNight(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconNight:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarSwitchIconSelectedDay(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedDay:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarSwitchIconSelectedNight(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedNight:Ljava/lang/String;

    return-void
.end method

.method public setSubKey(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->subKey:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setValidEndTime(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validEndTime:J

    return-void
.end method

.method public setValidStartTime(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validStartTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneStatusBannerInfo{subKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->subKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->enable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", firstOverviewCity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->firstOverviewCity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", validStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", validEndTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarIconDay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarIconNight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconNight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarSwitchIconDay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarSwitchIconNight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconNight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarSwitchIconSelectedDay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusBarSwitchIconSelectedNight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedNight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", handerType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->handerType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", activeActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->activeActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deactiveActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->deactiveActions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 296
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->subKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->enable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 300
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->firstOverviewCity:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 301
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->validEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 303
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarIconNight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconNight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->statusBarSwitchIconSelectedNight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->handerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->activeActions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 311
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;->deactiveActions:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
