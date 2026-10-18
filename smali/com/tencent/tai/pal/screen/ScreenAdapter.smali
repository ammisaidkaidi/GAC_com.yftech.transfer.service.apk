.class public abstract Lcom/tencent/tai/pal/screen/ScreenAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "ScreenAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/screen/IScreen;


# static fields
.field private static final a:Ljava/lang/String; = "ScreenAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustScreenBrightness(II)I
.end method

.method public abstract getScreenBrightness()I
.end method

.method public abstract getScreenMAXBrightness()I
.end method

.method public abstract isScreenMute()Z
.end method
