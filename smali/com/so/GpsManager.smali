.class public Lcom/so/GpsManager;
.super Ljava/lang/Object;
.source "GpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/so/GpsManager$GpsObservor;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GpsManager"

.field private static gpsManager:Lcom/so/GpsManager;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/so/GpsManager$GpsObservor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "transfer"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/so/GpsManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/so/GpsManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/so/GpsManager;->gpsManager:Lcom/so/GpsManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/so/GpsManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/so/GpsManager;->gpsManager:Lcom/so/GpsManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/so/GpsManager;

    invoke-direct {v1}, Lcom/so/GpsManager;-><init>()V

    sput-object v1, Lcom/so/GpsManager;->gpsManager:Lcom/so/GpsManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/so/GpsManager;->gpsManager:Lcom/so/GpsManager;

    return-object v0
.end method

.method public static isregisterObservor(Lcom/so/GpsManager$GpsObservor;)Z
    .locals 1

    .line 82
    sget-object v0, Lcom/so/GpsManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/so/GpsManager$GpsObservor;)V
    .locals 1

    .line 74
    sget-object v0, Lcom/so/GpsManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/so/GpsManager$GpsObservor;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/so/GpsManager;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public native init()V
.end method

.method public onGetData(I[BI[B)V
    .locals 1

    .line 58
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/String;-><init>([BII)V

    .line 59
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4, v0, p3}, Ljava/lang/String;-><init>([BII)V

    .line 60
    sget-object p2, Lcom/so/GpsManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/so/GpsManager$GpsObservor;

    .line 61
    invoke-virtual {p3, p0, p1}, Lcom/so/GpsManager$GpsObservor;->onGetData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public native updateEncoder(DDDDDDDII)V
.end method

.method public native updateGps(DDDDDDDDI)V
.end method
