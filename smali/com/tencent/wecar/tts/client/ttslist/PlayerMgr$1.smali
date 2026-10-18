.class Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;
.super Ljava/lang/Object;
.source "PlayerMgr.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->play(Ljava/lang/String;Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->access$002(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 50
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$1;->this$0:Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    invoke-static {p0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->access$000(Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
