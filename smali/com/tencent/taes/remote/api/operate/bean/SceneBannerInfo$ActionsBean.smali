.class public Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;
.super Ljava/lang/Object;
.source "SceneBannerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionsBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionName:Ljava/lang/String;

.field private app:Ljava/lang/String;

.field private data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->app:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->actionName:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public getApp()Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->app:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->actionName:Ljava/lang/String;

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->app:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->data:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionsBean{app=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 198
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->app:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->actionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo$ActionsBean;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
