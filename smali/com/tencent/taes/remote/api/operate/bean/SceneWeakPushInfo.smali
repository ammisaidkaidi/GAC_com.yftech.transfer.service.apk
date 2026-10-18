.class public Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;
.super Ljava/lang/Object;
.source "SceneWeakPushInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraData:Ljava/lang/String;

.field private operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->uuid:Ljava/lang/String;

    .line 231
    const-class v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->extraData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->extraData:Ljava/lang/String;

    return-object p0
.end method

.method public getOperationMode()Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->extraData:Ljava/lang/String;

    return-void
.end method

.method public setOperationMode(Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneWeakPushInfo{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operationMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extraData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->operationMode:Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;->extraData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
