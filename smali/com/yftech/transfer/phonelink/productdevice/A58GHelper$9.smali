.class Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$9;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "A58GHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$9;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 505
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    return-void
.end method
