.class public Lcom/utils/CarPlayUtils;
.super Ljava/lang/Object;
.source "CarPlayUtils.java"


# static fields
.field private static final CARPLAY_FAST_MODE:Z

.field private static final FILE_CERTIFICATE_PATH:Ljava/lang/String; = "/data/media/0/certificate"

.field private static final KEY_ALSA_ENABLE:Ljava/lang/String; = "persist.carplay.alsa.enable"

.field private static final KEY_CERTIFICATE:Ljava/lang/String; = "persist.sys.carplay.certificate"

.field private static final KEY_CHECK_REBOOT:Ljava/lang/String; = "persist.carplay.check.reboot"

.field private static final KEY_DL_RATE:Ljava/lang/String; = "persist.vendor.ul.dl.same.rate"

.field private static final KEY_ENHANCED_SIRI:Ljava/lang/String; = "persist.carplay.enhanced.siri"

.field private static final KEY_INIT_RESOLUTION:Ljava/lang/String; = "persist.carplay.init.resolution"

.field private static final KEY_TELEPHONY_FLASH:Ljava/lang/String; = "persist.carplay.telephony.flash"

.field private static final VALUE_FALSE:Ljava/lang/String; = "false"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"

.field private static certificateD:Lio/reactivex/disposables/Disposable; = null

.field private static mCarplayBinded:Z = false

.field private static sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

.field private static final sCarplayConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.atc.carplay.app.fast_mode"

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    .line 68
    new-instance v0, Lcom/utils/CarPlayUtils$1;

    invoke-direct {v0}, Lcom/utils/CarPlayUtils$1;-><init>()V

    sput-object v0, Lcom/utils/CarPlayUtils;->sCarplayConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/autochips/carplayapp/IServiceInterface;)Lcom/autochips/carplayapp/IServiceInterface;
    .locals 0

    .line 50
    sput-object p0, Lcom/utils/CarPlayUtils;->sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 50
    sput-boolean p0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    return p0
.end method

.method static synthetic access$200()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 50
    sget-object v0, Lcom/utils/CarPlayUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public static bindCarPlayApp(Landroid/content/Context;)V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindCarPlayApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 85
    sget-boolean v0, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    if-eqz v0, :cond_1

    .line 86
    sget-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.carplay.START_CARPLAY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.autochips.carplayapp"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    sget-object v1, Lcom/utils/CarPlayUtils;->sCarplayConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    .line 90
    sget-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/utils/CarPlayUtils;->sCarplayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ATC: bindCarPlayApp bindService suc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static checkCarplayCertificateState()V
    .locals 3

    .line 138
    sget-object v0, Lcom/utils/CarPlayUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/utils/CarPlayUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 140
    :cond_0
    new-instance v0, Lcom/utils/CarPlayUtils$2;

    invoke-direct {v0}, Lcom/utils/CarPlayUtils$2;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->intervalOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lcom/utils/CarPlayUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static isCarplayCertificateOn()Z
    .locals 4

    const-string v0, "persist.sys.carplay.certificate"

    const-string v1, "0"

    .line 202
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.ul.dl.same.rate"

    const-string v2, "0"

    .line 203
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarplayCertificateOn certificateValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarplayCertificateOn dlrateValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v2, "1"

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static launchApp(Landroid/content/Context;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.autochips.carplayapp"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchApp intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CARPLAY_FAST_MODE:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 123
    sget-boolean p0, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    if-eqz p0, :cond_1

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ATC: start package sCarplayApp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/utils/CarPlayUtils;->sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 126
    :try_start_0
    sget-object p0, Lcom/utils/CarPlayUtils;->sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

    if-eqz p0, :cond_1

    .line 127
    sget-object p0, Lcom/utils/CarPlayUtils;->sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

    invoke-interface {p0}, Lcom/autochips/carplayapp/IServiceInterface;->showCarPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ATC: CarPlay App error."

    .line 129
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static turnOffResolution()V
    .locals 2

    const-string v0, "turnOffResolution()"

    .line 192
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "persist.carplay.init.resolution"

    const-string v1, "false"

    .line 193
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unbindCarPlayApp(Landroid/content/Context;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindCarPlayApp CARPLAY_FAST_MODE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mCarplayBinded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 100
    sget-boolean v0, Lcom/utils/CarPlayUtils;->CARPLAY_FAST_MODE:Z

    if-eqz v0, :cond_0

    .line 101
    sget-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/utils/CarPlayUtils;->mCarplayBinded:Z

    const/4 v0, 0x0

    .line 103
    sput-object v0, Lcom/utils/CarPlayUtils;->sCarplayApp:Lcom/autochips/carplayapp/IServiceInterface;

    .line 105
    :try_start_0
    sget-object v0, Lcom/utils/CarPlayUtils;->sCarplayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ATC: unbindService IllegalArgumentException"

    .line 107
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
