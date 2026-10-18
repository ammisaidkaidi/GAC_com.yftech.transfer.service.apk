.class public Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;
.super Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;
.source "MediaControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;,
        Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;,
        Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;
    }
.end annotation


# static fields
.field private static final BD_VOICE_CTRL_SEARCH_ACTION:Ljava/lang/String; = "com.yftech.mediaservice.SEARCH"

.field private static final MUSIC_ACTION:Ljava/lang/String; = "yf.car.music.action.start"

.field public static final PLAY_FLAG:Ljava/lang/String; = "playFlag"

.field public static final PROP_EXIST_PLAY_TOP_ACTIVITY:Ljava/lang/String; = "video.top.activity"

.field private static final TAB_INTENT_KEY_ALBUM:Ljava/lang/String; = "album"

.field private static final TAB_INTENT_KEY_SINGER:Ljava/lang/String; = "singer"

.field private static final TAB_INTENT_KEY_SONG:Ljava/lang/String; = "song"

.field private static final VIDEO_PLAY_ACTION:Ljava/lang/String; = "yf.car.music.action.player"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;-><init>()V

    return-void
.end method

.method private invokeMediaControlCmd(Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;)Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->MEDIA:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->singer:Ljava/lang/String;

    iget-object v1, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->song:Ljava/lang/String;

    iget-object p1, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->album:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;->startUSBMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->VIDEO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    if-ne v0, v1, :cond_3

    .line 209
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->singer:Ljava/lang/String;

    iget-object v1, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->song:Ljava/lang/String;

    iget-object p1, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->album:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;->startUSBVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    iget-object v0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    sget-object v1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->RADIO:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    if-ne v0, v1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;->startRadio()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :cond_2
    iget-object p0, p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    sget-object p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->TB_MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    if-ne p0, p1, :cond_3

    const-string p0, "\u84dd\u7259\u672a\u8fde\u63a5\uff0c\u8bf7\u5148\u8fde\u63a5\u84dd\u7259"

    .line 217
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->success([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "\u6682\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 220
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->fail([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startBluetoothMusic()Ljava/lang/String;
    .locals 2

    .line 305
    new-instance p0, Landroid/content/Intent;

    const-string v0, "yf.car.music.action.start"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10100000

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "musicFlag"

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->normal:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startRadio()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance p0, Landroid/content/Intent;

    const-string v0, "yf.car.music.action.start"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10100000

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "musicFlag"

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->normal:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startUSBMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startUSBMusic ,the singer:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",song:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",album:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 273
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "singer"

    .line 276
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 279
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "song"

    .line 280
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move p1, v1

    .line 283
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "album"

    .line 284
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move p1, v1

    :cond_2
    const/4 p2, 0x2

    if-eqz p1, :cond_3

    const-string p1, "com.yftech.mediaservice.SEARCH"

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "musicFlag"

    .line 289
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    sget-object p1, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string p1, "yf.car.music.action.start"

    .line 292
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10100000

    .line 293
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "musicFlag"

    .line 294
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    sget-object p1, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    :goto_1
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->normal:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startUSBVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 247
    new-instance p0, Landroid/content/Intent;

    const-string v0, "yf.car.music.action.start"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10100000

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "musicFlag"

    const/4 v1, 0x3

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "singer"

    .line 252
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "song"

    .line 255
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "album"

    .line 258
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_2
    sget-object p1, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->normal:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6

    .line 157
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 158
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;-><init>(Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_5

    .line 161
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    .line 162
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "name"

    .line 163
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "values"

    .line 164
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "values"

    .line 165
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "media_source"

    .line 166
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "text"

    .line 167
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 168
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->match(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    move-result-object v3

    iput-object v3, v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    goto :goto_1

    :cond_0
    const-string v5, "media_type"

    .line 171
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "text"

    .line 172
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 173
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v3}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->match(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    move-result-object v3

    iput-object v3, v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    goto :goto_1

    :cond_1
    const-string v5, "singer"

    .line 176
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "text"

    .line 177
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 178
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->singer:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "song"

    .line 180
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "text"

    .line 181
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 182
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->song:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "album"

    .line 184
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 185
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "text"

    .line 186
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->album:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 192
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 195
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaControl invoke media control cmd:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;->invokeMediaControlCmd(Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
