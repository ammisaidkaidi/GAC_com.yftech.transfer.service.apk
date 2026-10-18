.class public Lcom/baidu/navisdk/hudsdk/HUDModuleManager;
.super Ljava/lang/Object;
.source "HUDModuleManager.java"


# static fields
.field private static sCachedActivity:Landroid/app/Activity;

.field private static sCachedContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 28
    sget-object v0, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->sCachedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 16
    sget-object v0, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->sCachedContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->sCachedActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->sCachedContext:Landroid/content/Context;

    return-void
.end method
