.class public Lcom/tencent/wecarbase/carinfo/model/DashboardModel;
.super Ljava/lang/Object;
.source "DashboardModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/model/DashboardModel$RadioModel;,
        Lcom/tencent/wecarbase/carinfo/model/DashboardModel$HFPModel;,
        Lcom/tencent/wecarbase/carinfo/model/DashboardModel$AudioModel;
    }
.end annotation


# static fields
.field public static final CANBOX_MEDIA_FB:I = 0x5

.field public static final CANBOX_MEDIA_FF:I = 0x4

.field public static final CANBOX_MEDIA_PAUSE:I = 0x2

.field public static final CANBOX_MEDIA_PLAYING:I = 0x1

.field public static final CANBOX_MEDIA_READING:I = 0x0

.field public static final CANBOX_MEDIA_STOP:I = 0x3

.field private static final serialVersionUID:J = 0x6528960589e7fe10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
