.class public Lcom/yftech/transfer/callback/CarInputListenerImp;
.super Lcom/yftech/car/input/CarInputManager$CarInputCallback;
.source "CarInputListenerImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/callback/CarInputListenerImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;)Z
    .locals 1

    .line 34
    sget-object v0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onInputKey(Lcom/yftech/car/input/CarKey;)V
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/yftech/transfer/callback/CarInputListenerImp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object p0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

    .line 57
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;->onInputKey(Lcom/yftech/car/input/CarKey;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInputKeyCustomFunction(Lcom/yftech/car/input/CarKeyCustomFunction;)V
    .locals 2

    .line 39
    iget-object p0, p0, Lcom/yftech/transfer/callback/CarInputListenerImp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputKeyCustomFunction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object p0, Lcom/yftech/transfer/callback/CarInputListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;

    .line 45
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;->onInputKeyCustomFunction(Lcom/yftech/car/input/CarKeyCustomFunction;)V

    goto :goto_0

    :cond_1
    return-void
.end method
