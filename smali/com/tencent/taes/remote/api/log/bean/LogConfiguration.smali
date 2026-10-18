.class public Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;
.super Ljava/lang/Object;
.source "LogConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONSOLE:Ljava/lang/String; = "console"

.field public static final KEY_EXPIRED_TIME:Ljava/lang/String; = "expiredTime"

.field public static final KEY_LOCAL_STORAGE:Ljava/lang/String; = "localStorage"

.field public static final KEY_LOG_LEVEL:Ljava/lang/String; = "logLevel"

.field public static final KEY_LOG_SIZE:Ljava/lang/String; = "logSize"

.field public static final KEY_MODULE_NAME:Ljava/lang/String; = "moduleName"


# instance fields
.field public bConsole:Z

.field public expiredTime:I

.field public localStorage:Z

.field public logLevel:Ljava/lang/String;

.field public logSize:D

.field protected mExtBundle:Landroid/os/Bundle;

.field public moduleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "logModule"

    .line 35
    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    const-string v0, "ALL"

    .line 36
    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 37
    iput-wide v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    .line 51
    iget-wide v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    iput-wide v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    .line 52
    iget-boolean v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    .line 53
    iget-boolean v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    .line 54
    iget v0, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    iput v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    .line 55
    iget-object p1, p1, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    int-to-double p1, p3

    .line 72
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    .line 73
    iput-boolean p4, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    .line 74
    iput-boolean p5, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    .line 75
    iput p6, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZILandroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    int-to-double p1, p3

    .line 92
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    .line 93
    iput-boolean p4, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    .line 94
    iput-boolean p5, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    .line 95
    iput p6, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    .line 96
    iput-object p7, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConfigBundle()Landroid/os/Bundle;
    .locals 4

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "moduleName"

    .line 101
    iget-object v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logLevel"

    .line 102
    iget-object v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logSize"

    .line 103
    iget-wide v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "console"

    .line 104
    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "localStorage"

    .line 105
    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expiredTime"

    .line 106
    iget p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getExpiredTime()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    return p0
.end method

.method public getExtBundle()Landroid/os/Bundle;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getLogSize()D
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    return-wide v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public isConsole()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    return p0
.end method

.method public isLocalStorage()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    return p0
.end method

.method public setConsole(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    return-void
.end method

.method public setExpiredTime(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    return-void
.end method

.method public setExtBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setLocalStorage(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    return-void
.end method

.method public setLogSize(D)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "moduleName"

    .line 229
    iget-object v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logLevel"

    .line 230
    iget-object v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logSize"

    .line 231
    iget-wide v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "console"

    .line 232
    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "localStorage"

    .line 233
    iget-boolean v2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "expiredTime"

    .line 234
    iget p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogConfiguration{moduleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",logSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",bConsole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",localStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",expiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 260
    iget-object p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logLevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-wide v0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->logSize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->bConsole:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 264
    iget-boolean p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->localStorage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 265
    iget p2, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->expiredTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p0, p0, Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;->mExtBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
