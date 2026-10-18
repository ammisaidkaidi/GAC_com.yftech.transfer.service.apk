.class public Lcom/tencent/tai/pal/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tai/pal/INoProguardClass;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tai/pal/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;

.field private static volatile sRemoteVersion:Lcom/tencent/tai/pal/VersionInfo;


# instance fields
.field private mBuildNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mBuildNumber"
    .end annotation
.end field

.field private mDebugVersion:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mDebugVersion"
    .end annotation
.end field

.field private mFeatureVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mFeatureVersion"
    .end annotation
.end field

.field private mFixVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mFixVersion"
    .end annotation
.end field

.field private mMajorVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mMajorVersion"
    .end annotation
.end field

.field private mVersionCode:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mVersionCode"
    .end annotation
.end field

.field private mVersionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mVersionName"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mDebugVersion:Z

    return-void
.end method

.method static createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;
    .locals 4

    .line 127
    new-instance v0, Lcom/tencent/tai/pal/VersionInfo;

    invoke-direct {v0}, Lcom/tencent/tai/pal/VersionInfo;-><init>()V

    .line 128
    iput-wide p1, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionCode:J

    .line 129
    iput-object p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    .line 131
    iget-object p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    const-string v1, "debug"

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    const-string v1, "SNAPSHOT"

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, p2

    :goto_1
    iput-boolean p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mDebugVersion:Z

    .line 135
    iget-object p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    const-string v1, "\\."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 137
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-lt v1, v2, :cond_2

    .line 138
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    .line 139
    aget-object p1, p0, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    const/4 p1, 0x2

    .line 140
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    .line 142
    :try_start_0
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tencent/tai/pal/VersionInfo;->mBuildNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 144
    :catch_0
    iput v3, v0, Lcom/tencent/tai/pal/VersionInfo;->mBuildNumber:I

    .line 145
    iput-boolean p2, v0, Lcom/tencent/tai/pal/VersionInfo;->mDebugVersion:Z

    goto :goto_2

    .line 148
    :cond_2
    iput v3, v0, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    .line 149
    iput v3, v0, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    .line 150
    iput v3, v0, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    .line 151
    iput v3, v0, Lcom/tencent/tai/pal/VersionInfo;->mBuildNumber:I

    :goto_2
    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/tencent/tai/pal/VersionInfo;
    .locals 2

    .line 93
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 94
    const-class v1, Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/VersionInfo;

    return-object p0
.end method

.method public static declared-synchronized getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;
    .locals 4

    const-class v0, Lcom/tencent/tai/pal/VersionInfo;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/tencent/tai/pal/VersionInfo;->sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/tencent/tai/pal/VersionInfo;->sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "202107051743"

    .line 109
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "3.15.1.74"

    .line 112
    invoke-static {v3, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v1

    sput-object v1, Lcom/tencent/tai/pal/VersionInfo;->sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;

    const-string v1, "PAL_SDK"

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/tai/pal/VersionInfo;->sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {v3}, Lcom/tencent/tai/pal/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/tencent/tai/pal/VersionInfo;->sLocalVersion:Lcom/tencent/tai/pal/VersionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPalAdapterVersion(Landroid/content/Context;)Lcom/tencent/tai/pal/VersionInfo;
    .locals 3

    const-class v0, Lcom/tencent/tai/pal/VersionInfo;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tai/pal/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 120
    monitor-exit v0

    return-object p0

    :cond_0
    const-wide/16 v1, 0x0

    .line 122
    :try_start_1
    invoke-static {p0, v1, v2}, Lcom/tencent/tai/pal/VersionInfo;->createVersionInfo(Ljava/lang/String;J)Lcom/tencent/tai/pal/VersionInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0

    throw p0
.end method

.method public static getRemoteVersion()Lcom/tencent/tai/pal/VersionInfo;
    .locals 1

    .line 164
    sget-object v0, Lcom/tencent/tai/pal/VersionInfo;->sRemoteVersion:Lcom/tencent/tai/pal/VersionInfo;

    return-object v0
.end method

.method public static setRemoteVersion(Lcom/tencent/tai/pal/VersionInfo;)V
    .locals 0

    .line 173
    sput-object p0, Lcom/tencent/tai/pal/VersionInfo;->sRemoteVersion:Lcom/tencent/tai/pal/VersionInfo;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/tai/pal/VersionInfo;)I
    .locals 4

    .line 178
    iget v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    iget v1, p1, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 180
    :cond_0
    iget v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    iget v1, p1, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    const/4 v3, -0x1

    if-ne v0, v1, :cond_5

    .line 181
    iget v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    iget v1, p1, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    if-le v0, v1, :cond_1

    return v2

    .line 183
    :cond_1
    iget v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    iget v1, p1, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    if-ne v0, v1, :cond_4

    .line 184
    iget v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    iget v1, p1, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    if-le v0, v1, :cond_2

    return v2

    .line 186
    :cond_2
    iget p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    iget p1, p1, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    if-ne p0, p1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v3

    :cond_4
    return v3

    :cond_5
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/tencent/tai/pal/VersionInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/VersionInfo;->compareTo(Lcom/tencent/tai/pal/VersionInfo;)I

    move-result p0

    return p0
.end method

.method public getBuildNumber()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mBuildNumber:I

    return p0
.end method

.method public getFeatureVersion()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFeatureVersion:I

    return p0
.end method

.method public getFixVersion()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mFixVersion:I

    return p0
.end method

.method public getMajorVersion()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mMajorVersion:I

    return p0
.end method

.method public getVersionCode()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/tencent/tai/pal/VersionInfo;->mVersionCode:J

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/tai/pal/VersionInfo;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 84
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
