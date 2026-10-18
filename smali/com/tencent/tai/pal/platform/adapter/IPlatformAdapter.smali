.class public interface abstract Lcom/tencent/tai/pal/platform/adapter/IPlatformAdapter;
.super Ljava/lang/Object;
.source "IPlatformAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# virtual methods
.method public abstract getAdapter(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tai/pal/service/BaseAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getSupportInfo()Lcom/tencent/tai/pal/PlatformSupportInfo;
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onInitialized()V
.end method
