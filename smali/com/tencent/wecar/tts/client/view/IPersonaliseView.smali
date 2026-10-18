.class public interface abstract Lcom/tencent/wecar/tts/client/view/IPersonaliseView;
.super Ljava/lang/Object;
.source "IPersonaliseView.java"


# virtual methods
.method public abstract setAppletQRCode(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setInfo(Ljava/lang/String;)V
.end method

.method public abstract showAppletQRCode(Z)V
.end method

.method public abstract showAttentionPicture(Z)V
.end method

.method public abstract showInfoView(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoadLinearLayout(Z)V
.end method

.method public abstract showLoadingView(Z)V
.end method

.method public abstract showLoginButton(Z)V
.end method

.method public abstract showQRCodeRefreshView()V
.end method

.method public abstract showRecordButton(Z)V
.end method

.method public abstract showRetryButton(Z)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method

.method public abstract showTtsList(Z)V
.end method
