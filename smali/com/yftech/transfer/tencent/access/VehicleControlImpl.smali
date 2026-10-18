.class public Lcom/yftech/transfer/tencent/access/VehicleControlImpl;
.super Ljava/lang/Object;
.source "VehicleControlImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/IAsrJsonResultListener;
.implements Lcom/tencent/wecarspeech/sdk/api/ISystemClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/IAsrJsonResultListener<",
        "Lcom/tencent/libspeechcommon/def/ActionRet;",
        ">;",
        "Lcom/tencent/wecarspeech/sdk/api/ISystemClient<",
        "Lcom/tencent/libspeechcommon/def/ActionRet;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOA_DIRECTION_LEFT:I = 0x2

.field private static final DOA_DIRECTION_RIGHT:I = 0x3

.field private static final INTENT_TYPE_AC_CTL:Ljava/lang/String; = "AC_control"

.field private static final INTENT_TYPE_ATLIGHTS_CTL:Ljava/lang/String; = "atlights_control"

.field private static final INTENT_TYPE_BACKDOOR_CTL:Ljava/lang/String; = "backdoor_control"

.field private static final INTENT_TYPE_CAR_WIN_CTL:Ljava/lang/String; = "car_window_control"

.field public static final INTENT_TYPE_CLOSE_AIR_MODE:Ljava/lang/String; = "turn_off_airmode"

.field private static final INTENT_TYPE_CLOSE_APP:Ljava/lang/String; = "close_app"

.field private static final INTENT_TYPE_CLOSE_DVR_MODE:Ljava/lang/String; = "turn_off_recorder_mode"

.field private static final INTENT_TYPE_CURTAIN_CTL:Ljava/lang/String; = "curtain_control"

.field private static final INTENT_TYPE_DASHBOARD_LIGHT_CTL:Ljava/lang/String; = "dashboard_light_control"

.field private static final INTENT_TYPE_DEVICE_QUERY:Ljava/lang/String; = "device_status_query"

.field private static final INTENT_TYPE_DISPLAY_CTL:Ljava/lang/String; = "display_control"

.field private static final INTENT_TYPE_ENERGY_QUERY:Ljava/lang/String; = "energy_query"

.field private static final INTENT_TYPE_FOLLOWING_DISTANCE:Ljava/lang/String; = "following_distance"

.field private static final INTENT_TYPE_GEARS_POSITION_QUERY:Ljava/lang/String; = "gears_position_query"

.field private static final INTENT_TYPE_HELP:Ljava/lang/String; = "help"

.field private static final INTENT_TYPE_LIST_SELECT:Ljava/lang/String; = "select_an_item_from_list"

.field private static final INTENT_TYPE_LOCK_DOOR:Ljava/lang/String; = "lock_the_door"

.field private static final INTENT_TYPE_MEDIA_SOURCE:Ljava/lang/String; = "play_media_by_source"

.field private static final INTENT_TYPE_MT_QUERY:Ljava/lang/String; = "maintenance_query"

.field private static final INTENT_TYPE_OFF_DEVICE:Ljava/lang/String; = "turn_off_device"

.field private static final INTENT_TYPE_ON_DEVICE:Ljava/lang/String; = "turn_on_device"

.field public static final INTENT_TYPE_OPEN_AIR_MODE:Ljava/lang/String; = "turn_on_airmode"

.field private static final INTENT_TYPE_OPEN_APP:Ljava/lang/String; = "open_app"

.field private static final INTENT_TYPE_OPEN_DVR_MODE:Ljava/lang/String; = "turn_on_recorder_mode"

.field private static final INTENT_TYPE_OPEN_SKILL:Ljava/lang/String; = "open_skill"

.field private static final INTENT_TYPE_PIC_CTL:Ljava/lang/String; = "picture_preview_control"

.field private static final INTENT_TYPE_RECORDER_CTL:Ljava/lang/String; = "recorder_control"

.field private static final INTENT_TYPE_REMAINDER_RANGE_QUERY:Ljava/lang/String; = "remainder_range_query"

.field private static final INTENT_TYPE_RESUME_CRUISE_CTL:Ljava/lang/String; = "resume_cruise_control"

.field private static final INTENT_TYPE_RUNNING_STATE_QUERY:Ljava/lang/String; = "running_status_query"

.field private static final INTENT_TYPE_SCREEN_CTL:Ljava/lang/String; = "screen_brightness_control"

