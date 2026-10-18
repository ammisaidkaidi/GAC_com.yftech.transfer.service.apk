.class Lcom/yftech/transfer/phonelink/receiver/TestRecevier$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TestRecevier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOnWhenCarplayCertificateOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/receiver/TestRecevier;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$2;->this$0:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringStarted()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    return-void
.end method
