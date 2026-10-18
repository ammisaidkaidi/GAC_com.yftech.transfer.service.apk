.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;
.super Landroid/database/ContentObserver;
.source "CBIHU12Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Landroid/os/Handler;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "boot_warn_ui"

    .line 143
    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    const-string v0, "hicar"

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    const-string v0, "carplay"

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    const-string p1, "carlife"

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V

    return-void
.end method
