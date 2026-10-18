.class public Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;
.super Ljava/lang/Object;
.source "SceneWeakPushInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationModeBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private businessName:Ljava/lang/String;

.field private modeContainer:Ljava/lang/String;

.field private modeProperties:Ljava/lang/String;

.field private modeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeContainer:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->businessName:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeProperties:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    .line 189
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    const-class v0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->businessName:Ljava/lang/String;

    return-object p0
.end method

.method public getModeContainer()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeContainer:Ljava/lang/String;

    return-object p0
.end method

.method public getModeProperties()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeProperties:Ljava/lang/String;

    return-object p0
.end method

.method public getModeViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    return-object p0
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->businessName:Ljava/lang/String;

    return-void
.end method

.method public setModeContainer(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeContainer:Ljava/lang/String;

    return-void
.end method

.method public setModeProperties(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeProperties:Ljava/lang/String;

    return-void
.end method

.method public setModeViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean$ModeViewsBean;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationModeBean{modeContainer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", businessName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->businessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modeProperties=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeProperties:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", modeViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 174
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeContainer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->businessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeProperties:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo$OperationModeBean;->modeViews:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
