.class public abstract Lcom/tencent/taes/remote/api/account/IAccountService$Stub;
.super Landroid/os/Binder;
.source "IAccountService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/account/IAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/account/IAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/IAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.account.IAccountService"

.field static final TRANSACTION_AppletAuth:I = 0xd

.field static final TRANSACTION_appletLogin:I = 0x9

.field static final TRANSACTION_checkAppletSession:I = 0xa

.field static final TRANSACTION_checkContract:I = 0x12

.field static final TRANSACTION_checkContractAsync:I = 0x13

.field static final TRANSACTION_disMissDialog:I = 0x1a

.field static final TRANSACTION_getAccountDebugInfo:I = 0x14

.field static final TRANSACTION_getAppletUserInfo:I = 0xc

.field static final TRANSACTION_getAuthStatus:I = 0xe

.field static final TRANSACTION_getBaseCarInfo:I = 0xf

.field static final TRANSACTION_getNonce:I = 0x6

.field static final TRANSACTION_getPhoneNumber:I = 0xb

.field static final TRANSACTION_getTaiAccountInfo:I = 0x10

.field static final TRANSACTION_getWeCarAccount:I = 0x3

.field static final TRANSACTION_getWeCarAccountSync:I = 0x2

.field static final TRANSACTION_isTAIAuthOk:I = 0x8

.field static final TRANSACTION_logoutTaiAccount:I = 0x11

.field static final TRANSACTION_openLoginDialog:I = 0x17

.field static final TRANSACTION_openRefreshCodeDialog:I = 0x18

.field static final TRANSACTION_refreshAccessCode:I = 0x15

.field static final TRANSACTION_refreshAccessCodeSync:I = 0x16

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_registerOnDeviceInfoChangeListener:I = 0x1b

.field static final TRANSACTION_removeTXAccount:I = 0x4

.field static final TRANSACTION_removeWeCarAccount:I = 0x7

.field static final TRANSACTION_switchUIMode:I = 0x19

.field static final TRANSACTION_updateSessionKey:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.account.IAccountService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/IAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.account.IAccountService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/taes/remote/api/account/IAccountService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/taes/remote/api/account/IAccountService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/account/IAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.tencent.taes.remote.api.account.IAccountService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 344
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/account/listener/IOnDeviceInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IOnDeviceInfoChangeListener;

    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->registerOnDeviceInfoChangeListener(Lcom/tencent/taes/remote/api/account/listener/IOnDeviceInfoChangeListener;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 337
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->disMissDialog()V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 328
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->switchUIMode(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 319
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->openRefreshCodeDialog(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 310
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->openLoginDialog(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 294
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->refreshAccessCodeSync(Ljava/lang/String;)Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;

    move-result-object p0

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/account/bean/RefreshAccessCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 283
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback;

    move-result-object p2

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->refreshAccessCode(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIRefreshAccessCodeCallback;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 275
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getAccountDebugInfo()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 264
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/ITAIContractCallback;

    move-result-object p2

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->checkContractAsync(ILcom/tencent/taes/remote/api/account/listener/ITAIContractCallback;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 248
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 251
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->checkContract(I)Lcom/tencent/taes/remote/api/account/bean/WeCarContract;

    move-result-object p0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/account/bean/WeCarContract;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 228
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 233
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;

    move-result-object v9

    move-object v3, p0

    .line 242
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 212
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 217
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p4

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;

    move-result-object p2

    .line 222
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getTaiAccountInfo(ILjava/util/Map;Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 201
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getBaseCarInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 190
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getAuthStatus(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 179
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->AppletAuth(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 168
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getAppletUserInfo(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 157
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getPhoneNumber(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 146
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->checkAppletSession(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 135
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->appletLogin(Ljava/lang/String;Lcom/tencent/taes/remote/api/account/listener/IMossCallBack;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 127
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->isTAIAuthOk()Z

    move-result p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 119
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->removeWeCarAccount()Z

    move-result p0

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 111
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getNonce()J

    move-result-wide p0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 100
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 105
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->updateSessionKey(Ljava/lang/String;J)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 85
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    sget-object p1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/remote/api/account/bean/TxAccount;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 93
    :goto_2
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->removeTXAccount(Lcom/tencent/taes/remote/api/account/bean/TxAccount;)Z

    move-result p0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 76
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/account/listener/IAccountListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IAccountListener;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getWeCarAccount(Lcom/tencent/taes/remote/api/account/listener/IAccountListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->getWeCarAccountSync()Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;

    move-result-object p0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0, p3, v2}, Lcom/tencent/taes/remote/api/account/bean/WeCarAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v2

    .line 48
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 53
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/taes/remote/api/account/IAccountService$Stub;->registerClient(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/taes/remote/api/account/listener/IAccountEventListener;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
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
