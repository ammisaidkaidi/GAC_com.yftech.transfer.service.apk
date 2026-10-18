.class public final Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ID_INVALID:I = 0x0

.field public static final PRIORITY_IMPORTANT:I = 0x1

.field public static final PRIORITY_NORMAL:I

.field private static volatile c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 5

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    const-string p1, "listener list is null"

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    const-string p1, "data is null"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_tts_id"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "e_tts_progress_index"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "e_tts_progress_length"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1, p2}, Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;->onProgress(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private b(Ljava/lang/String;[B)[B
    .locals 5

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    const-string p1, "listener list is null"

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    const-string p1, "data is null"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "e_tts_id"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "e_tts_status_status"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "e_tts_status_flag"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, p2}, Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;->onStatusChange(II)V

    const/4 p2, 0x5

    if-ne v1, p2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static destory()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    invoke-direct {v1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->c:Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    const-string p4, "tas.callback.tts.status"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p4, "tas.callback.tts.progress"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public pause(I)Z
    .locals 1

    const-string v0, "e_tts_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v0, "tas.action.tts.pause"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    const/4 p0, 0x1

    return p0
.end method

.method public resume(I)Z
    .locals 1

    const-string v0, "e_tts_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v0, "tas.action.tts.resume"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    const/4 p0, 0x1

    return p0
.end method

.method public speak(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->speak(Ljava/lang/String;ILcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;)I

    move-result p0

    return p0
.end method

.method public speak(Ljava/lang/String;ILcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "e_tts_text"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "e_tts_priority"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;I)V

    const-string p1, "e_tts_has_callback"

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string p2, "tas.action.tts.play"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a()[B

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public speak(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->speak(Ljava/lang/String;ILcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;)I

    move-result p0

    return p0
.end method

.method public stop(I)Z
    .locals 1

    const-string v0, "e_tts_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p1

    const-string v0, "tas.action.tts.stop"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSATtsManager;->a()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    const/4 p0, 0x1

    return p0
.end method
