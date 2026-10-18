.class public Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;
.super Ljava/lang/Object;
.source "SceneWeakPushInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeViewsBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private modeData:Ljava/lang/String;

.field private modeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeType:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getModeData()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeData:Ljava/lang/String;

    return-object p0
.end method

.method public getModeType()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeType:I

    return p0
.end method

.method public setModeData(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeData:Ljava/lang/String;

    return-void
.end method

.method public setModeType(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeViewsBean{modeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modeData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 132
    iget p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;->modeData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
