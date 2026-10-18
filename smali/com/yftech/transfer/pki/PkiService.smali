.class public Lcom/yftech/transfer/pki/PkiService;
.super Landroid/app/Service;
.source "PkiService.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "car_pki"

.field public static final TAG:Ljava/lang/String; = "PkiService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    invoke-static {}, Lcom/yftech/transfer/pki/PkiManager;->getInstance()Lcom/yftech/transfer/pki/PkiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/pki/PkiManager;->init()V

    .line 22
    invoke-static {}, Lcom/yftech/transfer/pki/PkiManager;->getInstance()Lcom/yftech/transfer/pki/PkiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/pki/PkiManager;->szitrusgetVersion()Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkiServiceszitrusgetVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
