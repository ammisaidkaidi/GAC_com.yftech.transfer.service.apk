.class public Lcom/tencent/wecarbase/client/GuiPolicyManager;
.super Lcom/tencent/wecarbase/client/BasePolicyManager;
.source "GuiPolicyManager.java"


# static fields
.field public static final CALLBACK_GRANT:I = 0x12d

.field public static final CALLBACK_IGNORE:I = 0x12f

.field public static final CALLBACK_INTERRUPT:I = 0x12e

.field public static final MESSAGE:I = 0x1e

.field public static final PHONE:I = 0xa

.field public static final RECORD:I = 0x14

.field public static final REQUEST_GRANT:I = 0x65

.field public static final REQUEST_REJECT:I = 0x66

.field public static final REQUEST_WAIT:I = 0x67

.field private static volatile mInstance:Lcom/tencent/wecarbase/client/GuiPolicyManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.policy.GUI_POLICY_SERVICE"

    .line 86
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BasePolicyManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/GuiPolicyManager;
    .locals 2

    .line 75
    sget-object v0, Lcom/tencent/wecarbase/client/GuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/GuiPolicyManager;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/tencent/wecarbase/client/GuiPolicyManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/GuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/GuiPolicyManager;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/tencent/wecarbase/client/GuiPolicyManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/GuiPolicyManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/GuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/GuiPolicyManager;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/GuiPolicyManager;->mInstance:Lcom/tencent/wecarbase/client/GuiPolicyManager;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BasePolicyManager;->destroy()V

    return-void
.end method

.method public bridge synthetic dumpState()Ljava/lang/String;
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BasePolicyManager;->dumpState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallBack;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallBack;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback2;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback2;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback3;)Lcom/tencent/wecarbase/policy/Response;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/tencent/wecarbase/client/BasePolicyManager;->requestJudge(ILcom/tencent/wecarbase/client/IPolicyCallback3;)Lcom/tencent/wecarbase/policy/Response;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic stopJudge(I)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BasePolicyManager;->stopJudge(I)V

    return-void
.end method
