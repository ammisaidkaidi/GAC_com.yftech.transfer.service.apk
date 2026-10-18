.class public Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;
.super Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.source "CBIHU23Helper.java"


# instance fields
.field private carTBoxObservor:Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;-><init>()V

    .line 30
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;->carTBoxObservor:Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->init()V

    .line 20
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;->carTBoxObservor:Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->registerObservor(Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;)V

    return-void
.end method

.method public uninit()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->uninit()V

    .line 26
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;->carTBoxObservor:Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;

    invoke-static {p0}, Lcom/yftech/transfer/callback/CarTBoxListenerImp;->unregisterObservor(Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;)V

    return-void
.end method
