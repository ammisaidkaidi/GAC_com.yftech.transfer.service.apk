.class public final Lcom/tencent/wecarbase/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_EXPIRED:I = 0x1

.field public static final ACCOUNT_UNEXPIRED:I = 0x0

.field public static final ACTION_TAI_SERVICE_STARTED:Ljava/lang/String; = "com.tencent.taiservice.wecarbase.started"

.field public static final ACTION_TAI_SERVICE_STARTED_AND_NET_OK:Ljava/lang/String; = "com.tencent.taiservice.wecarbase.started_and_net_ok"

.field public static final BASE_URL_DEV:Ljava/lang/String; = "https://wecarproxy.sparta.html5.qq.com"

.field public static final BASE_URL_DEV_TEST:Ljava/lang/String; = "https://wecarproxy.sparta.html5.qq.com/wecardev"

.field public static final BASE_URL_ONLINE:Ljava/lang/String; = "https://wecarplat.map.qq.com"

.field public static final BASE_URL_PRE_ONLINE:Ljava/lang/String; = "https://wecarproxy.sparta.html5.qq.com/predist"

.field public static final BIND_VER:I = 0x2

.field public static final BIND_VER_FOR_WECARID_REG:I = 0x3

.field public static final BIND_VER_FOR_WECARID_REG_WHITHOUT_NAV_REPORT:I = 0x4

.field public static final EXTRA_KEY_FROM:Ljava/lang/String; = "from"

.field public static final FEED_BACK_ACTION_NORMAL:Ljava/lang/String; = "com.tencent.wecarbase.bugreport.SUGGEST_AND_FEEDBACK"

.field public static final FEED_BACK_CENTER_ACTION:Ljava/lang/String; = "com.tencent.wecarbase.bugreport.FEEDBACK_HISTORY"

.field public static final FF_CLOUD_CONNECT_LOG_COUNT:I = 0x32

.field public static final FF_NORMAL_LOG_COUNT:I = 0xa

.field public static final FF_TRACE_LOG_COUNT:I = 0x3c

.field public static final IMMERSE_MODEL:Ljava/lang/String; = "immerse"

.field public static final IS_MAIN_THREAD:Ljava/lang/String; = "ISMapublic static final inthread"

.field public static final LOGIN_TYPE_QQ:I = 0x1

.field public static final LOGIN_TYPE_WX:I = 0x0

.field public static final PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field public static final SDK_BUILD_TYPE:Ljava/lang/String; = "TAI_C/S"

.field public static final SDK_BUILD_TYPE_SUB_CS:Ljava/lang/String; = "_C/S"

.field public static final SDK_VERSION:Ljava/lang/String; = "SDKVersion"

.field public static final TAI_ACCOUNT_CENTER:Ljava/lang/String; = "com.tencent.wecarbase.account.WECHAT_BIND"

.field public static final TAI_ACCOUNT_CENTER_CLOSE:Ljava/lang/String; = "com.tencent.wecarbase.account.WECHAT_BIND_CLOSE"

.field public static final TAI_FEEDBACK_CLOSE:Ljava/lang/String; = "com.tencent.wecarbase.account.TAI_FEEDBACK_CLOSE"

.field public static final TTS_RES_MD5_FROM_SPEECH:Ljava/lang/String;

.field public static final TTS_RES_PATH_DOBBY:Ljava/lang/String;

.field public static final TTS_RES_PATH_DOBBY_LIUQI:Ljava/lang/String;

.field public static final TTS_RES_PATH_DOBBY_V2:Ljava/lang/String;

.field public static final TTS_RES_PATH_IFLYTEK:Ljava/lang/String;

.field public static final TTS_RES_PATH_IFLYTEK_GUANGQI:Ljava/lang/String; = "/system/speechData/tts/"

.field public static final TYPE_QQ:I = 0x1

.field public static final TYPE_WX:I = 0x2

.field public static final UNSET_URL:I = -0x1

.field public static final URI_ACCOUNT:Ljava/lang/String; = "/account"

.field public static final URI_PRODUCT_CONFIG:Ljava/lang/String; = "/config/product"

.field public static final URI_USER_CONFIG:Ljava/lang/String; = "/config/account"

.field public static final URI_USER_CONFIG_SET:Ljava/lang/String; = "/config/setAcctConf"

.field public static final URI_WX_BIND_INFO:Ljava/lang/String; = "/user/bindinfo"

.field public static final URI_WX_QR_CODE_INFO:Ljava/lang/String; = "/user/bindinfo"

.field public static final URI_WX_UNBIND_CAR:Ljava/lang/String; = "/user/unbindcar"

.field public static final URI_WX_USER_INFO:Ljava/lang/String; = "/user/userinfo"

.field public static final USE_URL_DEV:I = 0x1

.field public static final USE_URL_ONLINE:I = 0x0

.field public static final USE_URL_PRE_ONLINE:I = 0x2

.field public static final VERSION_CODE:Ljava/lang/String; = "VersionCode"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/data3/tts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/Constants;->TTS_RES_PATH_IFLYTEK:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/dingdang/res/tts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/Constants;->TTS_RES_PATH_DOBBY_LIUQI:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/data3/dingdang/res/tts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/Constants;->TTS_RES_PATH_DOBBY:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/data/tts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/Constants;->TTS_RES_PATH_DOBBY_V2:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/data/md5.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarbase/Constants;->TTS_RES_MD5_FROM_SPEECH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
