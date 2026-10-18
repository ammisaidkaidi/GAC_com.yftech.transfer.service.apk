.class public abstract Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;
.super Ljava/lang/Object;
.source "BaseMediaBean.java"


# static fields
.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_NEWS:Ljava/lang/String; = "news"

.field public static final TYPE_RADIO:Ljava/lang/String; = "radio"

.field public static final TYPE_SONG:Ljava/lang/String; = "song"


# instance fields
.field private itemAuthor:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemImageUrl:Ljava/lang/String;

.field private itemIndex:I

.field private itemNextUid:I

.field private itemRead:Z

.field private itemTitle:Ljava/lang/String;

.field private itemTotal:I

.field protected itemType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemAuthor()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    return-object p0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getItemIndex()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemIndex:I

    return p0
.end method

.method public getItemNextUid()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemNextUid:I

    return p0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getItemTotal()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemTotal:I

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public isItemOver()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isItemRead()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemRead:Z

    return p0
.end method

.method public setItemAuthor(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemIndex:I

    return-void
.end method

.method public setItemNextUid(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemNextUid:I

    return-void
.end method

.method public setItemOver(Z)V
    .locals 0

    return-void
.end method

.method public setItemRead(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemRead:Z

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method public setItemTotal(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemTotal:I

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    return-void
.end method
