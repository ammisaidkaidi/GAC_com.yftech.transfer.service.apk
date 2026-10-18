.class public interface abstract Lcom/tencent/wecarbase/cloud/IPushService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/cloud/IPushService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addMessage(Ljava/lang/String;IJ)V
.end method

.method public abstract pushInstant(I)V
.end method

.method public abstract registerClient(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/cloud/IConnectCallback;)V
.end method

.method public abstract registerMessageListener(Ljava/lang/String;Lcom/tencent/wecarbase/cloud/IPushMessageListener;)V
.end method
