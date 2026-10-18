.class public interface abstract Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelModelOrBuilder;
.super Ljava/lang/Object;
.source "CarInfoMessage.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FuelModelOrBuilder"
.end annotation


# virtual methods
.method public abstract getAverageFuelConsumption()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFuelStateWarning()Lcom/tencent/wecarbase/carinfo/protomsg/CarInfoMessage$FuelStateWArnningModel;
.end method

.method public abstract getInstantaneousFuelConsumption()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMRemainFuel()I
.end method

.method public abstract hasAverageFuelConsumption()Z
.end method

.method public abstract hasFuelStateWarning()Z
.end method

.method public abstract hasInstantaneousFuelConsumption()Z
.end method

.method public abstract hasMRemainFuel()Z
.end method
