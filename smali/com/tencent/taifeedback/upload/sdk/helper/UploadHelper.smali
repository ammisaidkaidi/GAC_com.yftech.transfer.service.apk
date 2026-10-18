.class public Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "UploadHelper"

.field private static lockFile:Z = false


# instance fields
.field private isProtectWecar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->isProtectWecar:Z

    return-void
.end method

.method private addEmptyLogForCustomKey(Ljava/lang/String;)V
    .locals 1

    .line 598
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p0

    const-string v0, "\u6b64log\u4e3a\u81ea\u52a8\u751f\u6210\uff0c\u8bf7\u5ffd\u7565"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->writeTextFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getIsFlieLock()Z
    .locals 1

    .line 610
    sget-boolean v0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->lockFile:Z

    return v0
.end method

.method private parseAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 583
    invoke-static {p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackConfig;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "BUGLY_APPID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static resetFileLock()V
    .locals 1

    const/4 v0, 0x0

    .line 606
    sput-boolean v0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->lockFile:Z

    return-void
.end method

.method private send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    .line 164
    new-instance v3, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {v3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    .line 165
    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v5

    const/4 v6, 0x1

    .line 175
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 179
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v11, p6

    move v10, v6

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 180
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 181
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v10, "WeCarId"

    .line 183
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v11, v13

    .line 185
    :cond_1
    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v10, v8

    goto :goto_0

    :cond_2
    move-object/from16 v11, p6

    move v10, v6

    :cond_3
    if-eqz v10, :cond_4

    .line 191
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string v0, "Sig\u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 192
    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object v3

    .line 196
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 198
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u83b7\u53d6wecarid\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object v3

    :cond_5
    const-string v2, "app"

    move-object/from16 v9, p4

    .line 201
    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wecarid"

    .line 202
    invoke-virtual {v7, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userid"

    const-string v9, "0"

    move-object/from16 v10, p3

    .line 203
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, ""

    goto :goto_1

    :cond_6
    move-object v9, v10

    :goto_1
    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "feedbackid"

    .line 204
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    .line 205
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getLocationAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    move-object/from16 v9, p8

    .line 206
    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    invoke-static {v4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->encodeBase64File(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "content"

    .line 209
    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-static {v2}, Lcom/tencent/taifeedback/upload/sdk/helper/Md5Helper;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v9

    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "zipMd5:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ziphash"

    .line 212
    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "/feedback"

    .line 213
    invoke-static {v2, v7}, Lcom/tencent/wecarbase/common/helper/SignHelper;->generateSigForHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "sig"

    .line 214
    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wecarplat.map.qq.com"

    .line 219
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDebugEnv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v2, "wecarproxy.sparta.html5.qq.com"

    :cond_7
    const-string v0, "http://%s/feedback"

    .line 221
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v9, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;

    const-string v10, "http://%s/feedback"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v2, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v2, v10}, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v2

    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " bugreport my id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", HTTP "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " feeedback query="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v9}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object v2

    .line 225
    invoke-virtual {v3, v1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setFeedbackid(Ljava/lang/String;)V

    if-nez v2, :cond_8

    .line 227
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string v0, "null"

    .line 228
    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v5, v4}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 230
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bugreport my id:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "register result is null."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 233
    :cond_8
    invoke-virtual {v2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStringBody()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v7

    sget-object v9, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bugreport my id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " httpResult="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "err"

    .line 238
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "err"

    .line 239
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    goto :goto_2

    :cond_9
    move v0, v8

    .line 242
    :goto_2
    invoke-virtual {v2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 243
    invoke-virtual {v3, v8}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 244
    invoke-virtual {v3, v1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bugreport my id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  feedback send() json:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 253
    :cond_a
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 254
    invoke-virtual {v3, v1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bugreport my id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", HTTP  Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 265
    :goto_3
    invoke-virtual {v5, v4}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    return-object v3
.end method

.method public static setFileLock()V
    .locals 1

    const/4 v0, 0x1

    .line 602
    sput-boolean v0, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->lockFile:Z

    return-void
.end method


# virtual methods
.method public bindFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;"
        }
    .end annotation

    .line 374
    new-instance p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    const/4 v0, 0x1

    .line 376
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "0"

    if-ne p2, v1, :cond_0

    goto/16 :goto_2

    .line 381
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 385
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 387
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 389
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v0

    :cond_3
    if-eqz v4, :cond_4

    .line 396
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "Sig\u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 397
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    .line 401
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 402
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 403
    new-instance p1, Ljava/lang/String;

    const-string p2, "\u83b7\u53d6wecarid\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p4, "wecarid"

    .line 407
    invoke-virtual {v1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "userid"

    .line 408
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "/bindFeedback"

    .line 411
    invoke-static {p2, v1}, Lcom/tencent/wecarbase/common/helper/SignHelper;->generateSigForHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sig"

    .line 412
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "wecarplat.map.qq.com"

    .line 417
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDebugEnv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p2, "wecarproxy.sparta.html5.qq.com"

    :cond_6
    const-string p1, "http://%s/bindFeedback"

    .line 419
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 420
    new-instance p3, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;

    const-string p4, "http://%s/bindFeedback"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, v0, p2, p4}, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bugreport my id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " query  bindFeedback ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object p2

    if-nez p2, :cond_7

    .line 425
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "null"

    .line 426
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bugreport my id:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "register result is null."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 430
    :cond_7
    invoke-virtual {p2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStringBody()Ljava/lang/String;

    move-result-object p3

    .line 431
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p4

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bugreport my id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " feedback bindFeedback httpResult="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "err"

    .line 435
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    const-string p4, "err"

    .line 436
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    move p1, v0

    goto :goto_1

    :cond_8
    move p1, v2

    .line 439
    :goto_1
    invoke-virtual {p2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 440
    invoke-virtual {p0, v2}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 441
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bugreport my id:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "json:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 445
    :cond_9
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 446
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 377
    :cond_a
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 378
    new-instance p1, Ljava/lang/String;

    const-string p2, "\u8bf7\u5148\u767b\u5f55\u5e76\u83b7\u53d6userid"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 451
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bugreport my id:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HTTP  Exception="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method

.method public dowloadFeedbackMp3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;"
        }
    .end annotation

    .line 462
    new-instance p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    const/4 v0, 0x1

    .line 465
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 469
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, p2

    move p2, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 470
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 471
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string p2, "WeCarId"

    .line 473
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object v4, v6

    .line 475
    :cond_1
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move p2, v2

    goto :goto_0

    :cond_2
    move-object v4, p2

    move p2, v0

    :cond_3
    if-eqz p2, :cond_4

    .line 482
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "Sig\u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 483
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    .line 487
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 488
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 489
    new-instance p1, Ljava/lang/String;

    const-string p2, "\u83b7\u53d6wecarid\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p2, "wecarid"

    .line 493
    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "feedbackid"

    .line 494
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "/downloadFeedback"

    .line 496
    invoke-static {p2, v1}, Lcom/tencent/wecarbase/common/helper/SignHelper;->generateSigForHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "sig"

    .line 497
    invoke-virtual {v1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "wecarplat.map.qq.com"

    .line 502
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDebugEnv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p2, "wecarproxy.sparta.html5.qq.com"

    :cond_6
    const-string p1, "http://%s/downloadFeedback"

    .line 504
    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 505
    new-instance p4, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;

    const-string v3, "http://%s/downloadFeedback"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v0, p2, v3}, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bugreport my id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " query= "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p4}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object p1

    if-nez p1, :cond_7

    .line 509
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "null"

    .line 510
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " bugreport my id: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " register result is null. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 515
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStreamBody()Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_8

    .line 517
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "null"

    .line 518
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bugreport my id:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "  null == mp3 "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 524
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".mp3"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 525
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p3

    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " bugreport mp3name = "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    move-result p4

    if-nez p4, :cond_9

    .line 529
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists!"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    :cond_9
    const/4 p4, 0x0

    .line 536
    :try_start_1
    new-instance p5, Ljava/io/FileOutputStream;

    invoke-direct {p5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 537
    :try_start_2
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 538
    :try_start_3
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p4, 0x400

    .line 540
    :try_start_4
    new-array p4, p4, [B

    .line 541
    :goto_1
    invoke-virtual {p3, p4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 542
    invoke-virtual {p1, p4, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 549
    :cond_a
    :try_start_5
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    goto :goto_2

    :catch_0
    move-exception p3

    .line 552
    :try_start_6
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 556
    :goto_2
    :try_start_7
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_3

    :catch_1
    move-exception p3

    .line 559
    :try_start_8
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 563
    :goto_3
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_8

    :catch_2
    move-exception p1

    .line 566
    :try_start_a
    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Exception:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_8

    :catchall_0
    move-exception p2

    move-object p4, p3

    move-object p3, p1

    goto/16 :goto_9

    :catch_3
    move-exception p4

    move-object v8, p3

    move-object p3, p1

    move-object p1, p4

    move-object p4, v8

    goto :goto_5

    :catchall_1
    move-exception p2

    move-object v8, p4

    move-object p4, p3

    move-object p3, v8

    goto/16 :goto_9

    :catch_4
    move-exception p1

    move-object v8, p4

    move-object p4, p3

    move-object p3, v8

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object p3, p4

    goto/16 :goto_9

    :catch_5
    move-exception p1

    move-object p3, p4

    goto :goto_5

    :catchall_3
    move-exception p2

    move-object p3, p4

    move-object p5, p3

    goto/16 :goto_9

    :catch_6
    move-exception p1

    move-object p3, p4

    move-object p5, p3

    .line 545
    :goto_5
    :try_start_b
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p4, :cond_b

    .line 549
    :try_start_c
    invoke-virtual {p4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_6

    :catch_7
    move-exception p1

    .line 552
    :try_start_d
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :cond_b
    :goto_6
    if-eqz p5, :cond_c

    .line 556
    :try_start_e
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_7

    :catch_8
    move-exception p1

    .line 559
    :try_start_f
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    :cond_c
    :goto_7
    if-eqz p3, :cond_d

    .line 563
    :try_start_10
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_8

    :catch_9
    move-exception p1

    .line 566
    :try_start_11
    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Exception:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 570
    :cond_d
    :goto_8
    invoke-virtual {p0, p2}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_d

    :catchall_4
    move-exception p2

    :goto_9
    if-eqz p4, :cond_e

    .line 549
    :try_start_12
    invoke-virtual {p4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_a

    :catch_a
    move-exception p1

    .line 552
    :try_start_13
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :cond_e
    :goto_a
    if-eqz p5, :cond_f

    .line 556
    :try_start_14
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_b

    :catch_b
    move-exception p1

    .line 559
    :try_start_15
    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :cond_f
    :goto_b
    if-eqz p3, :cond_10

    .line 563
    :try_start_16
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto :goto_c

    :catch_c
    move-exception p1

    .line 566
    :try_start_17
    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Exception:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_10
    :goto_c
    throw p2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    :catch_d
    move-exception p1

    .line 572
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bugreport my id:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", HTTP  Exception="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 575
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    :goto_d
    return-object p0
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Properties;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v0, p7

    move-object/from16 v3, p9

    .line 43
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bugreport prepare feedback_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "feedback_id"

    invoke-virtual {v3, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sendTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 47
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 48
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 49
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getUuid()Ljava/lang/String;

    move-result-object v8

    const-string v10, "feedback_id"

    .line 50
    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v8, "feedback_id"

    .line 51
    invoke-virtual {v3, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :cond_0
    const-string v3, ""

    :try_start_0
    const-string v10, "uuid"

    .line 58
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "build"

    .line 59
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getJsonBuildInfo()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "rom"

    .line 60
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getJsonRomInfo()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "network"

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getJsonNetworkInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "hardware"

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getJsonHardwareInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "telephony"

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/tencent/taifeedback/upload/sdk/helper/DeviceHelper;->getJsonTelephonyInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "pkg"

    .line 65
    invoke-virtual {v6, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-static {v2, v5}, Lcom/tencent/taifeedback/upload/sdk/helper/PackageHelper;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v11, "version_name"

    const/4 v12, 0x0

    .line 67
    aget-object v13, v10, v12

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, ""

    goto :goto_0

    :cond_1
    aget-object v13, v10, v12

    :goto_0
    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "version_code"

    const/4 v13, 0x1

    .line 68
    aget-object v14, v10, v13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, ""

    goto :goto_1

    :cond_2
    aget-object v14, v10, v13

    :goto_1
    invoke-virtual {v6, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "build_time"

    const/4 v14, 0x2

    .line 69
    aget-object v14, v10, v14

    invoke-virtual {v6, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "name"

    const/4 v14, 0x3

    .line 70
    aget-object v15, v10, v14

    invoke-virtual {v6, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "app"

    .line 71
    invoke-virtual {v4, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v11, ""

    move-object/from16 v15, p2

    .line 75
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    aget-object v10, v10, v14

    goto :goto_2

    :cond_3
    move-object v10, v15

    :goto_2
    const-string v11, "desc"

    .line 76
    invoke-virtual {v7, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "title"

    .line 77
    invoke-virtual {v7, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "detail"

    .line 78
    invoke-virtual {v7, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "create_time"

    .line 79
    invoke-virtual {v7, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "creator"

    move-object/from16 v10, p3

    .line 80
    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "guid"

    .line 81
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "type"

    const-string v10, "android_sdk"

    .line 82
    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "location"

    .line 84
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getLocationLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "address"

    .line 85
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getLocationAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "speed"

    .line 86
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getLocationSpeed(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_6

    .line 93
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v3

    move v3, v13

    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 94
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 95
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v3, "WeCarId"

    .line 97
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_5

    move-object v3, v15

    goto :goto_4

    :cond_5
    move-object v3, v11

    :goto_4
    :try_start_2
    const-string v11, "userid"

    .line 99
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v11, v3

    move v3, v12

    goto :goto_3

    :cond_6
    move-object v11, v3

    move v3, v13

    .line 106
    :cond_7
    :try_start_3
    iget-boolean v0, v1, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->isProtectWecar:Z

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 107
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    .line 108
    invoke-virtual {v0, v13}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string v3, "Wecar\u81ea\u5b9a\u4e49\u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 109
    invoke-virtual {v0, v3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "customized"

    .line 112
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v3, v11

    goto :goto_5

    :catch_1
    move-exception v0

    .line 115
    :goto_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v6

    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v11, v3

    .line 119
    :goto_6
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :try_start_4
    const-string v0, "file_image"

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".png"

    invoke-virtual {v3, v6, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".bugly.log.txt"

    invoke-virtual {v3, v6, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "default_log_file"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".bugly.log.txt"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->addEmptyLogForCustomKey(Ljava/lang/String;)V

    :cond_9
    const-string v0, "file_log"

    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".bugly.log.txt"

    invoke-virtual {v3, v6, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "file_music"

    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".amr;.mp3;.wav"

    invoke-virtual {v3, v6, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".png"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".amr;.mp3;.wav"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ".bugly.log.txt"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "bug.json"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "file_extra_log"

    .line 131
    invoke-virtual {v3, v6, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameExceptExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".zip"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "file_attachment"

    .line 133
    invoke-virtual {v3, v6, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameExceptExt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getFileNameByExt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bug"

    .line 135
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " bugreport feeedback size = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePropFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->storeJsonToFile(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 141
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    :goto_7
    invoke-virtual {v3, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreZipFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    :try_start_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v7, v0, v4}, Lcom/tencent/taifeedback/upload/sdk/utils/ZipUtil;->compress([Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 150
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v7

    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v10, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 152
    :goto_8
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " bugreport bugPath = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, v6}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->deleteSubFiles(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->resetFileLock()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    move-object v7, v11

    move-object/from16 v8, p8

    move-object/from16 v9, p6

    .line 160
    invoke-direct/range {v1 .. v9}, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    move-result-object v0

    return-object v0
.end method

.method public pullFeedbackList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;"
        }
    .end annotation

    .line 278
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " bugreport pullFeedbackList userid "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " wecarid = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  sigMap = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p3, p5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p0, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;

    invoke-direct {p0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;-><init>()V

    const/4 p3, 0x1

    .line 281
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 282
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 283
    new-instance p1, Ljava/lang/String;

    const-string p2, "\u8bf7\u5148\u767b\u5f55\u5e76\u83b7\u53d6userid"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    .line 287
    :cond_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    .line 291
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    invoke-interface {p6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    invoke-virtual {p5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, p3

    :cond_3
    if-eqz v2, :cond_4

    .line 302
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "Sig\u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 303
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    .line 307
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 308
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 309
    new-instance p1, Ljava/lang/String;

    const-string p2, "\u83b7\u53d6wecarid\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p6, "app"

    const-string v1, ""

    .line 313
    invoke-virtual {p5, p6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "wecarid"

    .line 314
    invoke-virtual {p5, p6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "userid"

    .line 315
    invoke-virtual {p5, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "/listFeedback"

    .line 317
    invoke-static {p2, p5}, Lcom/tencent/wecarbase/common/helper/SignHelper;->generateSigForHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "sig"

    .line 318
    invoke-virtual {p5, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "wecarplat.map.qq.com"

    .line 323
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsDebugEnv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p2, "wecarproxy.sparta.html5.qq.com"

    :cond_6
    const-string p1, "http://%s/listFeedback"

    .line 325
    new-array p4, p3, [Ljava/lang/Object;

    aput-object p2, p4, v0

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 326
    new-instance p4, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;

    const-string p6, "http://%s/listFeedback"

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p4, p3, p2, p6}, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p6, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bugreport pullFeedbackList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " query result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p6, p5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p4}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object p2

    if-nez p2, :cond_7

    .line 330
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    const-string p1, "null"

    .line 331
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bugreport my id:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "register result is null."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 335
    :cond_7
    invoke-virtual {p2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStringBody()Ljava/lang/String;

    move-result-object p4

    .line 336
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p5

    sget-object p6, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugreport my id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pullFeedbackList httpResult="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p6, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p5, "err"

    .line 340
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    const-string p5, "err"

    .line 341
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    move p1, p3

    goto :goto_1

    :cond_8
    move p1, v0

    .line 344
    :goto_1
    invoke-virtual {p2}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 345
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 346
    invoke-virtual {p0, p4}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "bugreport my id:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "json:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 350
    :cond_9
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 351
    invoke-virtual {p0, p4}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 355
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p4, Lcom/tencent/taifeedback/upload/sdk/helper/UploadHelper;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "bugreport my id:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", HTTP  Exception="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, p3}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setCode(I)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/ResultHelper;->setMsg(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method
