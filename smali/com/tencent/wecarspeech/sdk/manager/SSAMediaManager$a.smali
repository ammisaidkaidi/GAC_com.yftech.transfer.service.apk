.class Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->c:Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
