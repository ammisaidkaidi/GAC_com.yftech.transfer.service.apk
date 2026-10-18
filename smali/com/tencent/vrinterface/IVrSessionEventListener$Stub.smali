.class public abstract Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;
.super Landroid/os/Binder;
.source "IVrSessionEventListener.java"

# interfaces
.implements Lcom/tencent/vrinterface/IVrSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vrinterface/IVrSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IVrSessionEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.vrinterface.IVrSessionEventListener"

.field static final TRANSACTION_onInteractionComplete:I = 0xc

.field static final TRANSACTION_onRecordSessionEnd:I = 0xb

.field static final TRANSACTION_onRecordStart:I = 0x3

.field static final TRANSACTION_onSemantic:I = 0x8

.field static final TRANSACTION_onSemanticTimeout:I = 0xa

.field static final TRANSACTION_onSpeakEnd:I = 0x7

.field static final TRANSACTION_onSpeakResult:I = 0x6

.field static final TRANSACTION_onSpeakStart:I = 0x5

.field static final TRANSACTION_onSrRestart:I = 0x2

.field static final TRANSACTION_onSrStart:I = 0x1

.field static final TRANSACTION_onVolumeChanged:I = 0x4

.field static final TRANSACTION_onWakeup:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.vrinterface.IVrSessionEventListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/vrinterface/IVrSessionEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.vrinterface.IVrSessionEventListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/tencent/vrinterface/IVrSessionEventListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/vrinterface/IVrSessionEventListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v3, "com.tencent.vrinterface.IVrSessionEventListener"

    const v4, 0x5f4e5446

    const/4 v8, 0x1

    if-eq p1, v4, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onInteractionComplete()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 168
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v5, v8

    .line 173
    :cond_0
    invoke-virtual {p0, v3, v4, v5}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onRecordSessionEnd(JZ)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 161
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSemanticTimeout()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 148
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v8

    .line 152
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    invoke-virtual {p0, v5, v1, v2}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onWakeup(ZLjava/lang/String;I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 135
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v5, v8

    .line 141
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    invoke-virtual {p0, v1, v5, v2}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSemantic(Ljava/lang/String;ZI)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 128
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSpeakEnd()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 115
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v5, v8

    .line 121
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    invoke-virtual {p0, v1, v5, v2}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSpeakResult(Ljava/lang/String;ZI)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 108
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSpeakStart()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 99
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onVolumeChanged(F)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 92
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onRecordStart()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 72
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;

    move-object v3, v1

    goto :goto_0

    :cond_4
    move-object v3, v4

    .line 83
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v5

    .line 85
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    move-wide v1, v6

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSrRestart(JLcom/tencent/wecarspeech/speechcommon/model/TipsHint;ZI)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 48
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    sget-object v1, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/speechcommon/model/TipsHint;

    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object v3, v4

    .line 59
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v4, v8

    goto :goto_3

    :cond_7
    move v4, v5

    .line 61
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v5, v8

    .line 63
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, p0

    move-wide v1, v6

    move-object v6, v9

    move v7, v10

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/vrinterface/IVrSessionEventListener$Stub;->onSrStart(JLcom/tencent/wecarspeech/speechcommon/model/TipsHint;ZZLjava/lang/String;I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 43
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
