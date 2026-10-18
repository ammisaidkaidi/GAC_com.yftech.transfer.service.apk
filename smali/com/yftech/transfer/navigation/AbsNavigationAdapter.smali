.class public abstract Lcom/yftech/transfer/navigation/AbsNavigationAdapter;
.super Ljava/lang/Object;
.source "AbsNavigationAdapter.java"

# interfaces
.implements Lcom/yftech/transfer/navigation/INavigationAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;
    }
.end annotation


# instance fields
.field private mIsStop:Z

.field private mOnNavigationListener:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

.field mOnNavigationListenerControl:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;-><init>(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)V

    iput-object v0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mOnNavigationListenerControl:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mIsStop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mIsStop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/transfer/navigation/AbsNavigationAdapter;)Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mOnNavigationListener:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    return-object p0
.end method


# virtual methods
.method public setOnNavigationListener(Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mOnNavigationListener:Lcom/yftech/transfer/navigation/AbsNavigationAdapter$OnNavigationListener;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mIsStop:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/yftech/transfer/navigation/AbsNavigationAdapter;->mIsStop:Z

    return-void
.end method
