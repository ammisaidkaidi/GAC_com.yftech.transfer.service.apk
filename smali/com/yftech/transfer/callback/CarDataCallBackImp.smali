.class public Lcom/yftech/transfer/callback/CarDataCallBackImp;
.super Lcom/yftech/car/data/CarDataManager$CarDataCallback;
.source "CarDataCallBackImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;
    }
.end annotation


# static fields
.field public static final COM_ANDROID_SYSTEMUI_ENGINEHOOD_WARNING_OPEN:Ljava/lang/String; = "com.android.systemui.EnginehoodWarningOpen"

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/CarDataCallBackImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/yftech/car/data/CarDataManager$CarDataCallback;-><init>()V

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;)Z
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/transfer/callback/CarDataCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/yftech/transfer/callback/CarDataCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/transfer/callback/CarDataCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCarDataChanged(Lcom/yftech/car/data/CarData;)V
    .locals 1

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarDataChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 35
    sget-object p0, Lcom/yftech/transfer/callback/CarDataCallBackImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;

    .line 38
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarDataCallBackImp$CarDataObservor;->onCarDataChanged(Lcom/yftech/car/data/CarData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
