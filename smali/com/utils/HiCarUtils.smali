.class public Lcom/utils/HiCarUtils;
.super Ljava/lang/Object;
.source "HiCarUtils.java"


# static fields
.field private static final FILE_CERTIFICATE_PATH:Ljava/lang/String; = "/sdcard/certificate_hicar"

.field private static final KEY_CERTIFICATE:Ljava/lang/String; = "persist.sys.hicar.certificate"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static certificateD:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 15
    sget-object v0, Lcom/utils/HiCarUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public static checkHiCarCertificateState()V
    .locals 3

    .line 26
    sget-object v0, Lcom/utils/HiCarUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/utils/HiCarUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 28
    :cond_0
    new-instance v0, Lcom/utils/HiCarUtils$1;

    invoke-direct {v0}, Lcom/utils/HiCarUtils$1;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->intervalOnThread(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lcom/utils/HiCarUtils;->certificateD:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static isHiCarCertificateOn()Z
    .locals 3

    const-string v0, "persist.sys.hicar.certificate"

    const-string v1, "0"

    .line 54
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHiCarCertificateOn certificateValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v1, "1"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
