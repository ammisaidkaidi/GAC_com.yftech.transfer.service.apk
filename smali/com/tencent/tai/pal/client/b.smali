.class Lcom/tencent/tai/pal/client/b;
.super Ljava/lang/Object;
.source "SupportUtils.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    .line 24
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALAudioManager;

    const-class v2, Lcom/tencent/tai/pal/audio/AudioAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALBluetoothManager;

    const-class v2, Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager;

    const-class v2, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALExtensibleManager;

    const-class v2, Lcom/tencent/tai/pal/extensible/ExtensibleAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALInsManager;

    const-class v2, Lcom/tencent/tai/pal/ins/InsAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALNetworkManager;

    const-class v2, Lcom/tencent/tai/pal/network/NetworkAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALPowerManager;

    const-class v2, Lcom/tencent/tai/pal/power/PowerAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALScreenManager;

    const-class v2, Lcom/tencent/tai/pal/screen/ScreenAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALTelephoneManager;

    const-class v2, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager;

    const-class v2, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    const-class v1, Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager;

    const-class v2, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/tencent/tai/pal/PlatformSupportInfo;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/tai/pal/PlatformSupportInfo;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/tencent/tai/pal/client/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/PlatformSupportInfo;->isAdapterSupported(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
