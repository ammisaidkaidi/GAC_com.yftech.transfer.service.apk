.class public Lcom/tencent/vrcommon/app/CloseParams$Builder;
.super Ljava/lang/Object;
.source "CloseParams.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrcommon/app/CloseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bCloseDelay:J

.field private bCloseType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/tencent/vrcommon/app/CloseParams$Builder;->bCloseType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/vrcommon/app/CloseParams;
    .locals 3

    .line 52
    new-instance v0, Lcom/tencent/vrcommon/app/CloseParams;

    iget v1, p0, Lcom/tencent/vrcommon/app/CloseParams$Builder;->bCloseType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/vrcommon/app/CloseParams;-><init>(ILcom/tencent/vrcommon/app/CloseParams$1;)V

    .line 53
    iget v1, p0, Lcom/tencent/vrcommon/app/CloseParams$Builder;->bCloseType:I

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/CloseParams;->access$102(Lcom/tencent/vrcommon/app/CloseParams;I)I

    .line 54
    iget-wide v1, p0, Lcom/tencent/vrcommon/app/CloseParams$Builder;->bCloseDelay:J

    invoke-static {v0, v1, v2}, Lcom/tencent/vrcommon/app/CloseParams;->access$202(Lcom/tencent/vrcommon/app/CloseParams;J)J

    return-object v0
.end method

.method public setCloseDelay(J)Lcom/tencent/vrcommon/app/CloseParams$Builder;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/tencent/vrcommon/app/CloseParams$Builder;->bCloseDelay:J

    return-object p0
.end method
