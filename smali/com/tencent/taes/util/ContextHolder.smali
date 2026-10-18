.class public Lcom/tencent/taes/util/ContextHolder;
.super Ljava/lang/Object;
.source "ContextHolder.java"


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 57
    sget-object v0, Lcom/tencent/taes/util/ContextHolder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 5

    .line 28
    sget-object v0, Lcom/tencent/taes/util/ContextHolder;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 30
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentApplication"

    new-array v4, v0, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 33
    sput-object v2, Lcom/tencent/taes/util/ContextHolder;->sApplicationContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :try_start_1
    const-string v2, "android.app.AppGlobals"

    .line 41
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInitialApplication"

    new-array v0, v0, [Ljava/lang/Class;

    .line 42
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 44
    sput-object v0, Lcom/tencent/taes/util/ContextHolder;->sApplicationContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContextHolder is not initialed, it is recommend to init with application context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    sget-object v0, Lcom/tencent/taes/util/ContextHolder;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/tencent/taes/util/ContextHolder;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 20
    sput-object p0, Lcom/tencent/taes/util/ContextHolder;->sApplicationContext:Landroid/content/Context;

    return-void
.end method
