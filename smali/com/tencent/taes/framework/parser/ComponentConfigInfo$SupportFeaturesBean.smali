.class public Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;
.super Ljava/lang/Object;
.source "ComponentConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/parser/ComponentConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportFeaturesBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private api:Ljava/lang/String;

.field private apiImpl:Ljava/lang/String;

.field private binderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    check-cast p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;

    .line 201
    iget-object v2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    .line 202
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    .line 203
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getApi()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    return-object p0
.end method

.method public getApiImpl()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    return-object p0
.end method

.method public getBinderName()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 208
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    return-void
.end method

.method public setApiImpl(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    return-void
.end method

.method public setBinderName(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportFeaturesBean{api=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiImpl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", binderName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 161
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->api:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->apiImpl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/tencent/taes/framework/parser/ComponentConfigInfo$SupportFeaturesBean;->binderName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
