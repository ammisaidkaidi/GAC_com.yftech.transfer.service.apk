.class Lcom/yftech/transfer/phonelink/receiver/TestRecevier$3;
.super Ljava/lang/Object;
.source "TestRecevier.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/receiver/TestRecevier;->accOffWhenCarplayCertificateOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/receiver/TestRecevier;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$3;->this$0:Lcom/yftech/transfer/phonelink/receiver/TestRecevier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "accOffWhenCarplayCertificateOn"

    .line 148
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 149
    invoke-static {p0, p1}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 150
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/receiver/TestRecevier$3;->accept(Ljava/lang/Long;)V

    return-void
.end method
