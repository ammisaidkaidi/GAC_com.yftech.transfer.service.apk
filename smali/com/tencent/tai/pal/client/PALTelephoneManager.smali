.class public interface abstract Lcom/tencent/tai/pal/client/PALTelephoneManager;
.super Ljava/lang/Object;
.source "PALTelephoneManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/telephone/ITelephone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;
    }
.end annotation


# virtual methods
.method public abstract answerInComingCall()I
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getRecentContact(I)Lcom/tencent/tai/pal/telephone/PhoneContact;
.end method

.method public abstract ignoreInComingCall()I
.end method

.method public abstract isTelEnable()Z
.end method

.method public abstract isTelephoneSupported()Z
.end method

.method public abstract refuseInComingCall()I
.end method

.method public abstract registerTelInfoListener(Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;)V
.end method

.method public abstract unregisterTelInfoListener(Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;)V
.end method

.method public abstract viewCallRecord(I)I
.end method

.method public abstract viewPhonebook()I
.end method
