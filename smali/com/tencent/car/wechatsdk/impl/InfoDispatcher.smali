.class public Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;
.super Ljava/lang/Object;
.source "InfoDispatcher.java"

# interfaces
.implements Lcom/tencent/car/wechatsdk/interfaces/IInfoDispatchApi;


# instance fields
.field private final mWeChatMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatNotDisturbStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatPanelStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatSemiAutoLoginStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatUIStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatUnreadMsgStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeChatVoipListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatMessageListeners:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatVoipListeners:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUIStateListeners:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchWeChatMessage(Lcom/tencent/car/export/message/WeChatMessage;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;

    .line 49
    invoke-interface {v1, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;->onWeChatMessageChanged(Lcom/tencent/car/export/message/WeChatMessage;)V

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p1, Lcom/tencent/car/export/message/WeChatMessage;->msgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatVoipListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;

    .line 53
    iget v1, p1, Lcom/tencent/car/export/message/WeChatMessage;->msgState:I

    invoke-interface {v0, v1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;->onVoip(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public dispatchWeChatNotDisturbState(I)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;

    .line 170
    invoke-interface {v0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;->onNotDisturbStateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWeChatPanelState(Z)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;

    .line 102
    invoke-interface {v0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;->onPanelStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWeChatSemiAutoLoginState(Z)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;

    .line 109
    invoke-interface {v0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;->onSemiAutoLoginStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWeChatUIState(I)V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUIStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;

    .line 95
    invoke-interface {v0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;->onUiStateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWeChatUnreadMsgState(I)V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;

    .line 195
    invoke-interface {v0, p1}, Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;->onUnreadMsgStateChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUIStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUIStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatVoipListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatVoipListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterWeChatMessageListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatMessageListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatMessageListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWeChatNotDisturbStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatNotDisturbStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatNotDisturbStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterWeChatPanelStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatPanelStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatPanelStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterWeChatSemiAutoLoginStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatSemiAutoLoginStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatSemiAutoLoginStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterWeChatUIStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUIStateListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUIStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWeChatUnreadMsgStateListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatUnreadMsgStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatUnreadMsgStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterWeChatVoipListener(Lcom/tencent/car/wechatsdk/interfaces/OnWeChatVoipListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/InfoDispatcher;->mWeChatVoipListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
