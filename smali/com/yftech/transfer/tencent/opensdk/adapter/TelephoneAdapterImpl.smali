.class public Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;
.super Lcom/tencent/tai/pal/telephone/TelephoneAdapter;
.source "TelephoneAdapterImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public answerInComingCall()I
    .locals 0

    const-string p0, "answerInComingCall"

    .line 42
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call,the name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",number:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getRecentContact(I)Lcom/tencent/tai/pal/telephone/PhoneContact;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignoreInComingCall()I
    .locals 0

    const-string p0, "ignoreInComingCall"

    .line 62
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public refuseInComingCall()I
    .locals 0

    const-string p0, "refuseInComingCall"

    .line 52
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public registerOnTelInfoListener(Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnTelInfoListener(Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;)V
    .locals 0

    return-void
.end method

.method public viewCallRecord(I)I
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewCallRecord,the callRecordType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.yftech.btphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "page_index"

    .line 93
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string p1, "page_index"

    .line 99
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string p1, "page_index"

    .line 96
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const-string p1, "page_index"

    .line 90
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    :goto_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public viewPhonebook()I
    .locals 3

    const-string v0, "viewPhonebook"

    .line 72
    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.yftech.btphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "page_index"

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/TelephoneAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
