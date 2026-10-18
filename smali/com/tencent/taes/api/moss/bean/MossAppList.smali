.class public Lcom/tencent/taes/api/moss/bean/MossAppList;
.super Ljava/lang/Object;
.source "MossAppList.java"


# instance fields
.field private appletsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bgImage:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppletsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->appletsList:Ljava/util/List;

    return-object p0
.end method

.method public getBgImage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->bgImage:Ljava/lang/String;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppletsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->appletsList:Ljava/util/List;

    return-void
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->bgImage:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->typeName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MossAppList{appletsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->appletsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bgImage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/api/moss/bean/MossAppList;->bgImage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
