.class public Lcom/tencent/tai/pal/telephone/TelephoneConstants$PhoneStatus;
.super Ljava/lang/Object;
.source "TelephoneConstants.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/telephone/TelephoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneStatus"
.end annotation


# static fields
.field public static final PHONE_STATUS_END_CALL:I = 0x3

.field public static final PHONE_STATUS_INCOMING_CALL:I = 0x0

.field public static final PHONE_STATUS_IN_CALL:I = 0x2

.field public static final PHONE_STATUS_OUTCOMING_CALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
