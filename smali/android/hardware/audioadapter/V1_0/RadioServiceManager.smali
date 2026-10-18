.class public Landroid/hardware/audioadapter/V1_0/RadioServiceManager;
.super Ljava/lang/Object;
.source "RadioServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;,
        Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;
    }
.end annotation


# static fields
.field public static final BAND_AM_MW:I = 0x2

.field public static final BAND_FM:I = 0x0

.field public static final BAND_FM_WB:I = 0x1

.field public static final RADIO_ERROR:I = -0x1

.field public static final RADIO_SUCCESS:I = 0x0

.field public static final SCAN_STATUS_IDLE:I = 0x0

.field public static final SCAN_STATUS_ING:I = 0x1

.field public static final SCAN_TYPE_IDLE:I = 0x0

.field public static final SCAN_TYPE_ING:I = 0x3

.field public static final SCAN_TYPE_SCAN_ALL:I = 0x4

.field public static final SCAN_TYPE_SEEK_DOWN:I = 0x2

.field public static final SCAN_TYPE_SEEK_PLAY:I = 0x5

.field public static final SCAN_TYPE_SEEK_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadioServiceManager"

.field private static volatile mInstance:Landroid/hardware/audioadapter/V1_0/RadioServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Landroid/hardware/audioadapter/V1_0/RadioServiceManager;
    .locals 2

    .line 56
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    invoke-direct {v1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;-><init>()V

    sput-object v1, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/RadioServiceManager;

    return-object v0
.end method


# virtual methods
.method public close()I
    .locals 0

    .line 120
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->close()I

    move-result p0

    return p0
.end method

.method public getBand()I
    .locals 0

    .line 154
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getBand()I

    move-result p0

    return p0
.end method

.method public getDefault(I)I
    .locals 0

    .line 320
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getDefault(I)I

    move-result p0

    return p0
.end method

.method public getFreq()I
    .locals 0

    .line 137
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getFreq()I

    move-result p0

    return p0
.end method

.method public getManualStep(I)I
    .locals 0

    .line 311
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getManualStep(I)I

    move-result p0

    return p0
.end method

.method public getMax(I)I
    .locals 0

    .line 264
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getMax(I)I

    move-result p0

    return p0
.end method

.method public getMin(I)I
    .locals 0

    .line 273
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getMin(I)I

    move-result p0

    return p0
.end method

.method public getScanType()I
    .locals 0

    .line 359
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getScanType()I

    move-result p0

    return p0
.end method

.method public getSeekingFreq()I
    .locals 0

    .line 367
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getSeekingFreq()I

    move-result p0

    return p0
.end method

.method public getStep(I)I
    .locals 0

    .line 302
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getStep(I)I

    move-result p0

    return p0
.end method

.method public init()I
    .locals 0

    .line 104
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->init()I

    move-result p0

    return p0
.end method

.method public isFmStero()Z
    .locals 0

    .line 246
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->isFmStero()Z

    move-result p0

    return p0
.end method

.method public isFreqValid(II)Z
    .locals 0

    .line 238
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->isFreqValid(II)Z

    move-result p0

    return p0
.end method

.method public isSig(I)I
    .locals 0

    .line 255
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->isSig(I)I

    move-result p0

    return p0
.end method

.method public open()I
    .locals 0

    .line 112
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->open()I

    move-result p0

    return p0
.end method

.method public registerRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;)V
    .locals 1

    .line 71
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->registerRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;Landroid/os/Handler;)V
    .locals 0

    .line 88
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->registerRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public scanAllRadio()I
    .locals 0

    .line 212
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->scanAllRadio()I

    move-result p0

    return p0
.end method

.method public scanChannel()I
    .locals 0

    .line 204
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->scanChannel()I

    move-result p0

    return p0
.end method

.method public seekDown()I
    .locals 0

    .line 196
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->seekDown()I

    move-result p0

    return p0
.end method

.method public seekPlay(I)I
    .locals 0

    .line 172
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->seekPlay(I)I

    move-result p0

    return p0
.end method

.method public seekUp()I
    .locals 0

    .line 188
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->seekUp()I

    move-result p0

    return p0
.end method

.method public setBand(I)I
    .locals 0

    .line 146
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setBand(I)I

    move-result p0

    return p0
.end method

.method public setDefault(II)I
    .locals 0

    .line 350
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setDefault(II)I

    move-result p0

    return p0
.end method

.method public setFreq(I)I
    .locals 0

    .line 129
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setFreq(I)I

    move-result p0

    return p0
.end method

.method public setManualStep(II)I
    .locals 0

    .line 340
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setManualStep(II)I

    move-result p0

    return p0
.end method

.method public setMax(II)I
    .locals 0

    .line 283
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setMax(II)I

    move-result p0

    return p0
.end method

.method public setMin(II)I
    .locals 0

    .line 293
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setMin(II)I

    move-result p0

    return p0
.end method

.method public setMute(Z)I
    .locals 0

    .line 163
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setMute(Z)I

    move-result p0

    return p0
.end method

.method public setStep(II)I
    .locals 0

    .line 330
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->setStep(II)I

    move-result p0

    return p0
.end method

.method public stepDown()I
    .locals 0

    .line 228
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->stepDown()I

    move-result p0

    return p0
.end method

.method public stepUp()I
    .locals 0

    .line 220
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->stepUp()I

    move-result p0

    return p0
.end method

.method public stop()I
    .locals 0

    .line 180
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->stop()I

    move-result p0

    return p0
.end method

.method public unregisterRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;)V
    .locals 0

    .line 96
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->unregisterRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;)V

    return-void
.end method
