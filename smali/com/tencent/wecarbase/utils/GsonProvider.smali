.class public final Lcom/tencent/wecarbase/utils/GsonProvider;
.super Ljava/lang/Object;
.source "GsonProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/utils/GsonProvider$GsonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/gson/Gson;
    .locals 1

    .line 22
    invoke-static {}, Lcom/tencent/wecarbase/utils/GsonProvider$GsonHolder;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
