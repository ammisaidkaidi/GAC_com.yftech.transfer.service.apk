.class public Lcom/tencent/taes/framework/bean/ModuleHostInfo;
.super Ljava/lang/Object;
.source "ModuleHostInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private hostName:Ljava/lang/String;

.field private isLoaded:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isLoaded()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->isLoaded:Z

    return p0
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->isLoaded:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/taes/framework/bean/ModuleHostInfo;->version:Ljava/lang/String;

    return-void
.end method
