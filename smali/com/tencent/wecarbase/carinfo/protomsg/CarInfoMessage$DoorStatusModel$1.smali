.class final Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$1;
.super Lcom/google/protobuf/AbstractParser;
.source "CarInfoMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2578
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2583
    new-instance p0, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$1;)V

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2578
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$DoorStatusModel;

    move-result-object p0

    return-object p0
.end method
