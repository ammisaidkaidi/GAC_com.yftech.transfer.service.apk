.class public Lcom/yftech/transfer/service/CheckPermissionsActivity;
.super Landroid/app/Activity;
.source "CheckPermissionsActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final PERMISSON_REQUESTCODE:I


# instance fields
.field private isNeedCheck:Z

.field protected needPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/service/CheckPermissionsActivity;->needPermissions:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/yftech/transfer/service/CheckPermissionsActivity;->isNeedCheck:Z

    return-void
.end method

.method private varargs checkPermissions([Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->findDeniedPermissions([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private findDeniedPermissions([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 67
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private startAppSettings()V
    .locals 3

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private verifyPermissions([I)Z
    .locals 3

    .line 85
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-nez p1, :cond_0

    .line 97
    invoke-direct {p0, p3}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->verifyPermissions([I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/yftech/transfer/service/CheckPermissionsActivity;->isNeedCheck:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    iget-boolean v0, p0, Lcom/yftech/transfer/service/CheckPermissionsActivity;->isNeedCheck:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/yftech/transfer/service/CheckPermissionsActivity;->needPermissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/transfer/service/CheckPermissionsActivity;->checkPermissions([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
