.class public interface abstract Lcom/tencent/taes/api/open/IOpenApi;
.super Ljava/lang/Object;
.source "IOpenApi.java"

# interfaces
.implements Lcom/tencent/taes/api/base/BaseApi;


# static fields
.field public static final TAB_AI_BOARD:I = 0x4

.field public static final TAB_MAP:I = 0x1

.field public static final TAB_MUSIC:I = 0x2

.field public static final TAB_PERSONAL:I = 0x0

.field public static final TAB_SCENE:I = 0x3

.field public static final TAB_WECAR_HOME:I = 0x5


# virtual methods
.method public abstract closePage(Ljava/lang/String;)V
.end method

.method public abstract createTeamTrip()V
.end method

.method public abstract exitApp(Z)V
.end method

.method public abstract exitTeamTrip(Z)V
.end method

.method public abstract getAppVersionCode()J
.end method

.method public abstract getAppVersionName()Ljava/lang/String;
.end method

.method public abstract joinTeamTrip(ZLjava/lang/String;)V
.end method

.method public abstract openApp()V
.end method

.method public abstract openApp(I)V
.end method

.method public abstract setTeamTripTarget(DDLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showNavigationBar(Z)V
.end method

.method public abstract showStatusBar(Z)V
.end method

.method public abstract subscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
.end method
