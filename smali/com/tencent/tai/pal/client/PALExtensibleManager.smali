.class public interface abstract Lcom/tencent/tai/pal/client/PALExtensibleManager;
.super Ljava/lang/Object;
.source "PALExtensibleManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/extensible/IExtensible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;
    }
.end annotation


# virtual methods
.method public abstract callExtensibleApi(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract registerExtensibleListener(Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;)V
.end method

.method public abstract unregisterExtensibleListener(Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;)V
.end method
