.class Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;
.super Ljava/lang/Object;
.source "ServiceConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/config/def/ServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APPItem"
.end annotation


# instance fields
.field private pkgName:Ljava/lang/String;

.field private priority:I

.field private sdkVersion:J


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->pkgName:Ljava/lang/String;

    .line 267
    iput p2, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->sdkVersion:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;J)J
    .locals 0

    .line 260
    iput-wide p1, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->sdkVersion:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I
    .locals 0

    .line 260
    iget p0, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->priority:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->sdkVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->priority:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
