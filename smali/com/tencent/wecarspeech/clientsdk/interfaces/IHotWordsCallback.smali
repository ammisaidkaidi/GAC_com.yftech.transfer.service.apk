.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;
.super Lcom/tencent/wecarspeech/vframework/IHotWordsCallback$Stub;
.source "IHotWordsCallback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IHotWordsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResult(Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;)V
.end method

.method public onUploadResult(I)V
    .locals 1

    .line 11
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_ING:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->CLEAN_UP_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    goto :goto_0

    .line 17
    :pswitch_3
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_FAIL:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;->UPLOAD_SUCCESS:Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;->onResult(Lcom/tencent/wecarspeech/clientsdk/enums/HotWordResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
