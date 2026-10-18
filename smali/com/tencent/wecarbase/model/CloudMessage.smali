.class public Lcom/tencent/wecarbase/model/CloudMessage;
.super Ljava/lang/Object;
.source "CloudMessage.java"

# interfaces
.implements Lcom/tencent/wecarbase/model/IMessage;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/model/CloudMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final END_LENGTH:I = 0x9

.field private static final HEADER_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CloudMessage"

.field public static final TYPE_ACK:I = 0xff

.field public static final TYPE_AUTH:I = 0x1

.field public static final TYPE_CARINFO:I = 0x4

.field public static final TYPE_CONFIG:I = 0xfd

.field public static final TYPE_HEARTBEAT:I = 0x0

.field public static final TYPE_NOTIFY:I = 0xfe

.field public static final TYPE_NOTIFY_ACK:I = 0x2

.field public static final TYPE_RECORD:I = 0x3

.field private static final VERSION:I = 0x2


# instance fields
.field private checksum:B

.field private cloudVersion:I

.field private crypt:I

.field private data:[B

.field private length:I

.field private timestamp:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/tencent/wecarbase/model/CloudMessage$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/CloudMessage$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/model/CloudMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    return-void
.end method

.method private static checkValid([BI)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarbase/model/CloudException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 80
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    if-eq p1, p0, :cond_0

    .line 82
    sget-object v0, Lcom/tencent/wecarbase/model/CloudMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length not match, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createHeartBeatMessage()Lcom/tencent/wecarbase/model/CloudMessage;
    .locals 3

    .line 64
    new-instance v0, Lcom/tencent/wecarbase/model/CloudMessage;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/CloudMessage;-><init>()V

    const/4 v1, 0x0

    .line 65
    iput v1, v0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    return-object v0
.end method

.method public static createMessage(I[BJ)Lcom/tencent/wecarbase/model/CloudMessage;
    .locals 1

    .line 71
    new-instance v0, Lcom/tencent/wecarbase/model/CloudMessage;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/CloudMessage;-><init>()V

    .line 72
    iput p0, v0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    .line 73
    iput-object p1, v0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    .line 74
    array-length p0, p1

    iput p0, v0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    .line 75
    iput-wide p2, v0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChecksum()B
    .locals 0

    .line 206
    iget-byte p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    return p0
.end method

.method public getCloudVersion()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    return p0
.end method

.method public getCrypt()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    return p0
.end method

.method public getData()[B
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    return p0
.end method

.method public parse([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarbase/model/CloudException;
        }
    .end annotation

    .line 41
    invoke-static {p1, p3}, Lcom/tencent/wecarbase/model/CloudMessage;->checkValid([BI)Z

    move-result p2

    if-nez p2, :cond_0

    .line 42
    sget-object p0, Lcom/tencent/wecarbase/model/CloudMessage;->TAG:Ljava/lang/String;

    const-string p1, "message not valid"

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 46
    aget-byte p3, p1, p2

    invoke-static {p3}, Lcom/tencent/wecarbase/utils/ByteUtil;->byteToInt(B)I

    move-result p3

    iput p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    const/4 p3, 0x1

    .line 47
    aget-byte p3, p1, p3

    invoke-static {p3}, Lcom/tencent/wecarbase/utils/ByteUtil;->byteToInt(B)I

    move-result p3

    iput p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    const/4 p3, 0x4

    .line 48
    aget-byte p3, p1, p3

    invoke-static {p3}, Lcom/tencent/wecarbase/utils/ByteUtil;->byteToInt(B)I

    move-result p3

    iput p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    const/4 p3, 0x2

    .line 50
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    const/4 v0, 0x5

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x9

    iput p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    .line 51
    iget p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    .line 52
    iget-object p3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    iget v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    invoke-static {p1, v0, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/ByteUtil;->bytesToLong([BI)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    .line 56
    iget p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    add-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    aget-byte p0, p1, p0

    return-void
.end method

.method public setChecksum(B)V
    .locals 0

    .line 210
    iput-byte p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    return-void
.end method

.method public setCloudVersion(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    return-void
.end method

.method public setCrypt(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 202
    iput-wide p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    return-void
.end method

.method public toBytes()[B
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, 0xe

    .line 92
    new-array v2, v0, [B

    .line 95
    iget v3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v3, 0x2

    .line 96
    iget v4, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v4, 0x3

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 97
    aput-byte v5, v2, v3

    const/4 v3, 0x4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 98
    aput-byte v0, v2, v4

    const/4 v0, 0x5

    .line 99
    iget v4, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 101
    iget-object v3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    iget-object v4, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    array-length v4, v4

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 106
    :cond_1
    iget-wide v3, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/ByteUtil;->longToBytes(J)[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v0, 0x1

    .line 109
    invoke-static {v2, v1, v3}, Lcom/tencent/wecarbase/utils/CRC8;->calc([BII)B

    move-result v1

    iput-byte v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    .line 110
    iget-byte p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    aput-byte p0, v2, v0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudMessage{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", crypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", checksum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 135
    iget p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->cloudVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->crypt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object p2, p0, Lcom/tencent/wecarbase/model/CloudMessage;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-byte p0, p0, Lcom/tencent/wecarbase/model/CloudMessage;->checksum:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
