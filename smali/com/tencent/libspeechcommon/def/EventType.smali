.class public interface abstract annotation Lcom/tencent/libspeechcommon/def/EventType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final EVENT_TYPE_ERROR:I = 0x6

.field public static final EVENT_TYPE_EXIT:I = 0x5

.field public static final EVENT_TYPE_LAUNCH:I = 0x1

.field public static final EVENT_TYPE_LOADING:I = 0x3

.field public static final EVENT_TYPE_RECORD:I = 0x2

.field public static final EVENT_TYPE_TTS:I = 0x4
