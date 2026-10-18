.class public final Lcom/iflytek/autofly/custom/radio/util/RadioServiceCons$RadioState;
.super Ljava/lang/Object;
.source "RadioServiceCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/radio/util/RadioServiceCons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioState"
.end annotation


# static fields
.field public static final PLAYING:I = 0x1

.field public static final PLAYSTOP:I = 0x2

.field public static final SCANNING:I = 0x4

.field public static final SCANOVER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
