.class public final Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;
.super Ljava/lang/Object;
.source "ExternalDefaultBroadcastKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TYPE_SPEC"
.end annotation


# static fields
.field public static final BACKGROUD:I

.field public static final EXIT:I

.field public static final FOREGROUND:I

.field public static final INIT_BEGIN:I

.field public static final INIT_END:I

.field public static final MUTILROUTE_START:I

.field public static final MUTIROUTE_END:I

.field public static final RG_REMAININFO_UPDATE:I

.field public static final ROUTE_GUIDE_BEGIN:I

.field public static final ROUTE_GUIDE_END:I

.field public static final ROUTE_PLAN_SUCCESS:I

.field public static final TEAM_TRIP_EXIT:I

.field public static final TEAM_TRIP_JOIN:I

.field public static final TEAM_TRIP_MEMBER_UPDATE:I

.field public static final TEAM_TRIP_TARGET_ADDED:I

.field public static final TEAM_TRIP_TARGET_DELETED:I

.field public static final TTS_END:I

.field public static final TTS_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    .line 339
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->INIT_BEGIN:I

    const/4 v1, 0x1

    .line 340
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->INIT_END:I

    const/4 v1, 0x2

    .line 341
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->EXIT:I

    const/4 v1, 0x3

    .line 342
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->FOREGROUND:I

    const/4 v1, 0x4

    .line 343
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->BACKGROUD:I

    const/4 v1, 0x5

    .line 344
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->ROUTE_PLAN_SUCCESS:I

    const/4 v1, 0x6

    .line 345
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->ROUTE_GUIDE_BEGIN:I

    const/4 v1, 0x7

    .line 346
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->ROUTE_GUIDE_END:I

    const/16 v1, 0x8

    .line 347
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TTS_START:I

    const/16 v1, 0x9

    .line 348
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TTS_END:I

    const/16 v1, 0xa

    .line 349
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->MUTILROUTE_START:I

    const/16 v1, 0xb

    .line 350
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->MUTIROUTE_END:I

    const/16 v1, 0xc

    .line 351
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->RG_REMAININFO_UPDATE:I

    const/16 v1, 0xd

    .line 352
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TEAM_TRIP_JOIN:I

    const/16 v1, 0xe

    .line 353
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TEAM_TRIP_EXIT:I

    const/16 v1, 0xf

    .line 354
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TEAM_TRIP_TARGET_ADDED:I

    const/16 v1, 0x10

    .line 355
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v1

    sput v1, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TEAM_TRIP_TARGET_DELETED:I

    const/16 v1, 0x11

    .line 356
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;->makeTypeSpec(II)I

    move-result v0

    sput v0, Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TYPE_SPEC;->TEAM_TRIP_MEMBER_UPDATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
