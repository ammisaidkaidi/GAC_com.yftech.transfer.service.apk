.class Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;
.super Ljava/lang/Object;
.source "ObdServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->onUpdateChange(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

.field final synthetic val$callback:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;

.field final synthetic val$info:Landroid/hardware/audioadapter/V1_0/UpdateInfo;


# direct methods
.method constructor <init>(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V
    .locals 0

    .line 418
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;->this$0:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    iput-object p2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;->val$callback:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;

    iput-object p3, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;->val$info:Landroid/hardware/audioadapter/V1_0/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;->val$callback:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;

    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;->val$info:Landroid/hardware/audioadapter/V1_0/UpdateInfo;

    invoke-virtual {v0, p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;->onUpdateChange(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V

    return-void
.end method
