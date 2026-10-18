.class final Lcom/tencent/vrcommon/app/LaunchParams$1;
.super Ljava/lang/Object;
.source "LaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrcommon/app/LaunchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/vrcommon/app/LaunchParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/app/LaunchParams;
    .locals 0

    .line 241
    new-instance p0, Lcom/tencent/vrcommon/app/LaunchParams;

    invoke-direct {p0, p1}, Lcom/tencent/vrcommon/app/LaunchParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/app/LaunchParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vrcommon/app/LaunchParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/tencent/vrcommon/app/LaunchParams;
    .locals 0

    .line 246
    new-array p0, p1, [Lcom/tencent/vrcommon/app/LaunchParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/tencent/vrcommon/app/LaunchParams$1;->newArray(I)[Lcom/tencent/vrcommon/app/LaunchParams;

    move-result-object p0

    return-object p0
.end method
