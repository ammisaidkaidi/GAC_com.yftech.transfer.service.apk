.class Lcom/tencent/tai/pal/ins/c$1;
.super Ljava/lang/Object;
.source "InsService.java"

# interfaces
.implements Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/ins/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/ins/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/ins/c;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tencent/tai/pal/ins/c$1;->a:Lcom/tencent/tai/pal/ins/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsAccelerometerInfoChanged(FFFIJ)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c$1;->a:Lcom/tencent/tai/pal/ins/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/tai/pal/ins/c;->a(Lcom/tencent/tai/pal/ins/c;FFFIJ)V

    return-void
.end method

.method public onInsGyroscopeInfoChanged(FFFFIJ)V
    .locals 8

    .line 29
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c$1;->a:Lcom/tencent/tai/pal/ins/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/tencent/tai/pal/ins/c;->a(Lcom/tencent/tai/pal/ins/c;FFFFIJ)V

    return-void
.end method

.method public onInsSpeedChanged(FIJLcom/tencent/tai/pal/SDKConstants$SpeedUnit;)V
    .locals 4

    .line 20
    sget-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-virtual {v0, p5}, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/ins/c$1;->a:Lcom/tencent/tai/pal/ins/c;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/tai/pal/ins/c;->a(Lcom/tencent/tai/pal/ins/c;FIJ)V

    return-void
.end method
