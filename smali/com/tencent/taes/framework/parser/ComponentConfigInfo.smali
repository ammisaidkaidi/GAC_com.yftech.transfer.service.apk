.class public Lcom/tencent/taes/framework/parser/ComponentConfigInfo;
.super Ljava/lang/Object;
.source "ComponentConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_LOCAL:Ljava/lang/String; = "local"

.field public static final TYPE_SERVER:Ljava/lang/String; = "server"

.field public static final TYPE_SPECIAL:Ljava/lang/String; = "special"


# instance fields
.field private actionName:Ljava/lang/String;

.field private applicationApiImplCls:Ljava/lang/String;

.field private bootCompleteLoad:Z

.field private connectPriorityPkgNames:[Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private lifecycleImpCls:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private necessaryLoad:Z

.field private parallelLoad:Z

.field private persistent:Z

.field private supportFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$1;

    invoke-direct {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->desc:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->lifecycleImpCls:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->applicationApiImplCls:Ljava/lang/String;

    .line 303
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
    iput-boolean v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->bootCompleteLoad:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->necessaryLoad:Z

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->persistent:Z

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->parallelLoad:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->connectPriorityPkgNames:[Ljava/lang/String;

    .line 309
    sget-object v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    instance-of v0, p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    check-cast p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;

    .line 221
    iget-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getSupportFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 237
    :cond_3
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->getActionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationApiImplCls()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->applicationApiImplCls:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectPriorityPkgNames()[Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->connectPriorityPkgNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getFeaturesBean(Ljava/lang/String;)Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;
    .locals 2

    .line 257
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;

    .line 258
    invoke-virtual {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->getApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLifecycleImpCls()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->lifecycleImpCls:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public isBootCompleteLoad()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->bootCompleteLoad:Z

    return p0
.end method

.method public isLocalComponent()Z
    .locals 1

    const-string v0, "local"

    .line 249
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNecessaryLoad()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->necessaryLoad:Z

    return p0
.end method

.method public isParallelLoad()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->parallelLoad:Z

    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->persistent:Z

    return p0
.end method

.method public isServerComponent()Z
    .locals 2

    const-string v0, "server"

    .line 245
    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "special"

    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSpecialComponent()Z
    .locals 1

    const-string v0, "special"

    .line 253
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationApiImplCls(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->applicationApiImplCls:Ljava/lang/String;

    return-void
.end method

.method public setBootCompleteLoad(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->bootCompleteLoad:Z

    return-void
.end method

.method public setConnectPriorityPkgNames([Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->connectPriorityPkgNames:[Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setLifecycleImpCls(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->lifecycleImpCls:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNecessaryLoad(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->necessaryLoad:Z

    return-void
.end method

.method public setParallelLoad(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->parallelLoad:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->persistent:Z

    return-void
.end method

.method public setSupportFeatures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentConfigInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", connectPriorityPkgNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->connectPriorityPkgNames:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 283
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->lifecycleImpCls:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->applicationApiImplCls:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-boolean p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->bootCompleteLoad:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    iget-boolean p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->necessaryLoad:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 290
    iget-boolean p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->persistent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    iget-boolean p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->parallelLoad:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 292
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->actionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->connectPriorityPkgNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo;->supportFeatures:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
