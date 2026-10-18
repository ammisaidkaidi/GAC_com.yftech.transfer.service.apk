.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITelClient"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract answerInComingCall()V
.end method

.method public abstract call(Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)V
.end method

.method public abstract getRecentContact(I)Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;
.end method

.method public abstract getTelCallStatus()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract ignoreInComingCall()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refuseInComingCall()V
.end method

.method public abstract viewCallRecord(I)V
.end method

.method public abstract viewPhonebook()V
.end method
