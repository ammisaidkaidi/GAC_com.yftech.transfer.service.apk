.class public Lcom/tencent/taes/TaesSDKHelper;
.super Ljava/lang/Object;
.source "TaesSDKHelper.java"


# static fields
.field public static final FOR_WECAR:I = 0x0

.field public static final FOR_WECAR_NAVI:I = 0x1

.field public static final WECAR_NAVI_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wecarnavi"

.field public static final WECAR_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wecar"

.field private static final mConfigForNavi:Ljava/lang/String; = "component_config_navi.json"

.field private static mContext:Landroid/content/Context;

.field private static mVersionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigFileName()Ljava/lang/String;
    .locals 2

    .line 50
    sget v0, Lcom/tencent/taes/TaesSDKHelper;->mVersionType:I

    if-nez v0, :cond_0

    const-string v0, "component_config.json"

    return-object v0

    .line 52
    :cond_0
    sget v0, Lcom/tencent/taes/TaesSDKHelper;->mVersionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "component_config_navi.json"

    return-object v0

    :cond_1
    const-string v0, "component_config.json"

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/taes/TaesSDKHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/tencent/taes/TaesSDKHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setVersionType(I)V
    .locals 0

    .line 42
    sput p0, Lcom/tencent/taes/TaesSDKHelper;->mVersionType:I

    return-void
.end method
