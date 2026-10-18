.class public Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneWakeupAsrTool"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "addWakeupKeywords params is invalid"

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getISceneWakeupAsrListener()Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->b:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    return-object p0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getWakeupKeywordsTagMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public setISceneWakeupListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->b:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    return-void
.end method
