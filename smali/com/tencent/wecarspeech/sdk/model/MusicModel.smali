.class public Lcom/tencent/wecarspeech/sdk/model/MusicModel;
.super Ljava/lang/Object;


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->artist:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/model/MusicModel;->album:Ljava/lang/String;

    return-void
.end method
