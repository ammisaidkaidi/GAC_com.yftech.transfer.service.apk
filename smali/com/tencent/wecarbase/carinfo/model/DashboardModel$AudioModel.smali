.class public Lcom/tencent/wecarbase/carinfo/model/DashboardModel$AudioModel;
.super Ljava/lang/Object;
.source "DashboardModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/model/DashboardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioModel"
.end annotation


# instance fields
.field public mAlbumName:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mCurrentIndex:I

.field public mCurrentTimeSec:I

.field public mNoUse:I

.field public mPlayState:I

.field public mTotalNumber:I

.field public mTotalTimeSec:I

.field public mTrackName:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
