.class Lcom/tencent/wecarbase/utils/GsonProvider$GsonHolder;
.super Ljava/lang/Object;
.source "GsonProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/utils/GsonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/utils/GsonProvider$GsonHolder;->INSTANCE:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .line 14
    sget-object v0, Lcom/tencent/wecarbase/utils/GsonProvider$GsonHolder;->INSTANCE:Lcom/google/gson/Gson;

    return-object v0
.end method
