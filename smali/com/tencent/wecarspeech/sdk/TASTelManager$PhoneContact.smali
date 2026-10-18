.class public Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneContact"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->b:Ljava/lang/String;

    return-object p0
.end method
