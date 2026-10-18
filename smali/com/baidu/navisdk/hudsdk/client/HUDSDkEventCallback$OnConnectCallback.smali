.class public interface abstract Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;
.super Ljava/lang/Object;
.source "HUDSDkEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectCallback"
.end annotation


# static fields
.field public static final CLOSE_AUTH_FAILED:I = 0x191

.field public static final CLOSE_LBS_AUTH_FALIED:I = 0x198

.field public static final CLOSE_NETWORK_NOT_OPEN:I = 0x197

.field public static final CLOSE_NORMAL:I = 0x190

.field public static final CLOSE_PROTOCOL_ERROR:I = 0x196

.field public static final CLOSE_READ_TIMEOUT:I = 0x194

.field public static final CLOSE_SEND_TIMEOUT:I = 0x193

.field public static final CLOSE_SERVER_ERROR:I = 0x192

.field public static final CLOSE_SOCKET_ERROR:I = 0x195

.field public static final CLOSE_WAIT_LBS_AUTH_RESULT:I = 0x199


# virtual methods
.method public abstract onAuth(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;)V
.end method

.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onEndLBSAuth(ILjava/lang/String;)V
.end method

.method public abstract onReConnected()V
.end method

.method public abstract onStartLBSAuth()V
.end method
