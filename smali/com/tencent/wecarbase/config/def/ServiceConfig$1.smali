.class Lcom/tencent/wecarbase/config/def/ServiceConfig$1;
.super Ljava/lang/Object;
.source "ServiceConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSortedAPPList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/config/def/ServiceConfig;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/config/def/ServiceConfig;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$1;->this$0:Lcom/tencent/wecarbase/config/def/ServiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I
    .locals 5

    .line 238
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    const/4 v0, -0x1

    if-lez p0, :cond_0

    return v0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v1

    invoke-static {p2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    const/4 v1, 0x1

    if-gez p0, :cond_1

    return v1

    .line 244
    :cond_1
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$200(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I

    move-result p0

    invoke-static {p2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$200(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I

    move-result v2

    if-le p0, v2, :cond_2

    return v0

    .line 246
    :cond_2
    invoke-static {p1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$200(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I

    move-result p0

    invoke-static {p2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$200(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I

    move-result p1

    if-ge p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 234
    check-cast p1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    check-cast p2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$1;->compare(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)I

    move-result p0

    return p0
.end method
