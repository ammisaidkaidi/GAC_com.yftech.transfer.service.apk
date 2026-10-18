.class Lcom/tencent/tai/pal/network/d$a$a;
.super Ljava/lang/Object;
.source "IOnNetworkSignalStrengthChangeListenerAidl.java"

# interfaces
.implements Lcom/tencent/tai/pal/network/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/network/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/tencent/tai/pal/network/d$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tencent.tai.pal.network.IOnNetworkSignalStrengthChangeListenerAidl"

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget-object p0, p0, Lcom/tencent/tai/pal/network/d$a$a;->a:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/tencent/tai/pal/network/d$a$a;->a:Landroid/os/IBinder;

    return-object p0
.end method
