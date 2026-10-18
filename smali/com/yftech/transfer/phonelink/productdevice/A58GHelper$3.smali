.class Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$3;
.super Landroid/database/ContentObserver;
.source "A58GHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Landroid/os/Handler;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "boot_warn_ui"

    .line 135
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    const-string p1, "carplay"

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Ljava/lang/String;)V

    return-void
.end method
