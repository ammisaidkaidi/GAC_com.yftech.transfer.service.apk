.class public Lcom/tencent/tai/pal/c;
.super Ljava/lang/Object;
.source "VersionCompat.java"


# static fields
.field public static final a:Lcom/tencent/tai/pal/VersionInfo;

.field public static final b:Lcom/tencent/tai/pal/VersionInfo;

.field public static final c:Lcom/tencent/tai/pal/VersionInfo;

.field public static final d:Lcom/tencent/tai/pal/VersionInfo;

.field public static final e:Lcom/tencent/tai/pal/VersionInfo;

.field public static final f:Lcom/tencent/tai/pal/VersionInfo;

.field public static final g:Lcom/tencent/tai/pal/VersionInfo;

.field public static final h:Lcom/tencent/tai/pal/VersionInfo;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "3.0.0"

    const-wide/16 v1, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->a:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.5.1"

    .line 22
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->b:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.6.0"

    .line 27
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->c:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.7.0"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->d:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.8.0"

    .line 37
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->e:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.9.0"

    .line 42
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->f:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.11.0"

    .line 47
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->g:Lcom/tencent/tai/pal/VersionInfo;

    const-string v0, "3.14.0"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/tencent/tai/pal/c;->h:Lcom/tencent/tai/pal/VersionInfo;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/tencent/tai/pal/c;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 56
    sget-object v0, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object p0, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.tencent.tai.pal.platform.patch"

    const/16 v1, 0x80

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 63
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "patch_encrypted_channel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    const-string p0, "PAL_SDK"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get patch_encrypted_channel return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 67
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "PAL_SDK"

    const-string v0, "get patch_encrypted_channel error"

    .line 68
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_1
    sget-object p0, Lcom/tencent/tai/pal/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "content://com.tencent.tai.pal.platform.patch.provider"

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "getChannel"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "key_channel"

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/tai/pal/c;->j:Ljava/lang/String;

    const-string p0, "PAL_SDK"

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEncryptedChannelFromPlatformPatchProvider return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/tai/pal/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PAL_SDK"

    const-string v1, "exception caught"

    .line 83
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "PAL_SDK"

    const-string v0, "getEncryptedChannelFromPlatformPatchProvider error"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    sget-object p0, Lcom/tencent/tai/pal/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 92
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "tai_open_sdk_pal_adapter_version_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
