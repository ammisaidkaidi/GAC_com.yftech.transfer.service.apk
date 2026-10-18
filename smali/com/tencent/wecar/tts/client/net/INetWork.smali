.class public interface abstract Lcom/tencent/wecar/tts/client/net/INetWork;
.super Ljava/lang/Object;
.source "INetWork.java"


# virtual methods
.method public abstract request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V
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
.end method

.method public abstract requestPicture(Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;)V
.end method
