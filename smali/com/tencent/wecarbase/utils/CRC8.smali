.class public final Lcom/tencent/wecarbase/utils/CRC8;
.super Ljava/lang/Object;
.source "CRC8.java"


# static fields
.field private static final CRC8_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    .line 8
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/wecarbase/utils/CRC8;->CRC8_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x5et
        -0x44t
        -0x1et
        0x61t
        0x3ft
        -0x23t
        -0x7dt
        -0x3et
        -0x64t
        0x7et
        0x20t
        -0x5dt
        -0x3t
        0x1ft
        0x41t
        -0x63t
        -0x3dt
        0x21t
        0x7ft
        -0x4t
        -0x5et
        0x40t
        0x1et
        0x5ft
        0x1t
        -0x1dt
        -0x43t
        0x3et
        0x60t
        -0x7et
        -0x24t
        0x23t
        0x7dt
        -0x61t
        -0x3ft
        0x42t
        0x1ct
        -0x2t
        -0x60t
        -0x1ft
        -0x41t
        0x5dt
        0x3t
        -0x80t
        -0x22t
        0x3ct
        0x62t
        -0x42t
        -0x20t
        0x2t
        0x5ct
        -0x21t
        -0x7ft
        0x63t
        0x3dt
        0x7ct
        0x22t
        -0x40t
        -0x62t
        0x1dt
        0x43t
        -0x5ft
        -0x1t
        0x46t
        0x18t
        -0x6t
        -0x5ct
        0x27t
        0x79t
        -0x65t
        -0x3bt
        -0x7ct
        -0x26t
        0x38t
        0x66t
        -0x1bt
        -0x45t
        0x59t
        0x7t
        -0x25t
        -0x7bt
        0x67t
        0x39t
        -0x46t
        -0x1ct
        0x6t
        0x58t
        0x19t
        0x47t
        -0x5bt
        -0x5t
        0x78t
        0x26t
        -0x3ct
        -0x66t
        0x65t
        0x3bt
        -0x27t
        -0x79t
        0x4t
        0x5at
        -0x48t
        -0x1at
        -0x59t
        -0x7t
        0x1bt
        0x45t
        -0x3at
        -0x68t
        0x7at
        0x24t
        -0x8t
        -0x5at
        0x44t
        0x1at
        -0x67t
        -0x39t
        0x25t
        0x7bt
        0x3at
        0x64t
        -0x7at
        -0x28t
        0x5bt
        0x5t
        -0x19t
        -0x47t
        -0x74t
        -0x2et
        0x30t
        0x6et
        -0x13t
        -0x4dt
        0x51t
        0xft
        0x4et
        0x10t
        -0xet
        -0x54t
        0x2ft
        0x71t
        -0x6dt
        -0x33t
        0x11t
        0x4ft
        -0x53t
        -0xdt
        0x70t
        0x2et
        -0x34t
        -0x6et
        -0x2dt
        -0x73t
        0x6ft
        0x31t
        -0x4et
        -0x14t
        0xet
        0x50t
        -0x51t
        -0xft
        0x13t
        0x4dt
        -0x32t
        -0x70t
        0x72t
        0x2ct
        0x6dt
        0x33t
        -0x2ft
        -0x71t
        0xct
        0x52t
        -0x50t
        -0x12t
        0x32t
        0x6ct
        -0x72t
        -0x30t
        0x53t
        0xdt
        -0x11t
        -0x4ft
        -0x10t
        -0x52t
        0x4ct
        0x12t
        -0x6ft
        -0x31t
        0x2dt
        0x73t
        -0x36t
        -0x6ct
        0x76t
        0x28t
        -0x55t
        -0xbt
        0x17t
        0x49t
        0x8t
        0x56t
        -0x4ct
        -0x16t
        0x69t
        0x37t
        -0x2bt
        -0x75t
        0x57t
        0x9t
        -0x15t
        -0x4bt
        0x36t
        0x68t
        -0x76t
        -0x2ct
        -0x6bt
        -0x35t
        0x29t
        0x77t
        -0xct
        -0x56t
        0x48t
        0x16t
        -0x17t
        -0x49t
        0x55t
        0xbt
        -0x78t
        -0x2at
        0x34t
        0x6at
        0x2bt
        0x75t
        -0x69t
        -0x37t
        0x4at
        0x14t
        -0xat
        -0x58t
        0x74t
        0x2at
        -0x38t
        -0x6at
        0x15t
        0x4bt
        -0x57t
        -0x9t
        -0x4at
        -0x18t
        0xat
        0x54t
        -0x29t
        -0x77t
        0x6bt
        0x35t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calc([BII)B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 84
    sget-object v2, Lcom/tencent/wecarbase/utils/CRC8;->CRC8_TABLE:[B

    add-int v3, v0, p1

    aget-byte v3, p0, v3

    xor-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static update(BB)B
    .locals 1

    .line 56
    sget-object v0, Lcom/tencent/wecarbase/utils/CRC8;->CRC8_TABLE:[B

    xor-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public static updateBlock([BIB)B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 69
    sget-object v1, Lcom/tencent/wecarbase/utils/CRC8;->CRC8_TABLE:[B

    aget-byte v2, p0, v0

    xor-int/2addr p2, v2

    aget-byte p2, v1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method
