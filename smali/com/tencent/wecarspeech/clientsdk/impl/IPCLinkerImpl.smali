.class public Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinker;


# static fields
.field public static final ACTION_WECAR_SERVICE:Ljava/lang/String; = "com.tencent.wecarspeech.vframework.service.WecarService"

.field private static final TAG:Ljava/lang/String; = "IPCLinkerImpl"


# instance fields
.field private volatile isConnected:Z

.field private mBinder:Landroid/os/IBinder;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->isConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->isConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;)Landroid/os/IBinder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method private getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ServiceUtils"

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_1

    return-object p1

    .line 134
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 136
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "IPCLinkerImpl"

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "serviceInfo packageName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 142
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public linkRemoteService(Landroid/content/Context;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    :cond_0
    const-string v0, "IPCLinkerImpl"

    const-string v1, "start bind service"

    .line 89
    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.wecarspeech.vframework.service.WecarService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->getServerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.wecarspeech.vframework.service.WecarService"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tencent.wecarspeech"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 98
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/impl/IPCLinkerImpl;Lcom/tencent/wecarspeech/clientsdk/ipcservice/IPCLinkCallback;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
