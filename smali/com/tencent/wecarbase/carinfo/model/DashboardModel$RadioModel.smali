.class public Lcom/tencent/wecarbase/carinfo/model/DashboardModel$RadioModel;
.super Ljava/lang/Object;
.source "DashboardModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/model/DashboardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioModel"
.end annotation


# instance fields
.field public mCurrentFreqStr:Ljava/lang/String;

.field public mFmAmNum:I

.field public mFreqDataLst:I

.field public mNameStr:Ljava/lang/String;

.field public mPty:I

.field public mRadioTypeStr:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
