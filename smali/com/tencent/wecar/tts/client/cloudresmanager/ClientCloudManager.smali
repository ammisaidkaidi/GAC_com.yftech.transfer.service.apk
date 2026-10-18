.class public Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;
.super Ljava/lang/Object;
.source "ClientCloudManager.java"


# static fields
.field private static sCloudManager:Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager$1;

    invoke-direct {v0}, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager$1;-><init>()V

    sput-object v0, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->sCloudManager:Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudConfig(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->sCloudManager:Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;->getCloudConfig(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setCloudManager(Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/tencent/wecar/tts/client/cloudresmanager/ClientCloudManager;->sCloudManager:Lcom/tencent/wecar/tts/client/cloudresmanager/IClientCloudManager;

    return-void
.end method
