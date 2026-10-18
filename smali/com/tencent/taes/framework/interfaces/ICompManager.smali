.class public interface abstract Lcom/tencent/taes/framework/interfaces/ICompManager;
.super Ljava/lang/Object;
.source "ICompManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;
    }
.end annotation


# static fields
.field public static final ERROR_LOAD_OVERTIME:I = -0x2710

.field public static final ERROR_NO_FOUND_LIFECYCLE:I = -0x2711

.field public static final ERROR_SERVER_DISCONNECT:I = -0x4e21

.field public static final ERROR_SERVER_NO_FOUND:I = -0x4e22


# virtual methods
.method public abstract checkModuleLoaded(Ljava/lang/String;)Z
.end method

.method public abstract getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/tencent/taes/framework/APIResult<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getModuleHostInfo(Ljava/lang/String;)Lcom/tencent/taes/framework/bean/ModuleHostInfo;
.end method

.method public abstract getModuleHostPkgName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract init(Landroid/content/Context;[Ljava/lang/Object;)V
.end method

.method public abstract loadComponents(Ljava/util/List;Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo;",
            ">;",
            "Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract unloadComponent(Lcom/tencent/taes/framework/parser/ComponentConfigInfo;)V
.end method
