.class Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;
.super Ljava/lang/Object;
.source "CloudSettingManager.java"

# interfaces
.implements Lcom/tencent/taes/cloud/SettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->initcloudSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;->this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/Object;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;->this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->access$300(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setSettingValue(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "wy"

    const-string v1, "daji"

    const-string v2, "libai"

    .line 107
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$2;->this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->access$400(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
