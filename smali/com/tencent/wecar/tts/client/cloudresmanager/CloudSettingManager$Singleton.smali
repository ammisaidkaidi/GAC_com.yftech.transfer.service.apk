.class final Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$Singleton;
.super Ljava/lang/Object;
.source "CloudSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;-><init>(Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$1;)V

    sput-object v0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$Singleton;->INSTANCE:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager$Singleton;->INSTANCE:Lcom/tencent/wecar/tts/client/cloudresmanager/CloudSettingManager;

    return-object v0
.end method
