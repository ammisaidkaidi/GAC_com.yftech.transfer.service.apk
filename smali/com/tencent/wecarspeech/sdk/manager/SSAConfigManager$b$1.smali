.class Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$1;
.super Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$b;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCallback(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/c;->a()Lcom/tencent/wecarspeech/sdk/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method
