.class public Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;
.super Ljava/lang/Object;
.source "AbsNavigationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/navigation/AbsNavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnNavigationListener"
.end annotation


# instance fields
.field private mAbsNavigationAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yftech/transfer/navigation/AbsNavigationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->mAbsNavigationAdapter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getDispatchListener()Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->mAbsNavigationAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;

    if-eqz p0, :cond_1

    .line 50
    invoke-static {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->access$000(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->access$100(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onManeuverChanged(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->getDispatchListener()Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;->onManeuverChanged(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;Lcom/yftech/car/navigation/CarNavigationManeuver;)V

    :cond_0
    return-void
.end method
