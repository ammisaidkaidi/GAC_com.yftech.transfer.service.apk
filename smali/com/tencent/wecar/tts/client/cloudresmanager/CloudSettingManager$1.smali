.class Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;
.super Ljava/lang/Object;
.source "CloudSettingManager.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->initIAccountApi()V
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

    .line 83
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;->this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    const-string p0, "CloudSettingManager"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account registerCompLoadListener onFail errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "CloudSettingManager"

    const-string v1, "account registerCompLoadListener onSuccess"

    .line 86
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;->this$0:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;->access$200(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;)V

    return-void
.end method
