.class final Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$1;
.super Ljava/lang/Object;
.source "SceneWeakPushInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
    .locals 0

    .line 195
    new-instance p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
    .locals 0

    .line 200
    new-array p0, p1, [Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$1;->newArray(I)[Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    move-result-object p0

    return-object p0
.end method
