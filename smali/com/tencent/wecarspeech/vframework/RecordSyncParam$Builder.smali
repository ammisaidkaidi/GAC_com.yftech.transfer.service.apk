.class public Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
.super Ljava/lang/Object;
.source "RecordSyncParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/vframework/RecordSyncParam;
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

.field private bSpeechTimeout:J

.field private bType:I

.field private bVadEndTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1389

    .line 195
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSilenceTimeout:J

    const-wide/16 v0, 0x1388

    .line 196
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bVadEndTimeout:J

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCancelCmd:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCompleteCmd:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bPcmPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 200
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bAllowRecordInterrupted:I

    const-wide/32 v0, 0xea60

    .line 201
    iput-wide v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSpeechTimeout:J

    const/4 v0, -0x2

    .line 202
    iput v0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/wecarspeech/vframework/RecordSyncParam;
    .locals 3

    .line 293
    new-instance v0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;-><init>(Lcom/tencent/wecarspeech/vframework/RecordSyncParam$1;)V

    .line 294
    iget-wide v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSilenceTimeout:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$102(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;J)J

    .line 295
    iget-wide v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bVadEndTimeout:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$202(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;J)J

    .line 296
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCancelCmd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$302(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCompleteCmd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$402(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bPcmPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$502(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bAllowRecordInterrupted:I

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$602(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;I)I

    .line 300
    iget-wide v1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSpeechTimeout:J

    iput-wide v1, v0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->mSpeechTimeout:J

    .line 301
    iget p0, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bType:I

    invoke-static {v0, p0}, Lcom/tencent/wecarspeech/vframework/RecordSyncParam;->access$702(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;I)I

    return-object v0
.end method

.method public setAllowRecordInterrupted(Z)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 268
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bAllowRecordInterrupted:I

    return-object p0
.end method

.method public setCancelCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCancelCmd:Ljava/lang/String;

    return-object p0
.end method

.method public setCompleteCmd(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bCompleteCmd:Ljava/lang/String;

    return-object p0
.end method

.method public setPCMPath(Ljava/lang/String;)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bPcmPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSilenceTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 212
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSilenceTimeout:J

    return-object p0
.end method

.method public setSpeechTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 278
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bSpeechTimeout:J

    return-object p0
.end method

.method public setType(I)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 288
    iput p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bType:I

    return-object p0
.end method

.method public setVadEndTimeout(J)Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;
    .locals 0

    .line 224
    iput-wide p1, p0, Lcom/tencent/wecarspeech/vframework/RecordSyncParam$Builder;->bVadEndTimeout:J

    return-object p0
.end method
