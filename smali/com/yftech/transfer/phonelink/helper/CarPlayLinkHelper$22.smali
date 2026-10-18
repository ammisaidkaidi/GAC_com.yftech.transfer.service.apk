.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 2341
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVrFocusChangeListener i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2349
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2351
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$22;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
