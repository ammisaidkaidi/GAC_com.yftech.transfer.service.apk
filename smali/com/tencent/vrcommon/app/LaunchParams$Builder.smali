.class public Lcom/tencent/vrcommon/app/LaunchParams$Builder;
.super Ljava/lang/Object;
.source "LaunchParams.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrcommon/app/LaunchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bAsrTTS:Ljava/lang/String;

.field private bAutoClose:Z

.field private bDimBehind:Z

.field private bDoaDirectionMode:I

.field private bLaunchType:I

.field private bPageIndex:I

.field private bPlayAsrBee:Z

.field private bSpriteModal:Z

.field private bWakeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPlayAsrBee:Z

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPageIndex:I

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDoaDirectionMode:I

    .line 118
    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bLaunchType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/vrcommon/app/LaunchParams;
    .locals 4

    .line 185
    new-instance v0, Lcom/tencent/vrcommon/app/LaunchParams;

    iget v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bLaunchType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/vrcommon/app/LaunchParams;-><init>(ILcom/tencent/vrcommon/app/LaunchParams$1;)V

    .line 186
    iget v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bLaunchType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bWakeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can not use empty wakeType with LaunchParams.TYPE_START_ASR"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_1
    :goto_0
    iget v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bLaunchType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bLaunchType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 193
    :cond_2
    iput-boolean v2, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bSpriteModal:Z

    const/4 v1, 0x0

    .line 194
    iput-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDimBehind:Z

    .line 196
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPlayAsrBee:Z

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$102(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z

    .line 197
    iget-object v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bWakeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$202(Lcom/tencent/vrcommon/app/LaunchParams;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bAsrTTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$302(Lcom/tencent/vrcommon/app/LaunchParams;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bSpriteModal:Z

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$402(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z

    .line 200
    iget-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDimBehind:Z

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$502(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z

    .line 201
    iget-boolean v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bAutoClose:Z

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$602(Lcom/tencent/vrcommon/app/LaunchParams;Z)Z

    .line 202
    iget v1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPageIndex:I

    invoke-static {v0, v1}, Lcom/tencent/vrcommon/app/LaunchParams;->access$702(Lcom/tencent/vrcommon/app/LaunchParams;I)I

    .line 203
    iget p0, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDoaDirectionMode:I

    invoke-static {v0, p0}, Lcom/tencent/vrcommon/app/LaunchParams;->access$802(Lcom/tencent/vrcommon/app/LaunchParams;I)I

    return-object v0
.end method

.method public setAsrSoundEnable(Z)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPlayAsrBee:Z

    return-object p0
.end method

.method public setAsrTTS(Ljava/lang/String;)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bAsrTTS:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoCloseEnabled(Z)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bAutoClose:Z

    return-object p0
.end method

.method public setDoaDirectionMode(Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/speechcommon/doa/DoaDirectionMode;->toInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDoaDirectionMode:I

    :cond_0
    return-object p0
.end method

.method public setPageIndex(I)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 146
    iput p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bPageIndex:I

    return-object p0
.end method

.method public setSpriteModalState(ZZ)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bSpriteModal:Z

    .line 152
    iput-boolean p2, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDimBehind:Z

    .line 153
    iget-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bSpriteModal:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDimBehind:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bDimBehind:Z

    :cond_0
    return-object p0
.end method

.method public setWakeType(Ljava/lang/String;)Lcom/tencent/vrcommon/app/LaunchParams$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tencent/vrcommon/app/LaunchParams$Builder;->bWakeType:Ljava/lang/String;

    return-object p0
.end method
