.class public Lcom/yftech/transfer/callback/CarTBoxListenerImp;
.super Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;
.source "CarTBoxListenerImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;-><init>()V

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;)Z
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onMuteRadioOrderChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;)V
    .locals 1

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMuteRadioOrderChanged order:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    .line 42
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;->onMuteRadioOrderChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 1

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPhoneCallStateChanged state:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 59
    sget-object p0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    .line 62
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;->onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V
    .locals 1

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPhoneModeChanged mode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    .line 52
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;->onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method
