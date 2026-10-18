.class public Lcom/yftech/transfer/phonelink/database/DataBaseHelp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelp.java"


# static fields
.field private static final DBNAME:Ljava/lang/String; = "yftransfer.db"

.field public static final TABLE_CARLINKDEVICE:Ljava/lang/String; = "carlinkdevice"


# instance fields
.field private final SQL_CREATE_TABLE_PL_CARLINKDEVICE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "yftransfer.db"

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "create table carlinkdevice(deviceid text PRIMARY KEY,deviceName text,phoneType text,connectedStatus int,connectedType int)"

    .line 11
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/database/DataBaseHelp;->SQL_CREATE_TABLE_PL_CARLINKDEVICE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "create table carlinkdevice(deviceid text PRIMARY KEY,deviceName text,phoneType text,connectedStatus int,connectedType int)"

    .line 26
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
