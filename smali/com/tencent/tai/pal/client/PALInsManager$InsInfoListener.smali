.class public interface abstract Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;
.super Ljava/lang/Object;
.source "PALInsManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALInsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InsInfoListener"
.end annotation


# virtual methods
.method public abstract onAccelerometerInfoChanged(FFFIJ)V
.end method

.method public abstract onGyroscopeInfoChanged(FFFFIJ)V
.end method

.method public abstract onSpeedChanged(FIJ)V
.end method
