.class public interface abstract Lcom/tencent/taes/framework/interfaces/IConnection$State;
.super Ljava/lang/Object;
.source "IConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/interfaces/IConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "State"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTION_DIED:I = 0x3

.field public static final UNCONNECTED:I


# virtual methods
.method public abstract getConnectionState()I
.end method

.method public abstract getConnectionStateString()Ljava/lang/String;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract isConnectionDied()Z
.end method
