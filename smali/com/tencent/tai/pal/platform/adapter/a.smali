.class public Lcom/tencent/tai/pal/platform/adapter/a;
.super Ljava/lang/Object;
.source "PlatformAdapterWrapper.java"


# instance fields
.field private a:Z

.field private b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

.field private c:Lcom/tencent/tai/pal/PlatformSupportInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.tai.pal.platform.adapter.PlatformAdapter"

    .line 18
    invoke-direct {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->a:Z

    .line 23
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    iput-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PAL_SDK"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlatformAdapterWrapper : class reflect error. adapterClassPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->a:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->c:Lcom/tencent/tai/pal/PlatformSupportInfo;

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "PlatformAdapterWrapper : please call create() first"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tai/pal/service/BaseAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->a:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->c:Lcom/tencent/tai/pal/PlatformSupportInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/tai/pal/PlatformSupportInfo;->isAdapterSupported(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PAL_SDK"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlatformAdapterWrapper getAdapter supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    invoke-interface {p0, p1}, Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;->getAdapter(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformAdapterWrapper getAdapter return null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PlatformAdapterWrapper getAdapter NOT supported : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAL_SDK"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformAdapterWrapper getAdapter NOT supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "PlatformAdapterWrapper : please call create() first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;->onCreate(Landroid/content/Context;)V

    .line 41
    iget-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    invoke-interface {p1}, Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;->getSupportInfo()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/a;->c:Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 42
    iget-object p1, p0, Lcom/tencent/tai/pal/platform/adapter/a;->b:Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;

    invoke-interface {p1}, Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;->onInitialized()V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/tencent/tai/pal/platform/adapter/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "PAL_SDK"

    const-string p1, "PlatformAdapterWrapper : create succeed"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string v0, "PlatformAdapterWrapper : create failed."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
