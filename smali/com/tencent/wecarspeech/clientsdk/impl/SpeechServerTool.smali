.class public Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;
.super Ljava/lang/Object;
.source "SpeechServerTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;
    }
.end annotation


# static fields
.field private static final APPItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final META_SPEECH_TYPE:Ljava/lang/String; = "vr_speech_type"

.field public static final META_VR_CODE:Ljava/lang/String; = "vr_ver_code"

.field public static final PKG_WECAR:Ljava/lang/String; = "com.tencent.wecar"

.field public static final PKG_WECAR_SPEECH:Ljava/lang/String; = "com.tencent.wecarspeech"

.field public static final TAG:Ljava/lang/String; = "SpeechServerTool"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->APPItems:Ljava/util/List;

    .line 31
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;

    const-string v2, "com.tencent.wecarspeech"

    const/16 v3, 0x258

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;

    const-string v2, "com.tencent.wecar"

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 38
    invoke-static {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SpeechServerTool;->getSpeechVerCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xdc

    if-lt v0, v1, :cond_0

    const-string p0, "SpeechServerTool"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.wecarspeech is installed, verCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.tencent.wecarspeech"

    return-object p0

    :cond_0
    const-string v1, "com.tencent.wecarspeech"

    .line 44
    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "SpeechServerTool"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.wecarspeech is installed, verCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.tencent.wecarspeech"

    return-object p0

    :cond_1
    const-string v0, "com.tencent.wecar"

    .line 47
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "SpeechServerTool"

    const-string v0, "com.tencent.wecar is installed"

    .line 48
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.tencent.wecar"

    return-object p0

    :cond_2
    const-string p0, "com.tencent.wecarspeech"

    return-object p0
.end method

.method public static getSpeechVerCode(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.tencent.wecarspeech"

    const/16 v2, 0x80

    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 81
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "vr_ver_code"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    move v0, p0

    goto :goto_0

    :cond_0
    const-string p0, "SpeechServerTool"

    const-string v1, "info or metaData is null"

    .line 83
    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private static isInSuperA(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.wecar"

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWeCarSystemSpeech(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.wecarspeech"

    .line 68
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
