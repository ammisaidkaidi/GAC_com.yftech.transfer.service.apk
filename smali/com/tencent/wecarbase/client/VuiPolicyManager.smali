.class public Lcom/tencent/wecarbase/client/VuiPolicyManager;
.super Lcom/tencent/wecarbase/client/BasePolicyManager;
.source "VuiPolicyManager.java"


# static fields
.field public static final ASSISTANT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ASSISTANT_RECORD:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALLBACK_GRANT:I = 0xbb8

.field public static final CALLBACK_IGNORE:I = 0xbba

.field public static final CALLBACK_INTERRUPT:I = 0xbbc

.field public static final CALLBACK_MIX:I = 0xbb9

.field public static final CALLBACK_MUTE_WAIT:I = 0xbbb

.field public static final INFORMATION:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_STREAM:I = 0x6e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGING:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVI_GUIDANCE_L1:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVI_GUIDANCE_L2:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION:I = 0x5a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_ERROR:I = 0x3e8

.field public static final REQUEST_GRANT:I = 0x3e9

.field public static final REQUEST_GRANT_DIDI:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_GRANT_MIX:I = 0x3ea

.field public static final REQUEST_REJECT:I = 0x3ed

.field public static final REQUEST_WAIT:I = 0x3ec

.field public static final TX_IM_TTS:I = 0x1e

.field public static final TX_MEDIA:I = 0x6e

.field public static final TX_NAVI_GUIDANCE_L1:I = 0x3c

.field public static final TX_NAVI_GUIDANCE_L2:I = 0x32

.field public static final TX_NOTIFICATION:I = 0x50

.field public static final TX_PHONE:I = 0xa

.field public static final TX_TTS:I = 0x5a

.field public static final TX_VR:I = 0x64

.field public static final TX_VR_TTS:I = 0x14

.field public static final UNDEFINED:I

.field private static volatile mInstance:Lcom/tencent/wecarbase/client/VuiPolicyManager;


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.policy.VUI_POLICY_SERVICE"

    .line 206
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BasePolicyManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "com.tencent.wecarbase.policy.VUI_POLICY_SERVICE"

    .line 211
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BasePolicyManager;-><init>(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/VuiPolicyManager;
    .locals 2

    .line 195
    sget-object v0, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/VuiPolicyManager;

    if-nez v0, :cond_1

    .line 196
    const-class v0, Lcom/tencent/wecarbase/client/VuiPolicyManager;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/VuiPolicyManager;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/tencent/wecarbase/client/VuiPolicyManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/VuiPolicyManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/VuiPolicyManager;

    .line 200
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/VuiPolicyManager;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BasePolicyManager;->destroy()V

    return-void
.end method

.method public bridge synthetic dumpState()Ljava/lang/String;
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BasePolicyManager;->dumpState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallBack;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallBack;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback2;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback2;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback3;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback3;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic stopJudge(I)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->stopJudge(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiPolicyManager{mLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarbase/client/VuiPolicyManager;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
