.class Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;
.super Ljava/lang/Object;
.source "HiCarLinkHelper.java"

# interfaces
.implements Lcom/yftech/hicar/sdk/IBindCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefalutBindCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;


# direct methods
.method private constructor <init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;-><init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
