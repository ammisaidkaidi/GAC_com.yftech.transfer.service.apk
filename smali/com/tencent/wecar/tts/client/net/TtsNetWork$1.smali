.class final Lcom/tencent/wecar/tts/client/net/TtsNetWork$1;
.super Ljava/lang/Object;
.source "TtsNetWork.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/net/INetWork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/net/TtsNetWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public requestPicture(Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;)V
    .locals 0

    return-void
.end method
