.class public abstract Lcom/tencent/wecarbase/IAccountService$Stub;
.super Landroid/os/Binder;
.source "IAccountService.java"

# interfaces
.implements Lcom/tencent/wecarbase/IAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/IAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/IAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wecarbase.IAccountService"

.field static final TRANSACTION_AppletAuth:I = 0x11

.field static final TRANSACTION_addBindAccount:I = 0x3

.field static final TRANSACTION_appletLogin:I = 0xd

.field static final TRANSACTION_checkAppletSession:I = 0xe

.field static final TRANSACTION_checkContract:I = 0x18

.field static final TRANSACTION_closeAccountUI:I = 0x16

.field static final TRANSACTION_closeFeedbackUI:I = 0x17

.field static final TRANSACTION_getAppletUserInfo:I = 0x10

.field static final TRANSACTION_getAuthStatus:I = 0x12

.field static final TRANSACTION_getBaseCarInfo:I = 0x13

.field static final TRANSACTION_getNonce:I = 0x7

.field static final TRANSACTION_getPhoneNumber:I = 0xf

.field static final TRANSACTION_getProductConfigByKey:I = 0x9

.field static final TRANSACTION_getTaiAccountInfo:I = 0x14

.field static final TRANSACTION_getUserConfigByKey:I = 0xa

.field static final TRANSACTION_getWeCarAccount:I = 0x2

.field static final TRANSACTION_getWeCarAccountSync:I = 0x1

.field static final TRANSACTION_isTAIAuthOk:I = 0xc

.field static final TRANSACTION_logoutTaiAccount:I = 0x15

.field static final TRANSACTION_removeTXAccount:I = 0x4

.field static final TRANSACTION_removeWXAccount:I = 0x5

.field static final TRANSACTION_removeWeCarAccount:I = 0x8

.field static final TRANSACTION_setUserConfig:I = 0xb

.field static final TRANSACTION_updateSessionKey:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.wecarbase.IAccountService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/wecarbase/IAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.wecarbase.IAccountService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/wecarbase/IAccountService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/wecarbase/IAccountService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/wecarbase/IAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/IAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 312
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/IAccountService$Stub;->checkContract(I)Lcom/tencent/wecarbase/model/WeCarContract;

    move-result-object p0

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {p0, p3, v1}, Lcom/tencent/wecarbase/model/WeCarContract;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_1
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/IAccountService$Stub;->closeFeedbackUI(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 294
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/IAccountService$Stub;->closeAccountUI(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 274
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;

    move-result-object v8

    move-object v2, p0

    .line 288
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/wecarbase/IAccountService$Stub;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 258
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 263
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p4

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;

    move-result-object p2

    .line 268
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getTaiAccountInfo(ILjava/util/Map;Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 247
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getBaseCarInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 236
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getAuthStatus(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 225
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->AppletAuth(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 214
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getAppletUserInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 203
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getPhoneNumber(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 192
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->checkAppletSession(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 181
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/taiaccount/IMossCallBack;

    move-result-object p2

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->appletLogin(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 173
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/tencent/wecarbase/IAccountService$Stub;->isTAIAuthOk()Z

    move-result p0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 160
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/IConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IConfigListener;

    move-result-object p2

    .line 167
    invoke-virtual {p0, p1, p4, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->setUserConfig(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 149
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/IConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IConfigListener;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 134
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wecarbase/IConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IConfigListener;

    move-result-object p2

    .line 143
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/tencent/wecarbase/IAccountService$Stub;->getProductConfigByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/tencent/wecarbase/IAccountService$Stub;->removeWeCarAccount()Z

    move-result p0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 118
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/tencent/wecarbase/IAccountService$Stub;->getNonce()J

    move-result-wide p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_12
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 107
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 112
    invoke-virtual {p0, p1, v2, v3}, Lcom/tencent/wecarbase/IAccountService$Stub;->updateSessionKey(Ljava/lang/String;J)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 99
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/tencent/wecarbase/IAccountService$Stub;->removeWXAccount()Z

    move-result p0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_14
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    sget-object p1, Lcom/tencent/wecarbase/model/TxAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/wecarbase/model/TxAccount;

    .line 92
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/IAccountService$Stub;->removeTXAccount(Lcom/tencent/wecarbase/model/TxAccount;)Z

    move-result p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_15
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 70
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    sget-object p1, Lcom/tencent/wecarbase/model/TxAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/wecarbase/model/TxAccount;

    .line 78
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/wecarbase/IAccountService$Stub;->addBindAccount(Lcom/tencent/wecarbase/model/TxAccount;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wecarbase/IAccountListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IAccountListener;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/IAccountService$Stub;->getWeCarAccount(Lcom/tencent/wecarbase/IAccountListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string p1, "com.tencent.wecarbase.IAccountService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/wecarbase/IAccountService$Stub;->getWeCarAccountSync()Lcom/tencent/wecarbase/model/WeCarAccount;

    move-result-object p0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p0, p3, v1}, Lcom/tencent/wecarbase/model/WeCarAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :cond_4
    const-string p0, "com.tencent.wecarbase.IAccountService"

    .line 42
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
