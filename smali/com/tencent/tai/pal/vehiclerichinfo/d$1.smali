.class Lcom/tencent/tai/pal/vehiclerichinfo/d$1;
.super Ljava/lang/Object;
.source "VehicleRichInfoService.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/vehiclerichinfo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/vehiclerichinfo/d;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/vehiclerichinfo/d;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d$1;->a:Lcom/tencent/tai/pal/vehiclerichinfo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrivingSafetyDisclaimerUpdated(Ljava/lang/String;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclerichinfo/d$1;->a:Lcom/tencent/tai/pal/vehiclerichinfo/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a(Lcom/tencent/tai/pal/vehiclerichinfo/d;Ljava/lang/String;)V

    return-void
.end method
