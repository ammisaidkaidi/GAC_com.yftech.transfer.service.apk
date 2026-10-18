.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISystemClient"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getSysCurrentNavi()Ljava/lang/String;
.end method

.method public abstract openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract openGlobalHelp()Z
.end method

.method public abstract toggleAction(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
