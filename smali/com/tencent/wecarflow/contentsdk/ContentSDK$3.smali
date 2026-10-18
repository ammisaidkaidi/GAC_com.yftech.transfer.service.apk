.class Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;
.super Landroid/os/Handler;
.source "ContentSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/ContentSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "FlowContentContentSDK"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "num"

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 285
    iget-object v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 v4, 0x6b

    const-class v5, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1100(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;IZ)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "num"

    .line 276
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 277
    iget-object v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 v4, 0x69

    const-class v5, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1100(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;IZ)V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "num"

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 281
    iget-object v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 v4, 0x6a

    const-class v5, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1100(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;IZ)V

    goto/16 :goto_0

    .line 262
    :pswitch_3
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 p1, 0x68

    const-class v0, Lcom/tencent/wecarflow/contentsdk/bean/NewsSecondResponseBean;

    invoke-static {p0, v3, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 268
    :pswitch_4
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 p1, 0x67

    const-class v0, Lcom/tencent/wecarflow/contentsdk/bean/AudioBookSecondResponseBean;

    invoke-static {p0, v3, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 265
    :pswitch_5
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 p1, 0x66

    const-class v0, Lcom/tencent/wecarflow/contentsdk/bean/RadioSecondResponseBean;

    invoke-static {p0, v3, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 271
    :pswitch_6
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 p1, 0x65

    const-class v0, Lcom/tencent/wecarflow/contentsdk/bean/MusicSecondResponseBean;

    invoke-static {p0, v3, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 289
    :pswitch_7
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/16 p1, 0x64

    const-class v0, Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendResponseBean;

    invoke-static {p0, v3, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1000(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ILjava/lang/Class;)V

    goto :goto_0

    .line 323
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 324
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchProgramResponseBean;

    .line 325
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V

    goto :goto_0

    .line 318
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 319
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/SearchSingerResponseBean;

    .line 320
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0, p1, v0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V

    goto :goto_0

    .line 313
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/wecarflow/contentsdk/bean/SearchSongResponseBean;

    .line 314
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 315
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0, v0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1700(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Lcom/tencent/wecarflow/contentsdk/bean/BaseResponseBean;I)V

    goto :goto_0

    .line 292
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/NewsSecondResponseBean;

    .line 293
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1200(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/AudioBookSecondResponseBean;

    .line 301
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1400(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/RadioSecondResponseBean;

    .line 297
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1300(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/MusicSecondResponseBean;

    .line 305
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1500(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendResponseBean;

    .line 309
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$3;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$1600(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Lcom/tencent/wecarflow/contentsdk/ContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentListener;->onContentGot(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1130
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
