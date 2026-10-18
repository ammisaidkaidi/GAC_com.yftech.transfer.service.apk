.class public interface abstract Lcom/tencent/taes/framework/interfaces/IEventSubscriber;
.super Ljava/lang/Object;
.source "IEventSubscriber.java"


# virtual methods
.method public abstract onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V
.end method

.method public abstract subscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
.end method

.method public abstract unsubscribe(Lcom/tencent/taes/framework/interfaces/IEventListener;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
.end method
