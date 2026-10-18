.class public Lcom/tencent/taiutils/PermissionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/tencent/taiutils/PermissionManager;


# instance fields
.field public final mIsDrawOverlayRequired:Z

.field public mPermissionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/taiutils/PermissionManager;

    invoke-direct {v0}, Lcom/tencent/taiutils/PermissionManager;-><init>()V

    sput-object v0, Lcom/tencent/taiutils/PermissionManager;->sInstance:Lcom/tencent/taiutils/PermissionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissions:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/taiutils/PermissionManager;->mIsDrawOverlayRequired:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissionListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/tencent/taiutils/PermissionManager;
    .locals 1

    sget-object v0, Lcom/tencent/taiutils/PermissionManager;->sInstance:Lcom/tencent/taiutils/PermissionManager;

    return-object v0
.end method


# virtual methods
.method public canDrawOverlay(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public handleRequestPermissionsResult(Landroid/content/Context;[Ljava/lang/String;[I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/taiutils/PermissionManager;->isPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;

    invoke-interface {p2}, Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;->onAllPermissionsGranted()V

    goto :goto_0

    :cond_0
    return p1
.end method

.method public isPermissionGranted(Landroid/content/Context;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissions:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {p1, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public registerPermissionGrantedListener(Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissions:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-static {p1, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public setPermissions([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method public unregisterPermissionGrantedListener(Lcom/tencent/taiutils/PermissionManager$PermissionGrantedListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/taiutils/PermissionManager;->mPermissionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
