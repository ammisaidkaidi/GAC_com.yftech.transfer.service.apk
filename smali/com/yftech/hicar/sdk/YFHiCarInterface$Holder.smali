.class public Lcom/yftech/hicar/sdk/YFHiCarInterface$Holder;
.super Ljava/lang/Object;
.source "YFHiCarInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/YFHiCarInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yftech/hicar/sdk/YFHiCarInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/yftech/hicar/sdk/YFHiCarInterface;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;-><init>(Lcom/yftech/hicar/sdk/YFHiCarInterface$1;)V

    sput-object v0, Lcom/yftech/hicar/sdk/YFHiCarInterface$Holder;->INSTANCE:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
