.class public Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;
.super Ljava/lang/Object;
.source "SystemPropertiesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductDevice()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, ""

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
