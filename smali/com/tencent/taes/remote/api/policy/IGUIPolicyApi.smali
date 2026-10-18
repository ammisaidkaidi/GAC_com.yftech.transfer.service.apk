.class public interface abstract Lcom/tencent/taes/remote/api/policy/IGUIPolicyApi;
.super Ljava/lang/Object;
.source "IGUIPolicyApi.java"


# virtual methods
.method public abstract dumpState()Ljava/lang/String;
.end method

.method public abstract requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/PolicyCallback;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;
    .param p3    # Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopJudge(I)V
.end method
