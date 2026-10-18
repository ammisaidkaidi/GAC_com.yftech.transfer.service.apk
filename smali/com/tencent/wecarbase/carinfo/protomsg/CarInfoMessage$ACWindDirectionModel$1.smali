.class final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel$1;
.super Ljava/lang/Object;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel$1;->findValueByNumber(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;
    .locals 0

    .line 1227
    invoke-static {p1}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;->valueOf(I)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$ACWindDirectionModel;

    move-result-object p0

    return-object p0
.end method
