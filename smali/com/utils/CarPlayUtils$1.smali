.class final Lcom/utils/CarPlayUtils$1;
.super Ljava/lang/Object;
.source "CarPlayUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/utils/CarPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "onServiceConnected from CarplayApp"

    .line 71
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 72
    invoke-static {p2}, Lcom/autochips/carplayapp/IServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/carplayapp/IServiceInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/CarPlayUtils;->access$002(Lcom/autochips/carplayapp/IServiceInterface;)Lcom/autochips/carplayapp/IServiceInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "onServiceDisconnected from CarplayApp"

    .line 77
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 78
    invoke-static {p0}, Lcom/utils/CarPlayUtils;->access$002(Lcom/autochips/carplayapp/IServiceInterface;)Lcom/autochips/carplayapp/IServiceInterface;

    const/4 p0, 0x0

    .line 79
    invoke-static {p0}, Lcom/utils/CarPlayUtils;->access$102(Z)Z

    return-void
.end method
