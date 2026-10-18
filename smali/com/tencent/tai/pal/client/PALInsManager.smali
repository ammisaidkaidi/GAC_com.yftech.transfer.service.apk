.class public interface abstract Lcom/tencent/tai/pal/client/PALInsManager;
.super Ljava/lang/Object;
.source "PALInsManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;
    }
.end annotation


# virtual methods
.method public abstract registerInsInfoListener(Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;)V
.end method

.method public abstract unregisterInsInfoListener(Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;)V
.end method
