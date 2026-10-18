.class Lcom/tencent/tai/pal/service/b;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/service/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tai/pal/service/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/tai/pal/platform/adapter/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/tai/pal/service/b;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/service/b;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tai/pal/service/b$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/b;-><init>()V

    return-void
.end method

.method static a()Lcom/tencent/tai/pal/service/b;
    .locals 1

    .line 55
    invoke-static {}, Lcom/tencent/tai/pal/service/b$a;->a()Lcom/tencent/tai/pal/service/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/tencent/tai/pal/service/a;)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceRegistry.registerService serviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/tencent/tai/pal/service/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b(Ljava/lang/String;)Lcom/tencent/tai/pal/service/a;
    .locals 1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.tencent.tai.pal.VEHICLE_BASIC_INFO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.tencent.tai.pal.NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "com.tencent.tai.pal.INS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "com.tencent.tai.pal.BLUETOOTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "com.tencent.tai.pal.SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "com.tencent.tai.pal.VEHICLE_RICH_INFO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "com.tencent.tai.pal.TELEPHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "com.tencent.tai.pal.EXTENSIBLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "com.tencent.tai.pal.POWER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "com.tencent.tai.pal.INPUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_a
    const-string v0, "com.tencent.tai.pal.AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :pswitch_0
    new-instance p1, Lcom/tencent/tai/pal/extensible/a;

    invoke-direct {p1}, Lcom/tencent/tai/pal/extensible/a;-><init>()V

    .line 116
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/extensible/a;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 111
    :pswitch_1
    new-instance p1, Lcom/tencent/tai/pal/vehiclerichinfo/d;

    invoke-direct {p1}, Lcom/tencent/tai/pal/vehiclerichinfo/d;-><init>()V

    .line 112
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/vehiclerichinfo/d;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 107
    :pswitch_2
    new-instance p1, Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-direct {p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;-><init>()V

    .line 108
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 103
    :pswitch_3
    new-instance p1, Lcom/tencent/tai/pal/telephone/d;

    invoke-direct {p1}, Lcom/tencent/tai/pal/telephone/d;-><init>()V

    .line 104
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/telephone/d;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 99
    :pswitch_4
    new-instance p1, Lcom/tencent/tai/pal/screen/b;

    invoke-direct {p1}, Lcom/tencent/tai/pal/screen/b;-><init>()V

    .line 100
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/screen/b;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 95
    :pswitch_5
    new-instance p1, Lcom/tencent/tai/pal/power/c;

    invoke-direct {p1}, Lcom/tencent/tai/pal/power/c;-><init>()V

    .line 96
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/power/PowerAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/power/c;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 91
    :pswitch_6
    new-instance p1, Lcom/tencent/tai/pal/network/e;

    invoke-direct {p1}, Lcom/tencent/tai/pal/network/e;-><init>()V

    .line 92
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/network/e;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 87
    :pswitch_7
    new-instance p1, Lcom/tencent/tai/pal/ins/c;

    invoke-direct {p1}, Lcom/tencent/tai/pal/ins/c;-><init>()V

    .line 88
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/ins/InsAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/ins/c;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 83
    :pswitch_8
    new-instance p1, Lcom/tencent/tai/pal/input/b;

    invoke-direct {p1}, Lcom/tencent/tai/pal/input/b;-><init>()V

    .line 84
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 79
    :pswitch_9
    new-instance p1, Lcom/tencent/tai/pal/bluetooth/a;

    invoke-direct {p1}, Lcom/tencent/tai/pal/bluetooth/a;-><init>()V

    .line 80
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/bluetooth/a;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    .line 75
    :pswitch_a
    new-instance p1, Lcom/tencent/tai/pal/audio/AudioService;

    invoke-direct {p1}, Lcom/tencent/tai/pal/audio/AudioService;-><init>()V

    .line 76
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    const-class v0, Lcom/tencent/tai/pal/audio/AudioAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Ljava/lang/Class;)Lcom/tencent/tai/pal/service/BaseAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/tai/pal/audio/AudioService;->a(Lcom/tencent/tai/pal/service/BaseAdapter;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7e718ac5 -> :sswitch_a
        -0x7e03ced1 -> :sswitch_9
        -0x7da09d96 -> :sswitch_8
        -0x71b37f6a -> :sswitch_7
        -0x5de4b517 -> :sswitch_6
        -0x43ecb93d -> :sswitch_5
        -0x31ffec79 -> :sswitch_4
        -0x1738a66d -> :sswitch_3
        -0x130b756d -> :sswitch_2
        -0x12ee95ad -> :sswitch_1
        0x64003bed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method a(Ljava/lang/String;)Lcom/tencent/tai/pal/service/a;
    .locals 3

    const-string v0, "PAL_SDK"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceRegistry.getService serviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/tencent/tai/pal/service/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/service/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/service/a;

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/service/b;->b(Ljava/lang/String;)Lcom/tencent/tai/pal/service/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/tencent/tai/pal/service/b;->a(Ljava/lang/String;Lcom/tencent/tai/pal/service/a;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p0

    .line 141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/tai/pal/platform/adapter/a;

    invoke-direct {v0}, Lcom/tencent/tai/pal/platform/adapter/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    .line 61
    iget-object v0, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/tai/pal/platform/adapter/a;->a(Landroid/content/Context;)V

    .line 62
    iget-object p1, p0, Lcom/tencent/tai/pal/service/b;->d:Lcom/tencent/tai/pal/platform/adapter/a;

    invoke-virtual {p1}, Lcom/tencent/tai/pal/platform/adapter/a;->a()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tai/pal/PlatformSupportInfo;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/service/b;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/tencent/tai/pal/service/b;->c:Ljava/lang/String;

    return-object p0
.end method
