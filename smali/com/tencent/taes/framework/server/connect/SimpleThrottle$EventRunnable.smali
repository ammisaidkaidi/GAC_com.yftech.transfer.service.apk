.class public abstract Lcom/tencent/taes/framework/server/connect/SimpleThrottle$EventRunnable;
.super Ljava/lang/Object;
.source "SimpleThrottle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/server/connect/SimpleThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public abstract run(Ljava/lang/Object;)V
.end method
