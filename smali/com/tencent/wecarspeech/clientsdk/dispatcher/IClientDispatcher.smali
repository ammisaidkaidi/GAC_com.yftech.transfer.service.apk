.class public interface abstract Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;
.super Ljava/lang/Object;
.source "IClientDispatcher.java"


# virtual methods
.method public abstract dispatchAppSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract dispatchDebugSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract dispatchDuplexSSREvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;I)Z
.end method

.method public abstract dispatchDuplexSTrvEvent(JLcom/tencent/wecarspeech/clientsdk/model/STrvResult;I)Z
.end method

.method public abstract dispatchGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V
.end method

.method public abstract dispatchSSREvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;I)V
.end method

.method public abstract dispatchSTTEvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;)V
.end method

.method public abstract dispatchSTrvEvent(JLcom/tencent/wecarspeech/clientsdk/model/STrvResult;I)V
.end method

.method public abstract dispatchSystemSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract dispatchSystemWakeup(JLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract dispatchWakeup(JLjava/lang/String;Ljava/lang/String;I)V
.end method
