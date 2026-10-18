.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRadioClient"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract closeApp(Ljava/lang/String;)Z
.end method

.method public abstract openApp(Ljava/lang/String;)Z
.end method

.method public abstract pauseRadio()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playAMChannel(Ljava/lang/String;)Z
.end method

.method public abstract playChannel(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract playFMChannel(Ljava/lang/String;)Z
.end method

.method public abstract playNextChannel()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playPrevChannel()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playRadio()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startAutoScan()Z
.end method
