.class public Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;
.super Ljava/lang/Object;
.source "GnssSatellite.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field public azimuth:F

.field public elevation:F

.field private mUsedInFix:Z

.field private prn:I

.field public snr:F

.field private system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    .line 77
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->setSystem(Ljava/lang/String;)V

    return-void
.end method

.method private setSystem(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x842

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8da

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8e5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8e9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa29

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa4f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "QZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "GP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "GL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "GA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "BD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x5

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 109
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->UNKNOWN:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 105
    :pswitch_0
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->BEIDOU:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 101
    :pswitch_1
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->SBS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 97
    :pswitch_2
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GALILEO:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 93
    :pswitch_3
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->QZSS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 89
    :pswitch_4
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GLONASS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    goto :goto_2

    .line 85
    :pswitch_5
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GPS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)I
    .locals 0

    .line 15
    iget p1, p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->compareTo(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)I

    move-result p0

    return p0
.end method

.method public copy()Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;
    .locals 2

    .line 27
    new-instance v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;-><init>()V

    .line 28
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    .line 29
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    .line 30
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    iput v1, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    .line 31
    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    iput v1, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    .line 32
    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->mUsedInFix:Z

    iput-boolean v1, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->mUsedInFix:Z

    .line 33
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    iput-object p0, v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 136
    :cond_1
    check-cast p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    .line 137
    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getPrn()I

    move-result v1

    iget v3, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getSystemPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getSystemPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAzimuth()F
    .locals 0

    .line 236
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    return p0
.end method

.method public getElevation()F
    .locals 0

    .line 229
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 211
    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$1;->$SwitchMap$com$tencent$taes$remote$api$location$nmea$GnssSatellite$SatelliteSystem:[I

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    invoke-virtual {v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 222
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    goto :goto_0

    .line 216
    :pswitch_0
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    add-int/lit16 v0, v0, -0xc0

    goto :goto_0

    .line 213
    :pswitch_1
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    add-int/lit8 v0, v0, -0x40

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    add-int/lit16 v0, v0, -0xc8

    .line 225
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getSystemPrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrn()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    return p0
.end method

.method public getSnr()F
    .locals 0

    .line 243
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    return p0
.end method

.method public getSystemPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 167
    invoke-virtual {p0, v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->getSystemPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemPrefix(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 171
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$1;->$SwitchMap$com$tencent$taes$remote$api$location$nmea$GnssSatellite$SatelliteSystem:[I

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UN"

    return-object p0

    :pswitch_0
    const-string p0, "SB"

    return-object p0

    :pswitch_1
    const-string p0, "BD"

    return-object p0

    :pswitch_2
    const-string p0, "GA"

    return-object p0

    :pswitch_3
    const-string p0, "QZ"

    return-object p0

    :pswitch_4
    const-string p0, "GL"

    return-object p0

    :pswitch_5
    const-string p0, "GP"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 188
    sget-object p1, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$1;->$SwitchMap$com$tencent$taes$remote$api$location$nmea$GnssSatellite$SatelliteSystem:[I

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_1

    const-string p0, "U"

    return-object p0

    :pswitch_6
    const-string p0, "S"

    return-object p0

    :pswitch_7
    const-string p0, "B"

    return-object p0

    :pswitch_8
    const-string p0, "E"

    return-object p0

    :pswitch_9
    const-string p0, "Q"

    return-object p0

    :pswitch_a
    const-string p0, "L"

    return-object p0

    :pswitch_b
    const-string p0, "G"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->ordinal()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v0, p0

    return v0
.end method

.method public isBeidou()Z
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->BEIDOU:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGalileo()Z
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GALILEO:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGlonass()Z
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GLONASS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGps()Z
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->GPS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQzss()Z
    .locals 1

    .line 250
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->QZSS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSBS()Z
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    sget-object v0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;->SBS:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isprn(I)Z
    .locals 0

    .line 119
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setAzimuth(F)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    return-void
.end method

.method setElevation(F)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    return-void
.end method

.method setSnr(F)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    return-void
.end method

.method setStatus(FFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 144
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 146
    iput v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    goto :goto_0

    .line 148
    :cond_1
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    :goto_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    .line 151
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43b40000    # 360.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 153
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    goto :goto_1

    .line 155
    :cond_3
    iput p2, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    :goto_1
    cmpg-float p1, p3, v0

    if-gez p1, :cond_4

    .line 158
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    goto :goto_2

    :cond_4
    const/high16 p1, 0x42c60000    # 99.0f

    cmpl-float p2, p3, p1

    if-lez p2, :cond_5

    .line 160
    iput p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    goto :goto_2

    .line 162
    :cond_5
    iput p3, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    :goto_2
    return-void
.end method

.method public setUsedInFix(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->mUsedInFix:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[system:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->system:Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite$SatelliteSystem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",prn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->prn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",snr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->snr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",elevation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->elevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",azimuth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->azimuth:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usedInFix()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->mUsedInFix:Z

    return p0
.end method
