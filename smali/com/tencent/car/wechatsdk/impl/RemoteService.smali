.class public Lcom/tencent/car/wechatsdk/impl/RemoteService;
.super Ljava/lang/Object;
.source "RemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteService"


# instance fields
.field private mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

.field private mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

.field private mWeChatService:Lcom/tencent/car/sdk/IWeChatService;


# direct methods
.method protected constructor <init>(Lcom/tencent/car/sdk/IWeChatService;Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;)V
    .locals 0
    .param p1    # Lcom/tencent/car/sdk/IWeChatService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    .line 34
    iput-object p2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/car/wechatsdk/impl/RemoteService;)Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mInfoDispatcher:Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;

    return-object p0
.end method


# virtual methods
.method public SetDisplayStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

    return-void
.end method

.method protected getDashboardConfig()Z
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDashboardConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getDashboardConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getDashboardConfig()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getNotDisturbConfig()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotDisturbConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getNotDisturbConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getNotDisturbConfig()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 292
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getUserGuideConfig()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserGuideConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getUserGuideConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getUserGuideConfig()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 304
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getWeChatLoginState()Z
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "getWeChatLoginState"

    .line 102
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatLoginState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getWeChatNotDisturbState()I
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeChatNotDisturbState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatNotDisturbState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatNotDisturbState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getWeChatPanelState()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeChatPanelState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatPanelState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatPanelState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getWeChatSemiAutoLoginState()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeChatSemiAutoLoginState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatSemiAutoLoginState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatSemiAutoLoginState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWeChatUIState()I
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "getWeChatUIState"

    .line 126
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatUIState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getWeChatUnreadMsgState()I
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "RemoteService"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeChatUnreadMsgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v2}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatUnreadMsgState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatUnreadMsgState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWeChatVoipState()I
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "getWeChatVoipState"

    .line 114
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->getWeChatVoipState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/16 p0, 0x15

    return p0
.end method

.method protected invokeWithText(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "RemoteService"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSemanticSkillCallback: semantic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", doa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/car/sdk/IWeChatService;->invokeWithText(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected invokeWithWakeupWord(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "RemoteService"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSemanticWakeupCallback: word = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", doa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/car/sdk/IWeChatService;->invokeWithWakeupWord(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected launchMiniProgramm(Lcom/tencent/car/export/miniprogramm/WXMiniProgrammDesc;)I
    .locals 3

    const-string v0, "RemoteService"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchMiniProgramm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-static {p1}, Lcom/tencent/car/wechatsdk/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/car/sdk/IWeChatService;->launchMiniProgramm(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected logoutWeChat()V
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "logoutWeChat"

    .line 219
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0}, Lcom/tencent/car/sdk/IWeChatService;->logoutWeChat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected openWeChatFunctionPage(I)V
    .locals 3

    const-string v0, "RemoteService"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openWeChatFunctionPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0, p1}, Lcom/tencent/car/sdk/IWeChatService;->openWeChatFunctionPage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPanel(Z)V
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "setPanel"

    .line 142
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    const-string v0, "RemoteService"

    const-string v1, "mWeChatService != null"

    .line 144
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {v0, p1}, Lcom/tencent/car/sdk/IWeChatService;->setPanel(Z)V

    .line 147
    iget-object p1, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

    if-eqz p1, :cond_1

    .line 148
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;->SetState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

    if-eqz p1, :cond_1

    .line 155
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mDisplayStateListener:Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnDisplayStateListener;->SetState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSemiAutoLogin(Z)V
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "setSemiAutoLogin"

    .line 161
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0, p1}, Lcom/tencent/car/sdk/IWeChatService;->setSemiAutoLogin(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setWeChatNotDisturbState(I)V
    .locals 3

    const-string v0, "RemoteService"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWeChatNotDisturbState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    invoke-interface {p0, p1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChatNotDisturbState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected start()V
    .locals 2

    const-string v0, "RemoteService"

    const-string v1, "onLinkSuccess"

    .line 38
    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$1;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$1;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChatMsgObserve(Lcom/tencent/car/sdk/IWeChatMsgCallback;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$2;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$2;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChaUiStateObserve(Lcom/tencent/car/sdk/IWeChatUIStateCallback;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$3;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$3;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChaPanelStateObserve(Lcom/tencent/car/sdk/IWeChatPanelCallback;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$4;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$4;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChaSemiAutoLoginStateObserve(Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$5;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$5;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChatNotDisturbStateObserve(Lcom/tencent/car/sdk/IWeChatNotDisturbCallback;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/RemoteService;->mWeChatService:Lcom/tencent/car/sdk/IWeChatService;

    new-instance v1, Lcom/tencent/car/wechatsdk/impl/RemoteService$6;

    invoke-direct {v1, p0}, Lcom/tencent/car/wechatsdk/impl/RemoteService$6;-><init>(Lcom/tencent/car/wechatsdk/impl/RemoteService;)V

    invoke-interface {v0, v1}, Lcom/tencent/car/sdk/IWeChatService;->setWeChatUnreadMsgStateObserve(Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
