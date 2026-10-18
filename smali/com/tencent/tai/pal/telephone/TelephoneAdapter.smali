.class public abstract Lcom/tencent/tai/pal/telephone/TelephoneAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "TelephoneAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/telephone/ITelephone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;
    }
.end annotation


# static fields
.field public static final CALL_RECORD_ALL:I = 0x0

.field public static final CALL_RECORD_ANSWER:I = 0x3

.field public static final CALL_RECORD_DIAL:I = 0x1

.field public static final CALL_RECORD_MISS:I = 0x2

.field public static final PHONE_STATUS_END_CALL:I = 0x3

.field public static final PHONE_STATUS_INCOMING_CALL:I = 0x0

.field public static final PHONE_STATUS_IN_CALL:I = 0x2

.field public static final PHONE_STATUS_OUTCOMING_CALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract answerInComingCall()I
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getRecentContact(I)Lcom/tencent/tai/pal/telephone/PhoneContact;
.end method

.method public abstract ignoreInComingCall()I
.end method

.method public abstract refuseInComingCall()I
.end method

.method public abstract registerOnTelInfoListener(Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;)V
.end method

.method public abstract unregisterOnTelInfoListener(Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;)V
.end method

.method public abstract viewCallRecord(I)I
.end method

.method public abstract viewPhonebook()I
.end method
