.class public final Lcom/tencent/tai/pal/client/PALServiceManager;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;,
        Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;,
        Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;
    }
.end annotation


# static fields
.field public static final ADAPTATION_TYPE_DEFAULT:I = 0x0

.field public static final ADAPTATION_TYPE_LOCAL:I = 0x2

.field public static final ADAPTATION_TYPE_REMOTE:I = 0x1

.field public static final ADAPTATION_TYPE_UNKNOWN:I = -0x1

.field public static final ERROR_BIND_SERVICE_EXCEPTION:I = 0x3

.field public static final ERROR_BIND_SERVICE_FAILURE:I = 0x4

.field public static final ERROR_REMOTE_INNER_ERROR:I = 0x2

.field public static final ERROR_REMOTE_VERSION_NOT_MATCH:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x1

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/tencent/tai/pal/client/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tencent/tai/pal/client/a;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/a;)Lcom/tencent/tai/pal/client/a;
    .locals 0

    .line 19
    sput-object p0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    return-object p0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->a:Ljava/util/List;

    return-object v0
.end method

.method public static getCurrentAdaptationPackageName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    invoke-interface {v0}, Lcom/tencent/tai/pal/client/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PALServiceManager : service NOT connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentAdaptationType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static getLocalVerison()Lcom/tencent/tai/pal/VersionInfo;
    .locals 1

    .line 236
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformSupportInfo()Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    invoke-interface {v0}, Lcom/tencent/tai/pal/client/a;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PALServiceManager : service NOT connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PALServiceManager : service NOT connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->getPlatformSupportInfo()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tai/pal/client/b;->a(Lcom/tencent/tai/pal/PlatformSupportInfo;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/client/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service Not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PALServiceManager : service NOT connected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->listener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->build()Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;

    move-result-object p0

    .line 124
    invoke-static {p0}, Lcom/tencent/tai/pal/client/PALServiceManager;->init(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;Lcom/tencent/tai/pal/client/PALServiceManager$AdaptationMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 161
    new-instance p2, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    invoke-direct {p2, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p2, p1}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->listener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->build()Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;

    move-result-object p0

    .line 161
    invoke-static {p0}, Lcom/tencent/tai/pal/client/PALServiceManager;->init(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 141
    new-instance p2, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    invoke-direct {p2, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {p2, p1}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->listener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig$Builder;->build()Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;

    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/tencent/tai/pal/client/PALServiceManager;->init(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;)V

    return-void
.end method

.method public static init(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->getManagerStateListener()Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 179
    new-instance v1, Lcom/tencent/tai/pal/client/PALServiceManager$3;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tai/pal/client/PALServiceManager$3;-><init>(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    invoke-static {v1}, Lcom/tencent/tai/pal/util/a;->b(Ljava/lang/Runnable;)V

    return-void

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument config:null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isServiceConnected()Z
    .locals 1

    .line 113
    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tai/pal/client/PALServiceManager;->b:Lcom/tencent/tai/pal/client/a;

    invoke-interface {v0}, Lcom/tencent/tai/pal/client/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static registerManagerStateListener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$1;-><init>(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    invoke-static {v0}, Lcom/tencent/tai/pal/util/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregisterManagerStateListener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/tencent/tai/pal/client/PALServiceManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$2;-><init>(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    invoke-static {v0}, Lcom/tencent/tai/pal/util/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
