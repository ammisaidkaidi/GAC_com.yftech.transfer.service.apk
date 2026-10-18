.class Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;
.super Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    const-string v0, "com.tencent.wecarspeech.WeCarSpeechTaesSdkService"

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_TAS_SPEECH_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c()Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c()Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
    .locals 0

    invoke-super {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$a;->a()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    return-object p0
.end method

.method private d()V
    .locals 5

    new-instance v0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$1;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->a:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$2;-><init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IInterface;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->d()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    check-cast p1, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/a;->a(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/wecarspeech/sdk/c;->a(Z)V

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->b(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;)V

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Z)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    move-result-object p0

    const/4 v0, 0x1

    const-string v2, "speech sdk init failed"

    invoke-interface {p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;->onInit(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/a;->a(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/sdk/c;->a(Z)V

    return-void
.end method
