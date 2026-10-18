.class public Lcom/tencent/wecarspeech/clientsdk/model/NaviDomain;
.super Lcom/tencent/wecarspeech/clientsdk/model/Domain;
.source "NaviDomain.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->navigation:Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;-><init>(Ljava/lang/String;)V

    return-void
.end method
