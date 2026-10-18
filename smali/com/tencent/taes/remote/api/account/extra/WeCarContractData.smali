.class public interface abstract Lcom/tencent/taes/remote/api/account/extra/WeCarContractData;
.super Ljava/lang/Object;
.source "WeCarContractData.java"


# static fields
.field public static final ALL_SERVICE_TYPES:Ljava/lang/String;

.field public static final NETWORK_TYPE_MOBILE:I = 0x2

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final WECAR_ALL:I = 0x0

.field public static final WECAR_AR_NAVI:I = 0x9

.field public static final WECAR_FLOW:I = 0x3

.field public static final WECAR_GAMES:I = 0xa

.field public static final WECAR_KARAOKE:I = 0x8

.field public static final WECAR_MUSIC:I = 0x4

.field public static final WECAR_NAVI:I = 0x1

.field public static final WECAR_PARKING:I = 0x5

.field public static final WECAR_RADIO:I = 0x7

.field public static final WECAR_SPEECH:I = 0x2

.field public static final WECAR_WECHAT:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d"

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 43
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/taes/remote/api/account/extra/WeCarContractData;->ALL_SERVICE_TYPES:Ljava/lang/String;

    return-void
.end method
