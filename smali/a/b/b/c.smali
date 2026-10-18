.class public La/b/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:La/b/b/c;


# instance fields
.field public b:La/b/b/n;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/SceneMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, La/b/b/c;->c:Ljava/util/List;

    return-void
.end method

.method public static a()La/b/b/c;
    .locals 2

    sget-object v0, La/b/b/c;->a:La/b/b/c;

    if-nez v0, :cond_1

    const-class v0, La/b/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/b/b/c;->a:La/b/b/c;

    if-nez v1, :cond_0

    new-instance v1, La/b/b/c;

    invoke-direct {v1}, La/b/b/c;-><init>()V

    sput-object v1, La/b/b/c;->a:La/b/b/c;

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
    sget-object v0, La/b/b/c;->a:La/b/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountEnvType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaMsgManager"

    invoke-static {v1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meta_messages_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1
    new-instance v0, La/b/b/n;

    invoke-direct {v0}, La/b/b/n;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, La/b/b/n;->b:Landroid/content/SharedPreferences;

    iget-object p1, v0, La/b/b/n;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, v0, La/b/b/n;->a:Landroid/content/SharedPreferences$Editor;

    .line 3
    iput-object v0, p0, La/b/b/c;->b:La/b/b/n;

    .line 4
    iget-object p1, p0, La/b/b/c;->b:La/b/b/n;

    if-eqz p1, :cond_5

    const-string p2, "key_meta_msg_list"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, La/b/b/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, La/b/b/b;

    invoke-direct {p2, p0}, La/b/b/b;-><init>(La/b/b/c;)V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_4

    const-string p2, "restore messages.size = "

    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MetaMsgManager"

    invoke-static {v0, p2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/sceneengine/model/SceneMessage;

    invoke-virtual {p0, p2}, La/b/b/c;->a(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, La/b/b/c;->b()V

    :cond_4
    :goto_1
    return-void

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MetaMsgManager has not been initiated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/tencent/sceneengine/model/SceneMessage;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWithoutPersist size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MetaMsgManager"

    invoke-static {v3, v2}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    iget-object v4, p0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/sceneengine/model/SceneMessage;

    invoke-virtual {p1, v4}, Lcom/tencent/sceneengine/model/SceneMessage;->isSameType(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "MetaMsgManager"

    const-string v5, "addWithoutPersist isSameType"

    invoke-static {v1, v5}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgTime()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    iget-object p0, p0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {p0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_1
    return v0

    :cond_2
    const-string v3, "MetaMsgManager"

    const-string v4, "addWithoutPersist  not isSameType"

    invoke-static {v3, v4}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/b/b/c;->b:La/b/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/b/c;->c:Ljava/util/List;

    .line 1
    sget-object v1, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, La/b/b/c;->b:La/b/b/n;

    const-string v2, "key_meta_msg_list"

    invoke-virtual {v1, v2, v0}, La/b/b/n;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MetaMsgManager has not been initiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 0
    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/tencent/sceneengine/model/SceneMessage;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getStoppedCond()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/sceneengine/model/StopCond;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/tencent/sceneengine/model/StopCond;->stopCondType:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    move p0, p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method
