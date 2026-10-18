.class Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;
.super Ljava/lang/Object;
.source "SystemRegistration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->registerSystemWakeup(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Landroid/content/ContentValues;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->getSpeechVerCode(Landroid/content/Context;)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    invoke-static {v1}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->access$000(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.tencent.wecarspeech"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    const-string v1, "/client/wakeup"

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->val$values:Landroid/content/ContentValues;

    const-string v2, "content://com.tencent.wecarspeech.vframework.contentprovider"

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    const-string v1, "/client/wakeup"

    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->val$values:Landroid/content/ContentValues;

    const-string v3, "content://com.tencent.wecarspeech.vframework.contentprovider"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;

    const-string v1, "/client/wakeup"

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration$1;->val$values:Landroid/content/ContentValues;

    const-string v2, "content://com.tencent.wecar.vframework.contentprovider"

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/SystemRegistration;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
