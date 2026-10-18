.class Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;
.super Landroid/os/Handler;
.source "FlowPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_0

    const-string v0, "_Music_FlowPlayControl"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    if-eqz v0, :cond_3

    const-string p1, "expire_state_flag"

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 172
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$600(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V

    goto/16 :goto_1

    :pswitch_1
    if-eqz v0, :cond_3

    const-string p1, "login_state_flag"

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 166
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$500(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v0, :cond_3

    const-string p1, "wx_open_close"

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "login_state_flag"

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$400(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;ZZ)V

    goto/16 :goto_1

    .line 154
    :pswitch_3
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$300(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    goto/16 :goto_1

    .line 151
    :pswitch_4
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    goto/16 :goto_1

    .line 222
    :pswitch_5
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1400(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz v0, :cond_3

    const-string p1, "media_playmode"

    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 218
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1300(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;I)V

    goto/16 :goto_1

    :pswitch_7
    if-eqz v0, :cond_3

    .line 178
    invoke-static {v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseMediaInfo(Landroid/os/Bundle;)Lcom/tencent/wecarflow/controlsdk/MediaInfo;

    move-result-object p1

    .line 179
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$700(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V

    goto :goto_1

    :pswitch_8
    if-eqz v0, :cond_3

    const-string p1, "media_is_favored"

    .line 211
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 212
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1200(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)V

    goto :goto_1

    :pswitch_9
    const/4 p0, 0x0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const-string p0, "media_progress_current"

    .line 203
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string p0, "media_progress_total"

    .line 204
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    const-string v3, "media_type"

    .line 205
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide v7, p0

    move-object v4, v0

    move-wide v5, v1

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-wide v5, v1

    move-wide v7, v5

    .line 207
    :goto_0
    invoke-static {}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->getInstance()Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->notifyProgress(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 195
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p1, v1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$802(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z

    .line 196
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1100(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    goto :goto_1

    .line 191
    :pswitch_b
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p1, v1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$802(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z

    .line 192
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$1000(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    goto :goto_1

    :pswitch_c
    if-eqz v0, :cond_2

    .line 184
    invoke-static {v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseMediaInfo(Landroid/os/Bundle;)Lcom/tencent/wecarflow/controlsdk/MediaInfo;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {v0, p1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$700(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Lcom/tencent/wecarflow/controlsdk/MediaInfo;)V

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$802(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;Z)Z

    .line 188
    iget-object p0, p0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;->this$0:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    invoke-static {p0}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;->access$900(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7de
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xbbb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
