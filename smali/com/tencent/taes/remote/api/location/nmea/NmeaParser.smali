.class public Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;
.super Ljava/lang/Object;
.source "NmeaParser.java"


# static fields
.field private static final GPS_FIXED:I = 0x3

.field private static final GPS_NONE:I = 0x0

.field private static final GPS_NOTIFY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NMEA"


# instance fields
.field private activeSatellites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentGpsStatus:I

.field private mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

.field private mGpsStatusListener:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

.field private mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

.field private mShouldParseStatellite:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->activeSatellites:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mShouldParseStatellite:Z

    .line 47
    new-instance v0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mShouldParseStatellite:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;)Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    return-object p0
.end method

.method private parase(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0x842

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8e5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8e9

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "GP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "GL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string p0, "BD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p0, 0x10

    if-ge p2, p0, :cond_7

    add-int/lit16 p2, p2, 0xc8

    goto :goto_2

    :pswitch_1
    const/16 p0, 0xc1

    if-ne p2, p0, :cond_4

    const-string p1, "QZ"

    goto :goto_2

    :cond_4
    const/16 p0, 0xc8

    if-ge p0, p2, :cond_5

    const/16 p0, 0xd3

    if-ge p2, p0, :cond_5

    const-string p1, "BD"

    goto :goto_2

    :cond_5
    const/16 p0, 0x20

    if-ge p0, p2, :cond_6

    const/16 p0, 0x48

    if-ge p2, p0, :cond_6

    const-string p1, "SB"

    goto :goto_2

    :cond_6
    const/16 p0, 0x77

    if-ge p0, p2, :cond_7

    const/16 p0, 0x8b

    if-ge p2, p0, :cond_7

    const-string p1, "SB"

    goto :goto_2

    :pswitch_2
    const/16 p0, 0x40

    if-ge p2, p0, :cond_7

    const-string p1, "GL"

    .line 575
    :cond_7
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parse(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_b

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x3

    .line 155
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x11361

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x114d5

    if-eq v3, v4, :cond_3

    const v4, 0x114ea

    if-eq v3, v4, :cond_2

    const v4, 0x13d68

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "RMC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_1

    :cond_2
    const-string v3, "GSV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v3, "GSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const-string v3, "GGA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 199
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parseGSV(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parseGSA(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parseRMC()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 179
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    .line 180
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

    if-eqz p1, :cond_6

    .line 181
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->getFixLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-interface {p1, v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;->onNmeaLocationChanged(Landroid/location/Location;Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;)V

    .line 183
    :cond_6
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p0, v5}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setFixed(Z)V

    goto :goto_4

    .line 185
    :cond_7
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    .line 186
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

    if-eqz p1, :cond_8

    .line 187
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->getEmptyLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-interface {p1, v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;->onNmeaLocationChanged(Landroid/location/Location;Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;)V

    .line 189
    :cond_8
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p0, v5}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setFixed(Z)V

    goto :goto_4

    .line 158
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parseGGA()Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_9

    .line 160
    iput v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    goto :goto_2

    .line 162
    :cond_9
    iput v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    .line 164
    :goto_2
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->copySatellite()Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    .line 165
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGpsStatusListener:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;

    if-eqz p1, :cond_a

    .line 167
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGpsStatusListener:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-interface {p1, v1, v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;->onGnssStatusChanged(ILcom/tencent/taes/remote/api/location/nmea/GnssStatus;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->clearSatellitesList()V

    .line 173
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->clearUsedSatellite()V

    :goto_4
    return-void

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseGGA()Z
    .locals 12

    .line 246
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 254
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 268
    iget-object v5, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 270
    iget-object v6, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    .line 272
    iget-object v7, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    .line 273
    iget-object v8, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    .line 275
    iget-object v9, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    .line 276
    iget-object v10, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v10}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v10, ""

    .line 281
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "0"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 284
    iget-object v10, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v11, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v11, v4}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setQuality(I)V

    if-eqz v0, :cond_0

    const-string v4, ""

    .line 285
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v10, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v10, v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaLatitude(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setLatitude(D)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, ""

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaLongitude(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setLongitude(D)V

    :cond_1
    if-eqz v6, :cond_2

    const-string v0, ""

    .line 291
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v6}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setHDOP(F)V

    :cond_2
    if-eqz v7, :cond_3

    const-string v0, ""

    .line 294
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v7, v8}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaAlt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setAltitude(D)V

    :cond_3
    if-eqz v5, :cond_4

    const-string v0, ""

    .line 297
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v5}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setNbSat(I)V

    :cond_4
    if-eqz v9, :cond_5

    const-string v0, ""

    .line 300
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 301
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {p0, v9}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setHeight(D)V

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    const-string p0, "0"

    .line 304
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v0
.end method

.method private parseGSA(Ljava/lang/String;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v1, v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setMode(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parase(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->addUsedSatellite(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setPDOP(F)V

    .line 419
    iget-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setHDOP(F)V

    .line 420
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setVDOP(F)V

    :cond_2
    return-void
.end method

.method private parseGSV(Ljava/lang/String;)V
    .locals 8

    .line 425
    iget-boolean v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mShouldParseStatellite:Z

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 518
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    .line 520
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 521
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 522
    iget-object v4, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 523
    iget-object v5, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 524
    iget-object v6, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v6, v5}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x42820000    # 65.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    goto :goto_2

    .line 528
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 529
    invoke-direct {p0, p1, v2}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->parase(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    .line 530
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 531
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 532
    new-instance v7, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;

    invoke-direct {v7, v6, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;-><init>(Ljava/lang/String;I)V

    .line 533
    iget-object v6, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v6, v3}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v6, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    .line 534
    invoke-virtual {v6, v4}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result v4

    .line 533
    invoke-virtual {v7, v3, v4, v5}, Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;->setStatus(FFF)V

    .line 536
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v3, v7}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->addSatellite(Lcom/tencent/taes/remote/api/location/nmea/GnssSatellite;)V

    .line 537
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->activeSatellites:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private parseRMC()Z
    .locals 10

    .line 331
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 337
    iget-object v3, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 341
    iget-object v5, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 343
    iget-object v6, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    .line 345
    iget-object v7, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    .line 347
    iget-object v8, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    .line 349
    iget-object v9, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 351
    iget-object v9, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mNmeaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 354
    iget-object v9, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v9, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setMode(Ljava/lang/String;)V

    .line 355
    iget-object v9, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v9, v8, v0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 356
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {v0, v8, v9}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setFixTimestamp(J)V

    if-eqz v1, :cond_4

    const-string v0, ""

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_0

    const-string v0, ""

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaLatitude(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setLatitude(D)V

    :cond_0
    if-eqz v4, :cond_1

    const-string v0, ""

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {v1, v4, v5}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaLongitude(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setLongitude(D)V

    :cond_1
    if-eqz v6, :cond_2

    const-string v0, ""

    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    const-string v2, "N"

    invoke-virtual {v1, v6, v2}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaSpeed(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setSpeed(F)V

    :cond_2
    if-eqz v7, :cond_3

    const-string v0, ""

    .line 367
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mParserUtil:Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;

    invoke-virtual {p0, v7}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParserUtil;->parseNmeaFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setBearing(F)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "V"

    .line 371
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public getGnssStatus()Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    return-object p0
.end method

.method public hasGPSFixed()Z
    .locals 1

    .line 208
    iget p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mCurrentGpsStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseNmea(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 83
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setGnssStatusListener(Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGpsStatusListener:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus$Listener;

    return-void
.end method

.method public setLocationListener(Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mLocationListener:Lcom/tencent/taes/remote/api/location/nmea/NmeaLocationListener;

    return-void
.end method

.method public setParseStatellite(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$2;-><init>(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mShouldParseStatellite:Z

    .line 108
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    if-eqz v0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setShouldCopySatelliteList(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NMEA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NMEA"

    const-string v1, "nmea handler looper create fail"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->start(Landroid/os/Looper;)V

    return-void
.end method

.method public start(Landroid/os/Looper;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    .line 63
    iget-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mGnssStatus:Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;

    iget-boolean v1, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mShouldParseStatellite:Z

    invoke-virtual {v0, v1}, Lcom/tencent/taes/remote/api/location/nmea/GnssStatus;->setShouldCopySatelliteList(Z)V

    .line 64
    new-instance v0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser$1;-><init>(Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/location/nmea/NmeaParser;->mHandler:Landroid/os/Handler;

    return-void
.end method
