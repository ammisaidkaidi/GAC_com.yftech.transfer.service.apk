.class public Lcom/yftech/transfer/callback/CarMiscListenerImp;
.super Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
.source "CarMiscListenerImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/CarMiscListenerImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;-><init>()V

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;)Z
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/transfer/callback/CarMiscListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;)V
    .locals 1

    .line 22
    sget-object v0, Lcom/yftech/transfer/callback/CarMiscListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/transfer/callback/CarMiscListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V
    .locals 1

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTBoxEcallStateChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/yftech/transfer/callback/CarMiscListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;->onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V

    goto :goto_0

    :cond_1
    return-void
.end method
