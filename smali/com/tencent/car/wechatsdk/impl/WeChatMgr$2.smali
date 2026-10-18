.class Lcom/tencent/car/wechatsdk/impl/WeChatMgr$2;
.super Landroid/content/BroadcastReceiver;
.source "WeChatMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->registerComeAliveReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;


# direct methods
.method constructor <init>(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$2;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 329
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive"

    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/WeChatMgr$2;->this$0:Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->access$500(Lcom/tencent/car/wechatsdk/impl/WeChatMgr;)V

    return-void
.end method
