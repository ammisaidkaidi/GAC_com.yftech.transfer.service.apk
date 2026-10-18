.class public Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;
.super Lcom/tencent/tai/pal/screen/ScreenAdapter;
.source "ScreenAdapterImpl.java"


# static fields
.field private static BRIGHTNESS_STEP:I = 0x2

.field private static final MAX_BRIGHTNESS:I = 0xa

.field private static final MIN_BRIGHTNESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/tai/pal/screen/ScreenAdapter;-><init>()V

    return-void
.end method

.method private regularBrightness(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setBrightness(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private stepBrightness(ZI)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustScreenBrightness(II)I
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenAdapterImpl::adjustScreenBrightness,the flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->setBrightness(I)Z

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->regularBrightness(Z)Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->regularBrightness(Z)Z

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-direct {p0, v0, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->stepBrightness(ZI)Z

    goto :goto_0

    .line 78
    :pswitch_4
    invoke-direct {p0, v1, p2}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->stepBrightness(ZI)Z

    goto :goto_0

    .line 75
    :pswitch_5
    sget p1, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->BRIGHTNESS_STEP:I

    invoke-direct {p0, v0, p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->stepBrightness(ZI)Z

    goto :goto_0

    .line 72
    :pswitch_6
    sget p1, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->BRIGHTNESS_STEP:I

    invoke-direct {p0, v1, p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/ScreenAdapterImpl;->stepBrightness(ZI)Z

    :goto_0
    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getScreenBrightness()I
    .locals 0

    const-string p0, "ScreenAdapterImpl::getScreenBrightness"

    .line 105
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/16 p0, 0xa

    return p0
.end method

.method public getScreenMAXBrightness()I
    .locals 0

    const-string p0, "ScreenAdapterImpl::getScreenMAXBrightness"

    .line 112
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/16 p0, 0xa

    return p0
.end method

.method public isScreenMute()Z
    .locals 0

    const-string p0, "ScreenAdapterImpl::isScreenMute"

    .line 118
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
