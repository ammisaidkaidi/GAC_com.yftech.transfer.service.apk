.class Lcom/tencent/wecarbase/common/AppInfoUploader$2;
.super Lcom/tencent/wecarbase/client/SimpleEventListener;
.source "AppInfoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/common/AppInfoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$2;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-direct {p0}, Lcom/tencent/wecarbase/client/SimpleEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeCarIdChanged(Lcom/tencent/wecarbase/model/WeCarAccount;Lcom/tencent/wecarbase/model/WeCarAccount;)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$2;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/common/AppInfoUploader;->uploadAppInfo(Z)V

    return-void
.end method

.method public onWeCarIdRegistered(Lcom/tencent/wecarbase/model/WeCarAccount;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$2;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/common/AppInfoUploader;->uploadAppInfo(Z)V

    return-void
.end method
