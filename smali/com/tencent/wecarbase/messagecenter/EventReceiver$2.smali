.class Lcom/tencent/wecarbase/messagecenter/EventReceiver$2;
.super Ljava/lang/Object;
.source "EventReceiver.java"

# interfaces
.implements Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/messagecenter/EventReceiver;->showCommonUI(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$2;->this$0:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeSelection(Z)V
    .locals 0

    return-void
.end method

.method public onPositiveSelection(Z)V
    .locals 0

    return-void
.end method

.method public onViewDismiss()V
    .locals 0

    return-void
.end method
