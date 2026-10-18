.class public abstract Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "ExtensibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract callExtensibleApi(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract registerExtensibleListener(Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;)V
.end method

.method public abstract unregisterExtensibleListener(Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;)V
.end method
