.class Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy$1;
.super Ljava/lang/Object;
.source "TAESSubServiceRouterStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;->sortRouter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/wecar/tts/ServiceItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy$1;->this$0:Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/wecar/tts/ServiceItemInfo;Lcom/tencent/wecar/tts/ServiceItemInfo;)I
    .locals 5

    .line 107
    iget-wide v0, p1, Lcom/tencent/wecar/tts/ServiceItemInfo;->sdkVersion:J

    iget-wide v2, p2, Lcom/tencent/wecar/tts/ServiceItemInfo;->sdkVersion:J

    cmp-long p0, v0, v2

    const/4 v0, -0x1

    if-lez p0, :cond_0

    return v0

    .line 109
    :cond_0
    iget-wide v1, p1, Lcom/tencent/wecar/tts/ServiceItemInfo;->sdkVersion:J

    iget-wide v3, p2, Lcom/tencent/wecar/tts/ServiceItemInfo;->sdkVersion:J

    cmp-long p0, v1, v3

    const/4 v1, 0x1

    if-gez p0, :cond_1

    return v1

    .line 113
    :cond_1
    iget p0, p1, Lcom/tencent/wecar/tts/ServiceItemInfo;->priority:I

    iget v2, p2, Lcom/tencent/wecar/tts/ServiceItemInfo;->priority:I

    if-le p0, v2, :cond_2

    return v1

    .line 115
    :cond_2
    iget p0, p1, Lcom/tencent/wecar/tts/ServiceItemInfo;->priority:I

    iget p1, p2, Lcom/tencent/wecar/tts/ServiceItemInfo;->priority:I

    if-ge p0, p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Lcom/tencent/wecar/tts/ServiceItemInfo;

    check-cast p2, Lcom/tencent/wecar/tts/ServiceItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecar/tts/TAESSubServiceRouterStrategy$1;->compare(Lcom/tencent/wecar/tts/ServiceItemInfo;Lcom/tencent/wecar/tts/ServiceItemInfo;)I

    move-result p0

    return p0
.end method
