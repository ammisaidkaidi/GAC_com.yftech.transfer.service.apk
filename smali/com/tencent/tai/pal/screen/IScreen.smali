.class public interface abstract Lcom/tencent/tai/pal/screen/IScreen;
.super Ljava/lang/Object;
.source "IScreen.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# static fields
.field public static final SCREEN_DEC_BRIGHTNESS:I = 0x2

.field public static final SCREEN_DEC_BRIGHTNESS_BY_LEVEL:I = 0x4

.field public static final SCREEN_INC_BRIGHTNESS:I = 0x1

.field public static final SCREEN_INC_BRIGHTNESS_BY_LEVEL:I = 0x3

.field public static final SCREEN_MAX_BRIGHTNESS:I = 0x5

.field public static final SCREEN_MIN_BRIGHTNESS:I = 0x6

.field public static final SCREEN_MUTE:I = 0x8

.field public static final SCREEN_SET_BRIGHTNESS:I = 0x7

.field public static final SCREEN_WAKE:I = 0x9


# virtual methods
.method public abstract adjustScreenBrightness(II)I
.end method

.method public abstract getScreenBrightness()I
.end method

.method public abstract getScreenMAXBrightness()I
.end method

.method public abstract isScreenMute()Z
.end method
