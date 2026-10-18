.class final Lcom/tencent/vrcommon/semantic/LocationBean$1;
.super Ljava/lang/Object;
.source "LocationBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrcommon/semantic/LocationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/vrcommon/semantic/LocationBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/semantic/LocationBean;
    .locals 1

    .line 171
    new-instance p0, Lcom/tencent/vrcommon/semantic/LocationBean;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/vrcommon/semantic/LocationBean;-><init>(Landroid/os/Parcel;Lcom/tencent/vrcommon/semantic/LocationBean$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/semantic/LocationBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/semantic/LocationBean;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/vrcommon/semantic/LocationBean;
    .locals 0

    .line 175
    new-array p0, p1, [Lcom/tencent/vrcommon/semantic/LocationBean;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/semantic/LocationBean$1;->newArray(I)[Lcom/tencent/vrcommon/semantic/LocationBean;

    move-result-object p0

    return-object p0
.end method
