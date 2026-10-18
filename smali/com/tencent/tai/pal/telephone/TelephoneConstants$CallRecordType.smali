.class public Lcom/tencent/tai/pal/telephone/TelephoneConstants$CallRecordType;
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
    name = "CallRecordType"
.end annotation


# static fields
.field public static final CALL_RECORD_ALL:I = 0x0

.field public static final CALL_RECORD_ANSWER:I = 0x3

.field public static final CALL_RECORD_DIAL:I = 0x1

.field public static final CALL_RECORD_MISS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
