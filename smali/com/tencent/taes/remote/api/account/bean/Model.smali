.class public Lcom/tencent/taes/remote/api/account/bean/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/account/bean/Model;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bizCode:I

.field public errorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "err"
    .end annotation
.end field

.field private info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/tencent/taes/remote/api/account/bean/Model$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/account/bean/Model$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/account/bean/Model;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->bizCode:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBizCode()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->bizCode:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    return p0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->info:Ljava/lang/String;

    return-object p0
.end method

.method public isOk()Z
    .locals 0

    .line 76
    iget p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBizCode(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->bizCode:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->info:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n    \"err\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n    \"bizCode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->bizCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n    \"info\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->info:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 93
    iget p2, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->bizCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/Model;->info:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
