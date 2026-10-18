.class public interface abstract Lcom/yftech/hicar/sdk/IBindCallBack;
.super Ljava/lang/Object;
.source "IBindCallBack.java"


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
