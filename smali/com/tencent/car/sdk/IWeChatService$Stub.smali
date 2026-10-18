.class public abstract Lcom/tencent/car/sdk/IWeChatService$Stub;
.super Landroid/os/Binder;
.source "IWeChatService.java"

# interfaces
.implements Lcom/tencent/car/sdk/IWeChatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/car/sdk/IWeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.car.sdk.IWeChatService"

.field static final TRANSACTION_callMethod:I = 0x1

.field static final TRANSACTION_getDashboardConfig:I = 0x16

.field static final TRANSACTION_getNotDisturbConfig:I = 0x17

.field static final TRANSACTION_getUserGuideConfig:I = 0x18

.field static final TRANSACTION_getWeChatLoginState:I = 0x3

.field static final TRANSACTION_getWeChatNotDisturbState:I = 0xe

.field static final TRANSACTION_getWeChatPanelState:I = 0xb

.field static final TRANSACTION_getWeChatSemiAutoLoginState:I = 0xc

.field static final TRANSACTION_getWeChatUIState:I = 0x6

.field static final TRANSACTION_getWeChatUnreadMsgState:I = 0x14

.field static final TRANSACTION_getWeChatVoipState:I = 0x4

.field static final TRANSACTION_invokeWithText:I = 0x11

.field static final TRANSACTION_invokeWithWakeupWord:I = 0x12

.field static final TRANSACTION_launchMiniProgramm:I = 0x19

.field static final TRANSACTION_logoutWeChat:I = 0x10

.field static final TRANSACTION_openWeChatFunctionPage:I = 0x15

.field static final TRANSACTION_setPanel:I = 0x7

.field static final TRANSACTION_setSemiAutoLogin:I = 0x8

.field static final TRANSACTION_setWeChaPanelStateObserve:I = 0x9

.field static final TRANSACTION_setWeChaSemiAutoLoginStateObserve:I = 0xa

.field static final TRANSACTION_setWeChaUiStateObserve:I = 0x5

.field static final TRANSACTION_setWeChatMsgObserve:I = 0x2

.field static final TRANSACTION_setWeChatNotDisturbState:I = 0xd

.field static final TRANSACTION_setWeChatNotDisturbStateObserve:I = 0xf

.field static final TRANSACTION_setWeChatUnreadMsgStateObserve:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.car.sdk.IWeChatService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.car.sdk.IWeChatService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/tencent/car/sdk/IWeChatService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/tencent/car/sdk/IWeChatService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/tencent/car/sdk/IWeChatService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/car/sdk/IWeChatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.tencent.car.sdk.IWeChatService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 266
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->launchMiniProgramm(Ljava/lang/String;)I

    move-result p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 258
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getUserGuideConfig()Z

    move-result p0

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 250
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getNotDisturbConfig()Z

    move-result p0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 242
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getDashboardConfig()Z

    move-result p0

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 233
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->openWeChatFunctionPage(I)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 225
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatUnreadMsgState()I

    move-result p0

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 216
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChatUnreadMsgStateObserve(Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 203
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/car/sdk/IWeChatService$Stub;->invokeWithWakeupWord(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 190
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/car/sdk/IWeChatService$Stub;->invokeWithText(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 183
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->logoutWeChat()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 174
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatNotDisturbCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatNotDisturbCallback;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChatNotDisturbStateObserve(Lcom/tencent/car/sdk/IWeChatNotDisturbCallback;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 166
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatNotDisturbState()I

    move-result p0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 157
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChatNotDisturbState(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 149
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatSemiAutoLoginState()Z

    move-result p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 141
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatPanelState()Z

    move-result p0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 132
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChaSemiAutoLoginStateObserve(Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 123
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatPanelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatPanelCallback;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChaPanelStateObserve(Lcom/tencent/car/sdk/IWeChatPanelCallback;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 114
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 117
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setSemiAutoLogin(Z)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 105
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 108
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setPanel(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 97
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatUIState()I

    move-result p0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 88
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatUIStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatUIStateCallback;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChaUiStateObserve(Lcom/tencent/car/sdk/IWeChatUIStateCallback;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 80
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatVoipState()I

    move-result p0

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 72
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/tencent/car/sdk/IWeChatService$Stub;->getWeChatLoginState()Z

    move-result p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 63
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/car/sdk/IWeChatMsgCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/car/sdk/IWeChatMsgCallback;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/car/sdk/IWeChatService$Stub;->setWeChatMsgObserve(Lcom/tencent/car/sdk/IWeChatMsgCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 50
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/car/sdk/IWeChatService$Stub;->callMethod(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 45
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
