.class public interface abstract Lcom/tencent/taes/framework/interfaces/IConnection$Listener;
.super Ljava/lang/Object;
.source "IConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/interfaces/IConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBindFail()V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method
