.class Lcom/tencent/wecarbase/model/LoginResult$Content;
.super Ljava/lang/Object;
.source "LoginResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/model/LoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Content"
.end annotation


# instance fields
.field private mNonce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonce"
    .end annotation
.end field

.field private mSessionKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sKey"
    .end annotation
.end field

.field private mWecarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wecarId"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult$Content;->mWecarId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult$Content;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/model/LoginResult$Content;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/wecarbase/model/LoginResult$Content;->mNonce:Ljava/lang/String;

    return-object p0
.end method
