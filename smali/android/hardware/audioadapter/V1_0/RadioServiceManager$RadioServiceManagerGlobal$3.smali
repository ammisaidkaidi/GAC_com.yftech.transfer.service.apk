.class Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;
.super Ljava/lang/Object;
.source "RadioServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->onSeekStatusChange(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

.field final synthetic val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

.field final synthetic val$new_status:I

.field final synthetic val$old_status:I

.field final synthetic val$scan_type:I


# direct methods
.method constructor <init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;III)V
    .locals 0

    .line 497
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    iput-object p2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iput p3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$scan_type:I

    iput p4, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$new_status:I

    iput p5, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$old_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 500
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iget v1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$scan_type:I

    iget v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$new_status:I

    iget p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;->val$old_status:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onSeekStatusChange(III)V

    return-void
.end method
