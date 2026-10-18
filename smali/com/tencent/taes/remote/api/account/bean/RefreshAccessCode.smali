.class public Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "RefreshAccessCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private codeUrl:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->sceneId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->codeUrl:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCodeUrl()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->codeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->codeUrl:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshAccessCode{sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ;codeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->codeUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-object p2, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->codeUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
