.class public final Lcom/tencent/tai/pal/audio/a;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public static a(I)Landroid/media/AudioAttributes;
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq p0, v0, :cond_5

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_4

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    move v1, v3

    move v5, v1

    goto :goto_1

    :pswitch_0
    const/16 v1, 0xd

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    :pswitch_1
    move v1, v5

    move v5, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    goto :goto_1

    .line 47
    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_6

    const/16 p0, 0x10

    move v1, p0

    goto :goto_1

    :cond_5
    :pswitch_2
    move v1, v2

    .line 55
    :cond_6
    :goto_1
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 56
    invoke-virtual {p0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
