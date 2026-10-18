.class public Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;
    }
.end annotation


# static fields
.field public static final ACTIVITY_CHANGE:Ljava/lang/String; = "android.activity.action.STATE_CHANGED"

.field private static final ACTIVITY_FG:Ljava/lang/String; = "foreground"

.field public static final ACTIVITY_MEDIA_MAIN:Ljava/lang/String; = "com.yftech.multimedia.MainActivity"

.field public static final ACT_CARLIFE:Ljava/lang/String; = "com.baidu.carlifevehicle.CarlifeActivity"

.field public static final PKG_CARLIFE:Ljava/lang/String; = "com.baidu.carlifevehicle"

.field public static final PKG_CARPLAY:Ljava/lang/String; = "com.autochips.carplayapp"

.field public static curShowActivity:Ljava/lang/String;

.field public static curShowPkg:Ljava/lang/String;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;)Z
    .locals 1

    .line 43
    sget-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "ActivityChangedReceiver"

    .line 48
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "state"

    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "foreground"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "package"

    .line 53
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowPkg:Ljava/lang/String;

    const-string p2, "class"

    .line 54
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowActivity:Ljava/lang/String;

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTIVITY_CHANGE: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowPkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowActivity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 56
    sget-object p0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;

    .line 57
    sget-object p2, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowPkg:Ljava/lang/String;

    sget-object v0, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver;->curShowActivity:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/yftech/transfer/phonelink/receiver/ActivityChangedReceiver$ActivityChangedObservor;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
