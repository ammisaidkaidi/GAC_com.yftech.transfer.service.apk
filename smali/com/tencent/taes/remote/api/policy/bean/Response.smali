.class public Lcom/tencent/taes/remote/api/policy/bean/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/policy/bean/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ret:I

.field private taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/tencent/taes/remote/api/policy/bean/Response$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/policy/bean/Response$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/policy/bean/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->ret:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->taskId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRet()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->ret:I

    return p0
.end method

.method public getTaskId()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->taskId:I

    return p0
.end method

.method public setRet(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->ret:I

    return-void
.end method

.method public setTaskId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->taskId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget p2, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->ret:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget p0, p0, Lcom/tencent/taes/remote/api/policy/bean/Response;->taskId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
