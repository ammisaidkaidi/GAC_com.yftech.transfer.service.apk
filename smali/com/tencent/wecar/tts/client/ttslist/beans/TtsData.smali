.class public Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;
.super Ljava/lang/Object;
.source "TtsData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "record"
.end annotation


# static fields
.field public static final COLUMNNAME_ID:Ljava/lang/String; = "id"

.field public static final COLUMNNAME_INCHOSE:Ljava/lang/String; = "inChose"

.field public static final COLUMNNAME_INUSE:Ljava/lang/String; = "inUse"

.field public static final COLUMNNAME_NAME:Ljava/lang/String; = "modelname"

.field public static final COLUMNNAME_TASKID:Ljava/lang/String; = "taskid"

.field public static final COLUMNNAME_USER:Ljava/lang/String; = "userId"


# instance fields
.field private demoWavPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "demoWavPath"
        useGetSet = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "id"
        generatedId = true
        useGetSet = true
    .end annotation
.end field

.field private inChose:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "inChose"
        useGetSet = true
    .end annotation
.end field

.field private inUse:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "inUse"
        useGetSet = true
    .end annotation
.end field

.field private localPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "localPath"
        useGetSet = true
    .end annotation
.end field

.field public volatile mIsDownLoading:Z

.field public mIsShowDelete:Z

.field private modelPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "modelPath"
        useGetSet = true
    .end annotation
.end field

.field private modelSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "modelSize"
        useGetSet = true
    .end annotation
.end field

.field private modelname:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "modelname"
        useGetSet = true
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "nickname"
        useGetSet = true
    .end annotation
.end field

.field private progress:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "progress"
        useGetSet = true
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "status"
        useGetSet = true
    .end annotation
.end field

.field private taskid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "taskid"
        useGetSet = true
    .end annotation
.end field

.field private trainProgress:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "trainProgress"
        useGetSet = true
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "userId"
        useGetSet = true
    .end annotation
.end field

.field private voiceType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "voiceType"
        useGetSet = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 64
    iput v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->progress:I

    .line 67
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inUse:Z

    .line 70
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inChose:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 64
    iput v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->progress:I

    .line 67
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inUse:Z

    .line 70
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inChose:Z

    .line 108
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->demoWavPath:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelPath:Ljava/lang/String;

    int-to-long p1, p3

    .line 110
    iput-wide p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelSize:J

    .line 111
    iput-object p4, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelname:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->nickname:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->status:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    .line 115
    iput p8, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->trainProgress:I

    .line 116
    iput p9, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->voiceType:I

    .line 117
    iput-object p10, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDemoWavPath()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->demoWavPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 214
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->id:I

    return p0
.end method

.method public getInChose()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inChose:Z

    return p0
.end method

.method public getInUse()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inUse:Z

    return p0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public getModelPath()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getModelSize()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelSize:J

    return-wide v0
.end method

.method public getModelname()Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelname:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getNo()Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->progress:I

    return p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskid()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    return-object p0
.end method

.method public getTrainProgress()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->trainProgress:I

    return p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public getVoiceType()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->voiceType:I

    return p0
.end method

.method public setDemoWavPath(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->demoWavPath:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->id:I

    return-void
.end method

.method public setInChose(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inChose:Z

    return-void
.end method

.method public setInUse(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inUse:Z

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public setModelSize(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelSize:J

    return-void
.end method

.method public setModelname(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelname:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setNo(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->progress:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaskid(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    return-void
.end method

.method public setTrainProgress(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->trainProgress:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVoiceType(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->voiceType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsData{mIsDownLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", demoWavPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->demoWavPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inUse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inUse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inChose="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->inChose:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", localPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modelname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->taskid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modelPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modelSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->modelSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", trainProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->trainProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->voiceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
