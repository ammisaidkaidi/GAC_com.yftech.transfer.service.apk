.class public Lcom/tencent/wecarbase/config/def/ServiceConfig;
.super Ljava/lang/Object;
.source "ServiceConfig.java"

# interfaces
.implements Lcom/tencent/wecarbase/config/IServiceConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;
    }
.end annotation


# static fields
.field private static final APPItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOST_NAME:Ljava/lang/String; = "hostName"

.field public static final PKG_WECAR_FLOW:Ljava/lang/String; = "com.tencent.wecarflow"

.field public static final PKG_WECAR_LINE:Ljava/lang/String; = "com.tencent.wecarprofile"

.field public static final PKG_WECAR_MUSIC:Ljava/lang/String; = "com.tencent.wecarmusic"

.field public static final PKG_WECAR_MUSIC_CP:Ljava/lang/String; = "com.tencent.wecarmusicp"

.field public static final PKG_WECAR_NAVI:Ljava/lang/String; = "com.tencent.wecarnavi"

.field public static final PKG_WECAR_NEWS:Ljava/lang/String; = "com.tencent.wecarnews"

.field public static final PKG_WECAR_SPEECH:Ljava/lang/String; = "com.tencent.wecarspeech"

.field public static final PKG_WECAR_TAI_SERVICE:Ljava/lang/String; = "com.tencent.taiservice"

.field private static final TAG:Ljava/lang/String; = "ServiceConfig"

.field private static final sAppTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sAppTypeMap:Ljava/util/HashMap;

    .line 77
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarnavi"

    const/16 v3, 0x258

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.taiservice"

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarspeech"

    const/16 v3, 0x190

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarflow"

    const/16 v3, 0x12c

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarmusic"

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarmusicp"

    const/16 v3, 0xc7

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarnews"

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    const-string v2, "com.tencent.wecarprofile"

    const/16 v3, 0x63

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.taiservice"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarmusic"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarmusicp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarnews"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarnavi"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarspeech"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarflow"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecarprofile"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sAppTypeMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppTypeByPkgName(Ljava/lang/String;)I
    .locals 1

    .line 54
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getPkgNameByAppType(I)Ljava/lang/String;
    .locals 2

    .line 68
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sAppTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sAppTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "com.tencent.wecarnavi"

    return-object p0
.end method

.method private getSortedAPPList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;",
            ">;"
        }
    .end annotation

    .line 229
    :try_start_0
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ListUtil;->deepCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 231
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wecarbase/utils/PackageUtils;->getPriorityCodeInAPP(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$002(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;J)J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$1;

    invoke-direct {v1, p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig$1;-><init>(Lcom/tencent/wecarbase/config/def/ServiceConfig;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 254
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    :goto_1
    return-object v0
.end method

.method private getSpecificHostName()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 127
    :goto_0
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 128
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.wecarnavi"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 129
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.wecarmusic"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 130
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.wecarmusicp"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 131
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.wecarnews"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.wecarprofile"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :cond_0
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getWecarNavi(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v0

    .line 134
    :goto_1
    sget-object v3, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 135
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v4}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarbase/utils/PackageUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    sget-object p0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old app"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " existed so return:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object p0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWecarNavi(Ljava/lang/String;)J
    .locals 0

    .line 149
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isAPPInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 151
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->getTaiAARCodeInAPP(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x1

    :goto_0
    return-wide p0
.end method

.method public static isContainsPkg(Ljava/lang/String;)Z
    .locals 1

    .line 61
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->sPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getHostPackage()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hostName"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/wecarbase/utils/SPUtils;->getSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SP getHostPackage return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSpecificHostName()Ljava/lang/String;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getHostPackage hostName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "hostName"

    invoke-static {p0, v2, v1}, Lcom/tencent/wecarbase/utils/SPUtils;->putSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSortedAPPList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 175
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 176
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 177
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appinstall getHostPackage return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v4}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "hostName"

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v4}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/wecarbase/utils/SPUtils;->putSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_3
    sget-object p0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    const-string v1, "getHostPackage return null"

    invoke-static {p0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 185
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-object v0
.end method

.method public resetHostPackage()V
    .locals 5

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSpecificHostName()Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " resetHostPackage hostName == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "hostName"

    invoke-static {p0, v1, v0}, Lcom/tencent/wecarbase/utils/SPUtils;->putSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSortedAPPList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 199
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------appinstall resetHostPackage service return------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v3}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hostName"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/tencent/wecarbase/utils/SPUtils;->putSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public shouldLaunchService()Z
    .locals 6

    .line 111
    invoke-direct {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getSortedAPPList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$000(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 115
    sget-object v0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldLaunchService return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    sget-object p0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    const-string v1, "shouldLaunchService return false"

    invoke-static {p0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public shouldResetTaiClient()Z
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/tencent/wecarbase/config/def/ServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 215
    :goto_0
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 216
    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v2}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    .line 217
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v4}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":wecarbase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v2, v3}, Lcom/tencent/wecarbase/utils/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    sget-object p0, Lcom/tencent/wecarbase/config/def/ServiceConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shouldResetTaiClient shouldReset APPItems.get(i).pkgName == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/wecarbase/config/def/ServiceConfig;->APPItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;

    invoke-static {v1}, Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;->access$100(Lcom/tencent/wecarbase/config/def/ServiceConfig$APPItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
