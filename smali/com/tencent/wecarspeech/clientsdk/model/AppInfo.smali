.class public Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appType:J

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;->appName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-wide p3, p0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;->appType:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-wide p4, p0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;->appType:J

    .line 25
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/model/AppInfo;->alias:Ljava/lang/String;

    return-void
.end method
