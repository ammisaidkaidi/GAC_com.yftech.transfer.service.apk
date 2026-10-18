.class public final Lcom/tencent/libspeechcommon/def/ActionRet;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/libspeechcommon/def/ActionRet$ActionCode;
    }
.end annotation


# static fields
.field private static mRet:Lcom/tencent/libspeechcommon/def/ActionRet;


# instance fields
.field public code:I

.field public contextInfo:Ljava/lang/String;

.field public message:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    iput-object p2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    return-void
.end method

.method public static create(I)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 3

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/libspeechcommon/def/ActionRet;

    invoke-direct {v1, p0, v2, v2}, Lcom/tencent/libspeechcommon/def/ActionRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput p0, v1, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object v2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object v2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    :goto_0
    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 3

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/libspeechcommon/def/ActionRet;

    invoke-direct {v1, p0, p1, v2}, Lcom/tencent/libspeechcommon/def/ActionRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput p0, v1, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object p1, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object v2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    :goto_0
    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 2

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/libspeechcommon/def/ActionRet;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/libspeechcommon/def/ActionRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput p0, v1, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object p1, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    iput-object p2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    :goto_0
    sget-object p0, Lcom/tencent/libspeechcommon/def/ActionRet;->mRet:Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toActionRet([B)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "tas.action.ret.value"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contextInfo"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/tencent/libspeechcommon/def/ActionRet;

    invoke-direct {v3, p0, v2, v1}, Lcom/tencent/libspeechcommon/def/ActionRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    const-string v1, "ActionRet"

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContextInfo()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/libspeechcommon/def/ActionRet;

    monitor-enter v0

    :try_start_0
    const-string v1, "{"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"code\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->code:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"message\":\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->message:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"contextInfo\":\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/libspeechcommon/def/ActionRet;->contextInfo:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
