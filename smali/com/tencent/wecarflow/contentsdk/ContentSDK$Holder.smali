.class Lcom/tencent/wecarflow/contentsdk/ContentSDK$Holder;
.super Ljava/lang/Object;
.source "ContentSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/ContentSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/wecarflow/contentsdk/ContentSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK$1;)V

    sput-object v0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarflow/contentsdk/ContentSDK;
    .locals 1

    .line 90
    sget-object v0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$Holder;->sInstance:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    return-object v0
.end method
