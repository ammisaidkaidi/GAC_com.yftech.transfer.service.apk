.class public Lcom/tencent/taes/remote/api/account/bean/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private UserAccount:Ljava/lang/String;

.field private accountEnv:Ljava/lang/String;

.field private appAuthStatus:I

.field private channel:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private palChannel:Ljava/lang/String;

.field private palDeviceId:Ljava/lang/String;

.field private palStatus:Z

.field private palVersion:Ljava/lang/Object;

.field private palVin:Ljava/lang/String;

.field private sdcardChannel:Ljava/lang/String;

.field private vin:Ljava/lang/String;

.field private weChatAuthString:Ljava/lang/String;

.field private wecarIdResult:Lcom/tencent/taes/remote/api/account/bean/RegisterResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountEnv()Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->accountEnv:Ljava/lang/String;

    return-object p0
.end method

.method public getAppAuthStatus()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->appAuthStatus:I

    return p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPalChannel()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getPalDeviceId()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPalStatus()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palStatus:Z

    return p0
.end method

.method public getPalVersion()Ljava/lang/Object;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palVersion:Ljava/lang/Object;

    return-object p0
.end method

.method public getPalVin()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palVin:Ljava/lang/String;

    return-object p0
.end method

.method public getSdcardChannel()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->sdcardChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->UserAccount:Ljava/lang/String;

    return-object p0
.end method

.method public getVin()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->vin:Ljava/lang/String;

    return-object p0
.end method

.method public getWeChatAuthString()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->weChatAuthString:Ljava/lang/String;

    return-object p0
.end method

.method public getWecarIdResult()Lcom/tencent/taes/remote/api/account/bean/RegisterResult;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->wecarIdResult:Lcom/tencent/taes/remote/api/account/bean/RegisterResult;

    return-object p0
.end method

.method public setAccountEnv(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->accountEnv:Ljava/lang/String;

    return-void
.end method

.method public setAppAuthStatus(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->appAuthStatus:I

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setPalChannel(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palChannel:Ljava/lang/String;

    return-void
.end method

.method public setPalDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setPalStatus(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palStatus:Z

    return-void
.end method

.method public setPalVersion(Ljava/lang/Object;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palVersion:Ljava/lang/Object;

    return-void
.end method

.method public setPalVin(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->palVin:Ljava/lang/String;

    return-void
.end method

.method public setSdcardChannel(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->sdcardChannel:Ljava/lang/String;

    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->UserAccount:Ljava/lang/String;

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->vin:Ljava/lang/String;

    return-void
.end method

.method public setWeChatAuthString(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->weChatAuthString:Ljava/lang/String;

    return-void
.end method

.method public setWecarIdResult(Lcom/tencent/taes/remote/api/account/bean/RegisterResult;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/DebugInfo;->wecarIdResult:Lcom/tencent/taes/remote/api/account/bean/RegisterResult;

    return-void
.end method
