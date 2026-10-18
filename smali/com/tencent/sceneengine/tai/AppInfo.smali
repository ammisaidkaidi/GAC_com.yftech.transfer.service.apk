.class public Lcom/tencent/sceneengine/tai/AppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public isReceiveSysMSg:Z

.field public pkgName:Ljava/lang/String;

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/sceneengine/tai/AppInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/sceneengine/tai/AppInfo;->pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/sceneengine/tai/AppInfo;->target:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/sceneengine/tai/AppInfo;->isReceiveSysMSg:Z

    return-void
.end method
