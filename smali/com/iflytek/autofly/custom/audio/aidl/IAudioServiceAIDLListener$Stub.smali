.class public abstract Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;
.super Landroid/os/Binder;
.source "IAudioServiceAIDLListener.java"

# interfaces
.implements Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener"

.field static final TRANSACTION_onAbandonAudioFocus:I = 0x8

.field static final TRANSACTION_onCloseChannel:I = 0x2

.field static final TRANSACTION_onGet3DSoundMode:I = 0xc

.field static final TRANSACTION_onGetCurrentChannel:I = 0x3

.field static final TRANSACTION_onGetEQ:I = 0xa

.field static final TRANSACTION_onGetEQMode:I = 0x5

.field static final TRANSACTION_onGetLastMusicSourceChannel:I = 0x9

.field static final TRANSACTION_onIsAudioFocusOccupy:I = 0x4

.field static final TRANSACTION_onRequestAudioFocus:I = 0x7

.field static final TRANSACTION_onSet3DSoundMode:I = 0xd

.field static final TRANSACTION_onSetEQ:I = 0xb

.field static final TRANSACTION_onSetEQMode:I = 0x6

.field static final TRANSACTION_onSwitchChannel:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.iflytek.autofly.custom.audio.aidl.IAudioServiceAIDLListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 164
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onSet3DSoundMode(I)I

    move-result p0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 156
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onGet3DSoundMode()I

    move-result p0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 144
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onSetEQ(II)I

    move-result p0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 134
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onGetEQ(I)I

    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 126
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onGetLastMusicSourceChannel()I

    move-result p0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 116
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onAbandonAudioFocus(Landroid/os/IBinder;)I

    move-result p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 102
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 109
    invoke-virtual {p0, p1, p4, p2}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onRequestAudioFocus(Landroid/os/IBinder;II)I

    move-result p0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 92
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onSetEQMode(I)I

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 84
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onGetEQMode()I

    move-result p0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 76
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onIsAudioFocusOccupy()Z

    move-result p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 68
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onGetCurrentChannel()I

    move-result p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 58
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onCloseChannel(I)I

    move-result p0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/iflytek/autofly/custom/audio/aidl/IAudioServiceAIDLListener$Stub;->onSwitchChannel(I)I

    move-result p0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
