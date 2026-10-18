.class public Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;
.super Ljava/lang/Object;
.source "BNRemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/BNRemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BNEnlargeRoad"
.end annotation


# instance fields
.field public arrowImage:Landroid/graphics/Bitmap;

.field public basicImage:Landroid/graphics/Bitmap;

.field public carPosX:I

.field public carPosY:I

.field public carRotate:I

.field public isEnlargeState:I

.field public lastCarPosX:I

.field public lastCarPosY:I

.field public lastCarRotate:I

.field public remainDist:I

.field public roadName:Ljava/lang/String;

.field public totalDist:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrowImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->arrowImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBasicImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->basicImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCarPosRotate()I
    .locals 0

    .line 403
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carRotate:I

    return p0
.end method

.method public getCarPosX()I
    .locals 0

    .line 393
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carPosX:I

    return p0
.end method

.method public getCarPosY()I
    .locals 0

    .line 398
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carPosY:I

    return p0
.end method

.method public getEnlargeRoadState()I
    .locals 0

    .line 363
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->isEnlargeState:I

    return p0
.end method

.method public getEnlargeRoadType()I
    .locals 0

    .line 358
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->type:I

    return p0
.end method

.method public getLastCarPosRotate()I
    .locals 0

    .line 418
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarRotate:I

    return p0
.end method

.method public getLastCarPosX()I
    .locals 0

    .line 408
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarPosX:I

    return p0
.end method

.method public getLastCarPosY()I
    .locals 0

    .line 413
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarPosY:I

    return p0
.end method

.method public getRemainDist()I
    .locals 0

    .line 383
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->remainDist:I

    return p0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->roadName:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalDist()I
    .locals 0

    .line 378
    iget p0, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->totalDist:I

    return p0
.end method

.method public setArrowImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->arrowImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBasicImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->basicImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCarPosRotate(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carRotate:I

    return-void
.end method

.method public setCarPosX(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carPosX:I

    return-void
.end method

.method public setCarPosY(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->carPosY:I

    return-void
.end method

.method public setEnlargeRoadState(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->isEnlargeState:I

    return-void
.end method

.method public setEnlargeRoadType(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->type:I

    return-void
.end method

.method public setLastCarPosRotate(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarRotate:I

    return-void
.end method

.method public setLastCarPosX(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarPosX:I

    return-void
.end method

.method public setLastCarPosY(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->lastCarPosY:I

    return-void
.end method

.method public setRemainDist(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->remainDist:I

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->roadName:Ljava/lang/String;

    return-void
.end method

.method public setTotalDist(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNEnlargeRoad;->totalDist:I

    return-void
.end method
