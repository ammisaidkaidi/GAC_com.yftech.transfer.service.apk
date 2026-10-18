.class public Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;
.super Ljava/lang/Object;
.source "FlyContact.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;",
            ">;"
        }
    .end annotation
.end field

.field private static NUMBER_TYPE_BBS:Ljava/lang/String; = "NUMBER_TYPE_BBS"

.field private static NUMBER_TYPE_CAR:Ljava/lang/String; = "NUMBER_TYPE_CAR"

.field public static NUMBER_TYPE_CELL:Ljava/lang/String; = "NUMBER_TYPE_CELL"

.field private static NUMBER_TYPE_FAX:Ljava/lang/String; = "NUMBER_TYPE_FAX"

.field public static NUMBER_TYPE_HOME:Ljava/lang/String; = "NUMBER_TYPE_HOME"

.field private static NUMBER_TYPE_ISDN:Ljava/lang/String; = "NUMBER_TYPE_ISDN"

.field private static NUMBER_TYPE_MODEM:Ljava/lang/String; = "NUMBER_TYPE_MODEM"

.field private static NUMBER_TYPE_MSG:Ljava/lang/String; = "NUMBER_TYPE_MSG"

.field public static NUMBER_TYPE_OTHER:Ljava/lang/String; = "NUMBER_TYPE_OTHER"

.field private static NUMBER_TYPE_PAGER:Ljava/lang/String; = "NUMBER_TYPE_PAGER"

.field private static NUMBER_TYPE_PCS:Ljava/lang/String; = "NUMBER_TYPE_PCS"

.field private static NUMBER_TYPE_PREF:Ljava/lang/String; = "NUMBER_TYPE_PREF"

.field private static NUMBER_TYPE_VIDEO:Ljava/lang/String; = "NUMBER_TYPE_VIDEO"

.field private static NUMBER_TYPE_VOICE:Ljava/lang/String; = "NUMBER_TYPE_VOICE"

.field public static NUMBER_TYPE_WORK:Ljava/lang/String; = "NUMBER_TYPE_WORK"

.field private static final serialVersionUID:J = 0x4ed2252e79009175L


# instance fields
.field private name:Ljava/lang/String;

.field private numberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact$1;

    invoke-direct {v0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact$1;-><init>()V

    sput-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    .line 110
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCellNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_CELL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_HOME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberList()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    return-object p0
.end method

.method public getOtherNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_OTHER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_WORK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumberList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 209
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v1, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_CELL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v2, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_HOME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 213
    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v3, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_WORK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 214
    iget-object v3, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    sget-object v4, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->NUMBER_TYPE_OTHER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 222
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    .line 223
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 229
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 233
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 235
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 239
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 241
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlyContact   >>   Contact : name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " || cellNumber = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " || homeNumber = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " || workNumber = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " || otherNumber = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "number is null"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 257
    iget-object p2, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;->numberList:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
