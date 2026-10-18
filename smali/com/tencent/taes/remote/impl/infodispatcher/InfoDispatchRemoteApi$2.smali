.class Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;
.super Ljava/lang/Object;
.source "InfoDispatchRemoteApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->dispatchTeamTripInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

.field final synthetic val$weCarTeamTripEventInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->val$weCarTeamTripEventInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->val$weCarTeamTripEventInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;

    iget v0, v0, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 645
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$600(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;

    if-eqz v1, :cond_0

    .line 647
    iget-object v2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->val$weCarTeamTripEventInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;

    iget-object v2, v2, Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripEventInfo;->mWeCarTeamTripMemberInfo:Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo;

    invoke-interface {v1, v2}, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnTeamTripChangeEventListener;->onTeamTripChange(Lcom/tencent/taes/base/api/bean/infodispatcher/teamtrip/WeCarTeamTripMemberInfo;)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$2;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$500(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {v0}, Lcom/tencent/taes/remote/api/infodispatcher/listener/teamtrip/OnExitTeamTripEventListener;->onExit()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
