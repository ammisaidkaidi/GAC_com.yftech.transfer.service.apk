.class public interface abstract Lcom/tencent/wecarspeech/vframework/IHotWordsCallback;
.super Ljava/lang/Object;
.source "IHotWordsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IHotWordsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUploadResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
