.class public final Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;
.super Lcom/tencent/wecarspeech/sdk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/wecarspeech/sdk/listener/RoleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/wecarspeech/sdk/listener/WakeupWordChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/wecarspeech/sdk/listener/DayNightModeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;
    .locals 1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager$a;->a()Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 2

    iget-object p4, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+callback, caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,caller back:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p4

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p3, "tas.focus.setting.page.role"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    const-string p2, "e_role_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set role: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarspeech/sdk/listener/RoleChangeListener;

    invoke-interface {p2, p1}, Lcom/tencent/wecarspeech/sdk/listener/RoleChangeListener;->onChangeRole(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p3, "tas.focus.setting.page.wakeup"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    const-string p1, ""

    goto :goto_4

    :cond_4
    const-string p2, "e_wakeup_word"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    iget-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set wakeup word: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarspeech/sdk/listener/WakeupWordChangeListener;

    invoke-interface {p2, p1}, Lcom/tencent/wecarspeech/sdk/listener/WakeupWordChangeListener;->onChangeWakeupWord(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string p3, "tas.focus.setting.page.mode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_6

    const-string p2, "e_set_mode_result"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    move p1, p4

    :goto_6
    iget-object p2, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set mode result: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarspeech/sdk/listener/DayNightModeListener;

    if-eqz p1, :cond_7

    invoke-interface {p2}, Lcom/tencent/wecarspeech/sdk/listener/DayNightModeListener;->onSuccess()V

    goto :goto_7

    :cond_7
    invoke-interface {p2}, Lcom/tencent/wecarspeech/sdk/listener/DayNightModeListener;->onFailed()V

    goto :goto_7

    :cond_8
    new-array p0, p4, [B

    return-object p0
.end method

.method public addDayNightModeListener(Lcom/tencent/wecarspeech/sdk/listener/DayNightModeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRoleChangerListener(Lcom/tencent/wecarspeech/sdk/listener/RoleChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addWakeupWordChangeListener(Lcom/tencent/wecarspeech/sdk/listener/WakeupWordChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public enableDuplexSwitch(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+enableDuplexSwitch, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_duplex_button_enable"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.duplex.state"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-enableDuplexSwitch, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableShowValidResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+enableShowValidResult, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_duplex_validresult"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.duplex.validresult"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-enableShowValidResult, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getHelpInfo()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v0, "getHelpInfo"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.setting.page.help.get.info"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSettingPageInfo()Lcom/tencent/wecarspeech/sdk/model/SettingPageInfo;
    .locals 2

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v0, "getSettingPageInfo"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object p0

    const-string v0, "tas.action.setting.page.get.info"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/model/SettingPageInfo;->fromJson(Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/model/SettingPageInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public openFeedBack()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v1, "+openFeedBack"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.open.feedback"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v0, "-openFeedBack"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openLaunchPage()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v1, "+openLaunchPage"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.open.launch"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    const-string v0, "-openLaunchPage"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDayNightMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setDayNightMode, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_day_night_mode"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.day.night.mode"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setDayNightMode, mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDuplexActiveTime(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setDuplexActiveTime, times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_duplex_activetime"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.duplex.activetime"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setDuplexActiveTime, times:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatButtonEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setFloatButtonEnable, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_float_button_enable"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.float.button.enable"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setFloatButtonEnable, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setPrefer, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_prefer_type"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "e_prefer_pkg_name"

    invoke-virtual {p0, v0, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.prefer.app"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setPrefer, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pkg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setRole, roleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_role_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.role"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setRole, roleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setWakeupWord, wakeupWord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e_wakeup_word"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/a;->a()Lcom/tencent/wecarspeech/sdk/a;

    move-result-object v0

    const-string v1, "tas.action.setting.page.wakeup.word"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "e_result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWakeupWord result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSACustomPageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-setWakeupWord, wakeupWord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Exception"

    return-object p0
.end method
