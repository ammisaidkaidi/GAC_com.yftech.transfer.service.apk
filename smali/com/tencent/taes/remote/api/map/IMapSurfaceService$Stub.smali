.class public abstract Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;
.super Landroid/os/Binder;
.source "IMapSurfaceService.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/map/IMapSurfaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/map/IMapSurfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.taes.remote.api.map.IMapSurfaceService"

.field static final TRANSACTION_createPoiLayer:I = 0xc

.field static final TRANSACTION_createSurface:I = 0x1

.field static final TRANSACTION_getMapMode:I = 0x9

.field static final TRANSACTION_getStyleMode:I = 0x10

.field static final TRANSACTION_isDisplayingArMap:I = 0x14

.field static final TRANSACTION_isDisplayingMap:I = 0x13

.field static final TRANSACTION_isRunning:I = 0x7

.field static final TRANSACTION_isValid:I = 0x8

.field static final TRANSACTION_onPause:I = 0x5

.field static final TRANSACTION_onResume:I = 0x4

.field static final TRANSACTION_onTouchEvent:I = 0x6

.field static final TRANSACTION_removeLayer:I = 0xd

.field static final TRANSACTION_removedSurface:I = 0x3

.field static final TRANSACTION_setCenterOffset:I = 0xa

.field static final TRANSACTION_setFollow:I = 0xf

.field static final TRANSACTION_setStyleMode:I = 0x15

.field static final TRANSACTION_setStyleModeChangedListener:I = 0x11

.field static final TRANSACTION_showARMap:I = 0x12

.field static final TRANSACTION_startMapMonitorTask:I = 0xb

.field static final TRANSACTION_updateSurface:I = 0x2

.field static final TRANSACTION_zoomToPois:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.taes.remote.api.map.IMapSurfaceService"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.taes.remote.api.map.IMapSurfaceService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/tencent/taes/remote/api/map/IMapSurfaceService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.tencent.taes.remote.api.map.IMapSurfaceService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 322
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->setStyleMode(JI)Z

    move-result p0

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 312
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->isDisplayingArMap(I)Z

    move-result p0

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 302
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->isDisplayingMap(I)Z

    move-result p0

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 290
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v1, v2

    .line 295
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->showARMap(IZ)Z

    move-result p0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 279
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IStyleModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IStyleModeChangedListener;

    move-result-object p1

    .line 284
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->setStyleModeChangedListener(JLcom/tencent/taes/remote/api/map/IStyleModeChangedListener;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 269
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->getStyleMode(J)I

    move-result p0

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 258
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 263
    :cond_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->setFollow(JZ)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 240
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 244
    sget-object p1, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 247
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/graphics/Rect;

    .line 252
    :cond_2
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->zoomToPois(JLjava/util/List;Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 229
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 234
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->removeLayer(JJ)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 201
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 205
    sget-object p1, Lcom/tencent/taes/remote/api/search/bean/SearchPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    move-object v7, p1

    goto :goto_0

    :cond_3
    move-object v7, v3

    .line 214
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_4
    move-object v8, v3

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;

    move-result-object v9

    move-object v3, p0

    .line 222
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->createPoiLayer(JLjava/util/List;Landroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/tencent/taes/remote/api/map/IMapPoiLayerListener;)J

    move-result-wide p0

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 188
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener;

    move-result-object p2

    .line 195
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->startMapMonitorTask(JILcom/tencent/taes/remote/api/map/IMapSurfaceMonitorListener;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 175
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 182
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->setCenterOffset(JII)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 165
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->getMapMode(J)I

    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 157
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->isValid()Z

    move-result p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 147
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->isRunning(J)Z

    move-result p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 130
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 135
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 140
    :cond_5
    invoke-virtual {p0, v0, v1, v3}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->onTouchEvent(JLandroid/view/MotionEvent;)Z

    move-result p0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 120
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->onPause(J)Z

    move-result p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 110
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->onResume(J)Z

    move-result p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 100
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->removedSurface(J)Z

    move-result p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 77
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 82
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/Surface;

    :cond_6
    move-object v6, v3

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceListener;

    move-result-object v9

    move-object v3, p0

    .line 93
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->updateSurface(JLandroid/view/Surface;IILcom/tencent/taes/remote/api/map/IMapSurfaceListener;)Z

    move-result p0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 52
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 55
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/Surface;

    :cond_7
    move-object v5, v3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/taes/remote/api/map/IMapSurfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/map/IMapSurfaceListener;

    move-result-object v10

    move-object v4, p0

    .line 70
    invoke-virtual/range {v4 .. v10}, Lcom/tencent/taes/remote/api/map/IMapSurfaceService$Stub;->createSurface(Landroid/view/Surface;IIIILcom/tencent/taes/remote/api/map/IMapSurfaceListener;)Z

    move-result p0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 47
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
