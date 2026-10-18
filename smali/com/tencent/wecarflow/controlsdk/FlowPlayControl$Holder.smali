.class Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$Holder;
.super Ljava/lang/Object;
.source "FlowPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;-><init>(Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$1;)V

    sput-object v0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$Holder;->sInstance:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;
    .locals 1

    .line 56
    sget-object v0, Lcom/tencent/wecarflow/controlsdk/FlowPlayControl$Holder;->sInstance:Lcom/tencent/wecarflow/controlsdk/FlowPlayControl;

    return-object v0
.end method
