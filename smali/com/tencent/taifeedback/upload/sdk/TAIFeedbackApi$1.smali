.class Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;
.super Ljava/lang/Object;
.source "TAIFeedbackApi.java"

# interfaces
.implements Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->startShake(Landroid/content/Context;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

.field final synthetic val$callback:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;


# direct methods
.method constructor <init>(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    iput-object p2, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->val$callback:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-static {v0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->access$000(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;)Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->stop()V

    .line 173
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->val$callback:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->val$callback:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;

    invoke-interface {v0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$Callback;->run()V

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;

    invoke-static {p0}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;->access$000(Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackApi;)Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/listener/ShakeListener;->start()V

    return-void
.end method
