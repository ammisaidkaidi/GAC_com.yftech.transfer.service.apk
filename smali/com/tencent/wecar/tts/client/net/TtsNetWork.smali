.class public Lcom/tencent/wecar/tts/client/net/TtsNetWork;
.super Ljava/lang/Object;
.source "TtsNetWork.java"


# static fields
.field private static sNetWork:Lcom/tencent/wecar/tts/client/net/INetWork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/tencent/wecar/tts/client/net/TtsNetWork$1;

    invoke-direct {v0}, Lcom/tencent/wecar/tts/client/net/TtsNetWork$1;-><init>()V

    sput-object v0, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->sNetWork:Lcom/tencent/wecar/tts/client/net/INetWork;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V
    .locals 1
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

    .line 25
    sget-object v0, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->sNetWork:Lcom/tencent/wecar/tts/client/net/INetWork;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/wecar/tts/client/net/INetWork;->request(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/wecar/tts/client/net/INetWorkCallBack;)V

    return-void
.end method

.method public static requestPicture(Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->sNetWork:Lcom/tencent/wecar/tts/client/net/INetWork;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/client/net/INetWork;->requestPicture(Ljava/lang/String;Lcom/tencent/wecar/tts/client/net/INetWorkPicCallBack;)V

    return-void
.end method

.method public static setNetWork(Lcom/tencent/wecar/tts/client/net/INetWork;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/tencent/wecar/tts/client/net/TtsNetWork;->sNetWork:Lcom/tencent/wecar/tts/client/net/INetWork;

    return-void
.end method
