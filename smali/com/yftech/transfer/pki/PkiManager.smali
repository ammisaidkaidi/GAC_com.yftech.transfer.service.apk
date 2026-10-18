.class public Lcom/yftech/transfer/pki/PkiManager;
.super Ljava/lang/Object;
.source "PkiManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PkiManager"

.field private static pkiManager:Lcom/yftech/transfer/pki/PkiManager;


# instance fields
.field cycleHour:I

.field cycleMin:I

.field did:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ioTSecuSrv_interface"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/transfer/pki/PkiManager;
    .locals 3

    .line 15
    sget-object v0, Lcom/yftech/transfer/pki/PkiManager;->pkiManager:Lcom/yftech/transfer/pki/PkiManager;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/yftech/transfer/pki/PkiManager;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/yftech/transfer/pki/PkiManager;->TAG:Ljava/lang/String;

    const-string v2, "PkiManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v1, Lcom/yftech/transfer/pki/PkiManager;->pkiManager:Lcom/yftech/transfer/pki/PkiManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/yftech/transfer/pki/PkiManager;

    invoke-direct {v1}, Lcom/yftech/transfer/pki/PkiManager;-><init>()V

    sput-object v1, Lcom/yftech/transfer/pki/PkiManager;->pkiManager:Lcom/yftech/transfer/pki/PkiManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/transfer/pki/PkiManager;->pkiManager:Lcom/yftech/transfer/pki/PkiManager;

    return-object v0
.end method


# virtual methods
.method public native init()V
.end method

.method public native szitrusCertParse()Ljava/lang/String;
.end method

.method public native szitrusCertPass(Ljava/lang/String;)I
.end method

.method public native szitrusCertStatus()I
.end method

.method public native szitrusDid()I
.end method

.method public native szitrusSignature()I
.end method

.method public native szitrusSync(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native szitrusSyncCert()I
.end method

.method public native szitrusSyncDevice(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native szitrusSyncDomain(Ljava/lang/String;I)I
.end method

.method public native szitrusSyncPolicy(IIII)I
.end method

.method public native szitrusVerify(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public native szitrusgetVersion()Ljava/lang/String;
.end method
