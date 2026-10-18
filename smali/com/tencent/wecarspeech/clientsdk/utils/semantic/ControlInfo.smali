.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;
.super Ljava/lang/Object;
.source "ControlInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"


# instance fields
.field private mAudioConsole:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioConsole"
    .end annotation
.end field

.field private mBackgroundImageValid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundImageValid"
    .end annotation
.end field

.field private mOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field private mTextSpeak:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textSpeak"
    .end annotation
.end field

.field private mTitleSpeak:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleSpeak"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioConsole()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mAudioConsole:Ljava/lang/String;

    return-object p0
.end method

.method public getBackgroundImageValid()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mBackgroundImageValid:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mOrientation:Ljava/lang/String;

    return-object p0
.end method

.method public getTextSpeak()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mTextSpeak:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleSpeak()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mTitleSpeak:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioConsole(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mAudioConsole:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImageValid(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mBackgroundImageValid:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mOrientation:Ljava/lang/String;

    return-void
.end method

.method public setTextSpeak(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mTextSpeak:Ljava/lang/String;

    return-void
.end method

.method public setTitleSpeak(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mTitleSpeak:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
