.class public Lcom/yftech/hicar/sdk/YFHiCarInterface;
.super Ljava/lang/Object;
.source "YFHiCarInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/hicar/sdk/YFHiCarInterface$Holder;
    }
.end annotation


# static fields
.field public static final HICAR_PACKAGE:Ljava/lang/String; = "com.yftech.hicar"

.field public static final HICAR_SERVICE_ACTION:Ljava/lang/String; = "com.yftech.hicar.HiCarService"

.field private static final TAG:Ljava/lang/String; = "YFHiCarInterface"


# instance fields
.field private bindCallBack:Lcom/yftech/hicar/sdk/IBindCallBack;

.field private changeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yftech/hicar/sdk/IStateChange;",
            ">;"
        }
    .end annotation
.end field

.field hiCarStateCallBack:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

.field private iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->changeList:Ljava/util/Set;

    .line 53
    new-instance v0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;

    invoke-direct {v0, p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;-><init>(Lcom/yftech/hicar/sdk/YFHiCarInterface;)V

    iput-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->serviceConnection:Landroid/content/ServiceConnection;

    .line 300
    new-instance v0, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;

    invoke-direct {v0, p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface$2;-><init>(Lcom/yftech/hicar/sdk/YFHiCarInterface;)V

    iput-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->hiCarStateCallBack:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/hicar/sdk/YFHiCarInterface$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/hicar/sdk/YFHiCarInterface;Lcom/yftech/hicar/sdk/IHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->bindCallBack:Lcom/yftech/hicar/sdk/IBindCallBack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Ljava/util/Set;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->changeList:Ljava/util/Set;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;
    .locals 1

    .line 22
    sget-object v0, Lcom/yftech/hicar/sdk/YFHiCarInterface$Holder;->INSTANCE:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/yftech/hicar/sdk/IBindCallBack;)V
    .locals 2

    const-string v0, "YFHiCarInterface"

    const-string v1, "bindService"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-object p2, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->bindCallBack:Lcom/yftech/hicar/sdk/IBindCallBack;

    .line 47
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.yftech.hicar.HiCarService"

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.yftech.hicar"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->serviceConnection:Landroid/content/ServiceConnection;

    const/16 v0, 0x41

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public callState()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->callState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public callSwitch(Z)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->callSwitch(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public connectState()Lcom/yftech/hicar/sdk/ConnectStateEntity;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->connectState()Lcom/yftech/hicar/sdk/ConnectStateEntity;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    :cond_0
    new-instance p0, Lcom/yftech/hicar/sdk/ConnectStateEntity;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/yftech/hicar/sdk/ConnectStateEntity;-><init>(ZLjava/lang/String;I)V

    return-object p0
.end method

.method public deleteDevice(Ljava/lang/String;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->deleteDevice(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disConnectDevice(Z)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->disConnectDevice(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableUSB(Z)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->enableUSB(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/hicar/sdk/HiCarDeviceEntity;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->getDeviceList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isVoiceWakeUp()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->isVoiceWakeUp()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public mainPageSwitch(Ljava/lang/String;)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->mainPageSwitch(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public mediaSwitch(Z)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->mediaSwitch(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextMedia()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->nextMedia()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 248
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public previousMedia()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->previousMedia()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerChangeListener(Lcom/yftech/hicar/sdk/IStateChange;)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->changeList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestNewConnect()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->requestNewConnect()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 406
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestReConnect(Ljava/lang/String;)Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->requestReConnect(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 395
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportWireless()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->supportWireless()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unBindService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "YFHiCarInterface"

    const-string v1, "unBindService"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    iget-object v1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->hiCarStateCallBack:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    invoke-interface {v0, v1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->unregisterCallBack(Lcom/yftech/hicar/sdk/IHiCarStateCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unregisterChangeListener(Lcom/yftech/hicar/sdk/IStateChange;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->changeList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->changeList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public voiceSwitch(Z)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->iHiCarInterface:Lcom/yftech/hicar/sdk/IHiCarInterface;

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IHiCarInterface;->voiceSwitch(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
