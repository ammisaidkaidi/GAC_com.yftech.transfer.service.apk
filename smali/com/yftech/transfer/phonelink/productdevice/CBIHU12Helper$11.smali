.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$11;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "CBIHU12Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$11;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 719
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    return-void
.end method
