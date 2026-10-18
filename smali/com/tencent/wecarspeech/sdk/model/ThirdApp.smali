.class public Lcom/tencent/wecarspeech/sdk/model/ThirdApp;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;->a:Ljava/lang/String;

    return-object p0
.end method
