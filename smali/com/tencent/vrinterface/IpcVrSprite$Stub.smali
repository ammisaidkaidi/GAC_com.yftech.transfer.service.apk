.class public abstract Lcom/tencent/vrinterface/IpcVrSprite$Stub;
.super Landroid/os/Binder;
.source "IpcVrSprite.java"

# interfaces
.implements Lcom/tencent/vrinterface/IpcVrSprite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrinterface/IpcVrSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcVrSprite$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.vrinterface.IpcVrSprite"

.field static final TRANSACTION_activateVrSprite:I = 0x1

.field static final TRANSACTION_holdVrSprite:I = 0x2

.field static final TRANSACTION_interruptVrSprite:I = 0x6

.field static final TRANSACTION_releaseVrSprite:I = 0x7

.field static final TRANSACTION_setVrHints:I = 0x4

.field static final TRANSACTION_setVrSpriteEventListener:I = 0x8

.field static final TRANSACTION_setVrSpriteModelState:I = 0x3

.field static final TRANSACTION_setVrSpriteState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.vrinterface.IpcVrSprite"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcVrSprite;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.vrinterface.IpcVrSprite"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/vrinterface/IpcVrSprite;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/vrinterface/IpcVrSprite;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/vrinterface/IpcVrSprite$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/vrinterface/IpcVrSprite$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v3, "com.tencent.vrinterface.IpcVrSprite"

    const v4, 0x5f4e5446

    const/4 v6, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 138
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/vrinterface/IpcVrSpriteEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IpcVrSpriteEventListener;

    move-result-object v1

    .line 141
    invoke-virtual {p0, v1}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->setVrSpriteEventListener(Lcom/tencent/vrinterface/IpcVrSpriteEventListener;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 127
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->releaseVrSprite(JLjava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 118
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 121
    invoke-virtual {p0, v1, v2}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->interruptVrSprite(J)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 107
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->setVrSpriteState(JI)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 95
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->setVrHints(JLjava/util/List;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v6

    .line 80
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    .line 86
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v6

    .line 88
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v1, v7

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->setVrSpriteModelState(JZZLjava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 65
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v4

    .line 71
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v4, v6

    .line 73
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v1, v7

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->holdVrSprite(JZZLjava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 50
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v4

    .line 56
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v4, v6

    .line 58
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v1, v7

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/vrinterface/IpcVrSprite$Stub;->activateVrSprite(JZZLjava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 45
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
