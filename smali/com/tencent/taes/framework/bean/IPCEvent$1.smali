.class final Lcom/tencent/taes/framework/bean/IPCEvent$1;
.super Ljava/lang/Object;
.source "IPCEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/bean/IPCEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/framework/bean/IPCEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/framework/bean/IPCEvent;
    .locals 0

    .line 78
    new-instance p0, Lcom/tencent/taes/framework/bean/IPCEvent;

    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/bean/IPCEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/bean/IPCEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/framework/bean/IPCEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/framework/bean/IPCEvent;
    .locals 0

    .line 83
    new-array p0, p1, [Lcom/tencent/taes/framework/bean/IPCEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/bean/IPCEvent$1;->newArray(I)[Lcom/tencent/taes/framework/bean/IPCEvent;

    move-result-object p0

    return-object p0
.end method
