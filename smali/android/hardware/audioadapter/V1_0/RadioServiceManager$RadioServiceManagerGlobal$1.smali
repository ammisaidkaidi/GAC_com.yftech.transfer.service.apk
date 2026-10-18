.class Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;
.super Ljava/lang/Object;
.source "RadioServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->onFreqChange(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

.field final synthetic val$band_new:I

.field final synthetic val$band_old:I

.field final synthetic val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

.field final synthetic val$freq_new:I

.field final synthetic val$freq_old:I


# direct methods
.method constructor <init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;IIII)V
    .locals 0

    .line 453
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->this$0:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    iput-object p2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iput p3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$freq_new:I

    iput p4, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$band_new:I

    iput p5, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$freq_old:I

    iput p6, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$band_old:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 456
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$callback:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    iget v1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$freq_new:I

    iget v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$band_new:I

    iget v3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$freq_old:I

    iget p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;->val$band_old:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onFreqChange(IIII)V

    return-void
.end method
