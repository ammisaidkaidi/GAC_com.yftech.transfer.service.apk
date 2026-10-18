.class Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;
.super Ljava/lang/Object;
.source "RadioServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->onFreqSignal(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

.field final synthetic val$band:I

.field final synthetic val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

.field final synthetic val$db:I

.field final synthetic val$freq:I


# direct methods
.method constructor <init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;III)V
    .locals 0

    .line 475
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    iput-object p2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iput p3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$freq:I

    iput p4, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$band:I

    iput p5, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$db:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 478
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iget v1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$freq:I

    iget v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$band:I

    iget p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;->val$db:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onFreqSignal(III)V

    return-void
.end method
