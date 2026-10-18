.class Lcom/tencent/wecarbase/common/AppInfoUploader$1;
.super Ljava/lang/Object;
.source "AppInfoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/common/AppInfoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/common/AppInfoUploader;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 127
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 132
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 134
    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/PackageUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/node/appversionsave"

    .line 138
    invoke-static {}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getInstance()Lcom/tencent/wecarbase/WeCarBaseSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->isOnlineEnv()Z

    move-result v0

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v9, "http://plat.wecar.map.qq.com"

    goto :goto_0

    :cond_0
    const-string v9, "http://wecarplattest.sparta.html5.qq.com"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    iget-object v9, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v9}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uploadAppInfo, online = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", url = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v11, v0, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ge v0, v12, :cond_a

    .line 144
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/client/AccountManager;->getWeCarAccount()Lcom/tencent/wecarbase/model/WeCarAccount;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    invoke-virtual {v0}, Lcom/tencent/wecarbase/model/WeCarAccount;->getWeCarId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_6

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/wecarbase/model/WeCarAccount;->getWeCarId()Ljava/lang/String;

    move-result-object v10

    .line 155
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wecarbase/client/AccountManager;->getNonce()J

    move-result-wide v14

    .line 156
    invoke-virtual {v0}, Lcom/tencent/wecarbase/model/WeCarAccount;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "wecarId"

    .line 159
    invoke-virtual {v12, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-object v9, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v9}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$100(Lcom/tencent/wecarbase/common/AppInfoUploader;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "packagename"

    const-string v2, "com.tencent.taiservice"

    .line 162
    invoke-virtual {v12, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionname"

    const-string v9, "3.1.0.474"

    .line 163
    invoke-virtual {v12, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versioncode"

    const-string v9, "3.1.0.474"

    .line 164
    invoke-virtual {v12, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const-string v2, "packagename"

    .line 167
    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionname"

    .line 168
    invoke-virtual {v12, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versioncode"

    .line 169
    invoke-virtual {v12, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_2
    const-string v2, "nonce"

    .line 173
    invoke-virtual {v12, v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "appName"

    const-string v9, "test"

    .line 174
    invoke-virtual {v12, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sKey"

    .line 175
    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-static {v7, v12}, Lcom/tencent/wecarbase/common/helper/SignHelper;->generateSigForHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sig"

    .line 177
    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    new-instance v0, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;

    invoke-direct {v0, v13, v8, v2}, Lcom/tencent/wecarbase/common/tools/network/http/BaseJsonPostRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v9, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v9}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uploadAppInfo, request url is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " body is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/tools/network/http/HttpRequest;->execute()Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    .line 184
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStringBody()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    .line 186
    :goto_3
    :try_start_3
    iget-object v12, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v12}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AppInfoUploader, mRunnable HttpRequest error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_4
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uploadAppInfo, response body = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_6

    .line 189
    invoke-virtual {v9}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    .line 197
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "err"

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "err"

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    const-string v2, "content"

    .line 201
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "content"

    .line 202
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "sKey"

    .line 203
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    invoke-static {}, Lcom/tencent/wecarbase/client/AccountManager;->getInstance()Lcom/tencent/wecarbase/client/AccountManager;

    move-result-object v2

    const-string v9, "sKey"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "nonce"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v2, v9, v12, v13}, Lcom/tencent/wecarbase/client/AccountManager;->updateSessionKey(Ljava/lang/String;J)V

    goto :goto_7

    :cond_5
    if-nez v2, :cond_9

    goto :goto_8

    :cond_6
    :goto_5
    if-nez v9, :cond_7

    .line 191
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uploadAppInfo, response is null or not success"

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 193
    :cond_7
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uploadAppInfo, response is not nul, statusCode = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/tencent/wecarbase/common/tools/network/http/HttpResult;->getStatusCode()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 146
    :cond_8
    :goto_6
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uploadAppInfo, but no wecarId, retry"

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->fe(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v12, 0x7d0

    .line 148
    :try_start_4
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 150
    :try_start_5
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppInfoUploader, mRunnable get account error: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    move v0, v11

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_c

    .line 217
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$100(Lcom/tencent/wecarbase/common/AppInfoUploader;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "taiservice_cached_version_code"

    const-string v3, "com.tencent.taiservice"

    .line 220
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "taiservice_cached_version_code_wecar_id"

    .line 221
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    .line 224
    :cond_b
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cached_version_code"

    .line 226
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cached_version_code_wecar_id"

    .line 227
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    :goto_9
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadAppInfo, save vc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to sp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->fd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    :cond_c
    :goto_a
    iget-object v0, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v0}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$200(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    .line 234
    :try_start_6
    iget-object v2, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$000(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppInfoUploader, mRunnable error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :goto_b
    return-void

    .line 236
    :goto_c
    iget-object v1, v1, Lcom/tencent/wecarbase/common/AppInfoUploader$1;->this$0:Lcom/tencent/wecarbase/common/AppInfoUploader;

    invoke-static {v1}, Lcom/tencent/wecarbase/common/AppInfoUploader;->access$200(Lcom/tencent/wecarbase/common/AppInfoUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
