.class public interface abstract Lcom/iflytek/autofly/custom/audio/aidl/ICustomAudioFocusDispatcher;
.super Ljava/lang/Object;
.source "ICustomAudioFocusDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/audio/aidl/ICustomAudioFocusDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioFocusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