.field private static final INTENT_TYPE_SEAT_HEATING_CTL:Ljava/lang/String; = "seat_heating_control"

.field private static final INTENT_TYPE_SEAT_POSITION_CTL:Ljava/lang/String; = "seat_position_control"

.field private static final INTENT_TYPE_SEAT_VENTILATION_CTL:Ljava/lang/String; = "seat_ventilation_control"

.field private static final INTENT_TYPE_SET_CRUISE_PARAM:Ljava/lang/String; = "set_cruise_parameters"

.field private static final INTENT_TYPE_SKILL_USE:Ljava/lang/String; = "skill_use"

.field private static final INTENT_TYPE_SKYLIGHT_CTL:Ljava/lang/String; = "skylight_control"

.field private static final INTENT_TYPE_TIRE_PRESSURE_QUERY:Ljava/lang/String; = "tire_pressure_query"

.field private static final INTENT_TYPE_UNLOCK_DOOR:Ljava/lang/String; = "unlock_the_door"

.field private static final INTENT_TYPE_VLOUME_CTL:Ljava/lang/String; = "sound_volume_control"

.field private static final INTENT_TYPE_WARNING_LIGHT_QUERY:Ljava/lang/String; = "warning_light_query"

.field private static final INTENT_TYPE_WIPER_CTL:Ljava/lang/String; = "wiper_control"

.field private static final JSON_STR_DOMAIN:Ljava/lang/String; = "domain"

.field private static final JSON_STR_INTENT:Ljava/lang/String; = "intent"

.field private static final JSON_STR_SEMANTIC:Ljava/lang/String; = "semantic"

.field private static final JSON_STR_SLOTS:Ljava/lang/String; = "slots"

.field private static final TAG:Ljava/lang/String; = "VehicleControlImpl   "

.field private static mAppControl:Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

.field private static mIntentControls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;",
            ">;"
        }
    .end annotation
.end field

.field private static mMediaControl:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mIntentControls:Ljava/util/Map;

    .line 224
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mMediaControl:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;

    .line 225
    new-instance v0, Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/vehicle/AppControl;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mAppControl:Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/transfer/tencent/access/vehicle/AppControl;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mAppControl:Lcom/yftech/transfer/tencent/access/vehicle/AppControl;

    return-object v0
.end method


# virtual methods
.method public getSysCurrentNavi()Ljava/lang/String;
    .locals 1

    .line 467
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "active_navi_app"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAsrJsonResult(Ljava/lang/String;I)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 3

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VehicleControlImpl::onAsrJsonResult,json:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 352
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "semantic"

    .line 353
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string p1, "intent"

    .line 355
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mIntentControls:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "slots"

    .line 357
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 358
    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mIntentControls:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

    invoke-virtual {v1, p1, p2}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->dispatch(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 360
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p1

    return-object p1

    .line 362
    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, ""

    .line 368
    sget-object v1, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->mIntentControls:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 371
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

    invoke-virtual {p2, p1}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->SecondDispatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 374
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p1

    return-object p1

    .line 376
    :cond_2
    invoke-static {v0, p1}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    :cond_3
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAsrJsonResult(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->onAsrJsonResult(Ljava/lang/String;I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 1

    .line 461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VehicleControlImpl::openDomainHelp,domain:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 462
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public openGlobalHelp()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 1

    const-string p0, "VehicleControlImpl::openGlobalHelp"

    .line 449
    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 450
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic openGlobalHelp()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->openGlobalHelp()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public toggleAction(ZLjava/lang/String;Ljava/lang/String;I)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 1

    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VehicleControlImpl::toggleAction,isOpen:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",rawText:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",doaDirection:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 402
    invoke-static {p2}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->match(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    move-result-object p0

    .line 403
    sget-object p3, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->EMPTY:Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    const/4 p4, 0x1

    if-eq p0, p3, :cond_0

    .line 434
    iget-object p3, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->control:Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

    if-eqz p3, :cond_0

    .line 435
    invoke-virtual {p0, p2}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->setTips(Ljava/lang/String;)Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;

    .line 436
    iget-object p2, p0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;->control:Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;

    invoke-virtual {p2, p1, p0}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->onInvokeAction(ZLcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;)Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-static {p4, p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0

    .line 440
    :cond_0
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASUtils;->no_support:[Ljava/lang/String;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASUtils;->replyTTS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(ILjava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toggleAction(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;->toggleAction(ZLjava/lang/String;Ljava/lang/String;I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
