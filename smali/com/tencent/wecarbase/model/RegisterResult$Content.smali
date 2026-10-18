.class Lcom/tencent/wecarbase/model/RegisterResult$Content;
.super Ljava/lang/Object;
.source "RegisterResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/model/RegisterResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Content"
.end annotation


# instance fields
.field private mDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field private mDeviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devicetype"
    .end annotation
.end field

.field private mNonce:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonce"
    .end annotation
.end field

.field private mSessionKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sKey"
    .end annotation
.end field

.field private mUUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field private mWecarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commonId"
    .end annotation
.end field

.field private mWecarKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wecarKey"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mWecarId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/model/RegisterResult$Content;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mNonce:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mWecarKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/model/RegisterResult$Content;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mDeviceType:I

    return p0
.end method

.method static synthetic access$600(Lcom/tencent/wecarbase/model/RegisterResult$Content;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecarbase/model/RegisterResult$Content;->mUUID:Ljava/lang/String;

    return-object p0
.end method
