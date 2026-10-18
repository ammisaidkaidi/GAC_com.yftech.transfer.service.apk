.class public interface abstract Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;
.super Ljava/lang/Object;
.source "InsAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/ins/InsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInsInfoChangeListener"
.end annotation


# virtual methods
.method public abstract onInsAccelerometerInfoChanged(FFFIJ)V
.end method

.method public abstract onInsGyroscopeInfoChanged(FFFFIJ)V
.end method

.method public abstract onInsSpeedChanged(FIJLcom/tencent/tai/pal/SDKConstants$SpeedUnit;)V
.end method
