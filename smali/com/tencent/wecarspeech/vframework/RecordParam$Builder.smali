.class public Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
.super Ljava/lang/Object;
.source "RecordParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/RecordParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bAllowRecordInterrupted:I

.field private bCancelCmd:Ljava/lang/String;

.field private bCompleteCmd:Ljava/lang/String;

.field private bPcmPath:Ljava/lang/String;

.field private bSilenceTimeout:J

.field private bVadEndTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1389

    .line 124
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bSilenceTimeout:J

    const-wide/16 v0, 0x1388

    .line 125
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bVadEndTimeout:J

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCancelCmd:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCompleteCmd:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bPcmPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 129
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bAllowRecordInterrupted:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/wecarspeech/vframework/RecordParam;
    .locals 3

    .line 198
    new-instance v0, Lcom/tencent/wecarspeech/vframework/RecordParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam;-><init>(Lcom/tencent/wecarspeech/vframework/RecordParam$1;)V

    .line 199
    iget-wide v1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bSilenceTimeout:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$102(Lcom/tencent/wecarspeech/vframework/RecordParam;J)J

    .line 200
    iget-wide v1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bVadEndTimeout:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$202(Lcom/tencent/wecarspeech/vframework/RecordParam;J)J

    .line 201
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCancelCmd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$302(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCompleteCmd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$402(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bPcmPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$502(Lcom/tencent/wecarspeech/vframework/RecordParam;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bAllowRecordInterrupted:I

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/vframework/RecordParam;->access$602(Lcom/tencent/wecarspeech/vframework/RecordParam;I)I

    return-object v0
.end method

.method public setAllowRecordInterrupted(Z)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 193
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bAllowRecordInterrupted:I

    return-object p0
.end method

.method public setCancelCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCancelCmd:Ljava/lang/String;

    return-object p0
.end method

.method public setCompleteCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bCompleteCmd:Ljava/lang/String;

    return-object p0
.end method

.method public setPCMPath(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bPcmPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSilenceTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bSilenceTimeout:J

    return-object p0
.end method

.method public setVadEndTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordParam$Builder;->bVadEndTimeout:J

    return-object p0
.end method
