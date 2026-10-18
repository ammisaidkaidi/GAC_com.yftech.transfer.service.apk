.class public Lcom/tencent/wecarspeech/clientsdk/model/TextItem;
.super Ljava/lang/Object;
.source "TextItem.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE_FLIGHT_NO:Ljava/lang/String; = "FLIGHT_NO"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final TYPE_NAME:Ljava/lang/String; = "NAME"

.field public static final TYPE_POI:Ljava/lang/String; = "POI"

.field public static final TYPE_SONG:Ljava/lang/String; = "SONG"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private txt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txt"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;->txt:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTxt()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;->txt:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/TextItem;->type:Ljava/lang/String;

    return-object p0
.end method
