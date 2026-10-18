.class public interface abstract Lcom/tencent/taes/api/moss/listener/MossCallback;
.super Ljava/lang/Object;
.source "MossCallback.java"


# virtual methods
.method public abstract connectionFail()V
.end method

.method public abstract connectionSuccess()V
.end method

.method public abstract onMusicInfoChange(Lcom/tencent/taes/api/moss/bean/MossAudioBean;)V
.end method

.method public abstract onMusicStatusChange(Ljava/lang/String;)V
.end method

.method public abstract onProgress(JJ)V
.end method
