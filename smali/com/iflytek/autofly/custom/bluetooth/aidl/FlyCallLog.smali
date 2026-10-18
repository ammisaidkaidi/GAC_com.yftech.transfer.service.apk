.class public Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;
.super Ljava/lang/Object;
.source "FlyCallLog.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CALLLOG_TYPE_ALL:I = 0x4

.field public static final CALLLOG_TYPE_INCOMING:I = 0x2

.field public static final CALLLOG_TYPE_MISSED:I = 0x3

.field public static final CALLLOG_TYPE_OUTGOING:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x8f47d1e62fd1634L


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog$1;

    invoke-direct {v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog$1;-><init>()V

    sput-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlyCallLog{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 159
    iget p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;->time:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
