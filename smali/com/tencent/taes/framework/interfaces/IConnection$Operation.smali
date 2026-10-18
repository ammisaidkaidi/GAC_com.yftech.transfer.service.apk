.class public interface abstract Lcom/tencent/taes/framework/interfaces/IConnection$Operation;
.super Ljava/lang/Object;
.source "IConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/interfaces/IConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operation"
.end annotation


# virtual methods
.method public abstract connect(Landroid/content/Intent;Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V
.end method

.method public abstract disconnect()V
.end method
