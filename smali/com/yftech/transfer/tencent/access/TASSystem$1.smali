.class final Lcom/yftech/transfer/tencent/access/TASSystem$1;
.super Ljava/util/ArrayList;
.source "TASSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/access/TASSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u53ee\u5f53\u53ee\u5f53"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/tencent/access/TASSystem$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
