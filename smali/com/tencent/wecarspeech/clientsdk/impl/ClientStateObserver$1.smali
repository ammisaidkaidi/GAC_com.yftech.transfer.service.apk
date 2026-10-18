.class Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;
.super Ljava/lang/Object;
.source "ClientStateObserver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->registerLifecycleCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->access$008(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)I

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->access$010(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)I

    .line 64
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver$1;->this$0:Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;

    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;->access$100(Lcom/tencent/wecarspeech/clientsdk/impl/ClientStateObserver;)V

    return-void
.end method
