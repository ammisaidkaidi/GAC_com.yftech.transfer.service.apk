.class public Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "ttsinfo.db"

.field private static volatile instance:Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;


# instance fields
.field private daos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/Dao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ttsinfo.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;
    .locals 2

    .line 24
    sget-object v0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->instance:Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->instance:Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->instance:Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->instance:Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 69
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/Dao;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    :cond_0
    if-nez v0, :cond_1

    .line 45
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 46
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->daos:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 54
    :try_start_0
    const-class p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-static {p2, p0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecar/tts/client/ttslist/beans/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    return-void
.end method
