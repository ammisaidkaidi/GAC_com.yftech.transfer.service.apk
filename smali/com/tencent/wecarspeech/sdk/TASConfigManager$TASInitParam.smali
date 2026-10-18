.class public Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TASInitParam"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->g:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public setCustomWakeWordThreshold(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->g:Ljava/lang/Integer;

    return-void
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->c:Ljava/lang/String;

    return-void
.end method

.method public setFloatBtnEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->e:Z

    return-void
.end method

.method public setStorageRootPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->d:Ljava/lang/String;

    return-void
.end method

.method public setWakeupKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->f:Ljava/util/ArrayList;

    return-void
.end method
