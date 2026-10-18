.class public Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;
    }
.end annotation


# static fields
.field public static final META_SPEECH_TYPE:Ljava/lang/String; = "vr_speech_type"

.field public static final META_VR_CODE:Ljava/lang/String; = "vr_ver_code"

.field public static final PKG_WECAR:Ljava/lang/String; = "com.tencent.wecar"

.field public static final PKG_WECAR_SPEECH:Ljava/lang/String; = "com.tencent.wecarspeech"

.field public static final PKG_WECAR_SPEECH_CLIENT:Ljava/lang/String; = "com.tencent.wecarspeechclient"

.field public static final TAG:Ljava/lang/String; = "SpeechServerTool"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->a:Ljava/util/List;

    sget-object v0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->a:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;

    const-string v2, "com.tencent.wecarspeech"

    const/16 v3, 0x258

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->a:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;

    const-string v2, "com.tencent.wecar"

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->getSpeechVerCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xdc

    if-lt v0, v1, :cond_0

    sget-object p0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v2, "com.tencent.wecarspeech is installed, verCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.tencent.wecarspeech"

    goto :goto_1

    :cond_0
    const-string v1, "com.tencent.wecarspeechclient"

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/util/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->TAG:Ljava/lang/String;

    const-string v0, "com.tencent.wecarspeechclient is installed"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.tencent.wecarspeechclient"

    goto :goto_1

    :cond_1
    const-string v1, "com.tencent.wecarspeech"

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/sdk/util/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "com.tencent.wecar"

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/sdk/util/AppUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->TAG:Ljava/lang/String;

    const-string v1, "com.tencent.wecar is installed"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/util/SpeechServerTool;->isWeCarSystemSpeech(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "com.tencent.wecar"

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getSpeechVerCode(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.tencent.wecarspeech"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "vr_ver_code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static isWeCarSystemSpeech(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.tencent.wecar"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "vr_speech_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
