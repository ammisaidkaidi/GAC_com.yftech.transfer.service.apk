.class Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeCarInfoSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimulatorBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;-><init>(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 146
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive Simulator, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.tencent.wecarsimlator.action"

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "type"

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "data"

    .line 149
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", json : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x11

    if-ne v2, p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;

    .line 154
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 155
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onAirConditionChanged(Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;)V

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 158
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 159
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onAirConditionChanged(Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    if-ne v2, p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;

    .line 164
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 165
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onDoorStatusChanged(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V

    .line 167
    :cond_2
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 168
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 169
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onDoorStatusChanged(Lcom/tencent/wecarbase/carinfo/model/DoorStatusModel;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v2, p1, :cond_5

    .line 173
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;

    .line 174
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 175
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onBrakeStateChanged(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V

    .line 177
    :cond_4
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 178
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 179
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onBrakeStateChanged(Lcom/tencent/wecarbase/carinfo/model/BrakeStateModel;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v2, p1, :cond_7

    .line 183
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;

    .line 184
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 185
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onSeatBeltChanged(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V

    .line 187
    :cond_6
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 188
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 189
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onSeatBeltChanged(Lcom/tencent/wecarbase/carinfo/model/SeatBeltModel;)V

    goto :goto_3

    :cond_7
    const/16 v2, 0xe

    if-ne v2, p1, :cond_9

    .line 193
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/LampModel;

    .line 194
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 195
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onLampStatusChanged(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V

    .line 197
    :cond_8
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 198
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 199
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onLampStatusChanged(Lcom/tencent/wecarbase/carinfo/model/LampModel;)V

    goto :goto_4

    :cond_9
    const/4 v2, 0x4

    if-ne v2, p1, :cond_b

    .line 203
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/GearModel;

    .line 204
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 205
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onGearChanged(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V

    .line 207
    :cond_a
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 208
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 209
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onGearChanged(Lcom/tencent/wecarbase/carinfo/model/GearModel;)V

    goto :goto_5

    :cond_b
    const/16 v2, 0x8

    if-ne v2, p1, :cond_d

    .line 213
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    .line 214
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 215
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onFuelChanged(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V

    .line 217
    :cond_c
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 218
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 219
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onFuelChanged(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V

    goto :goto_6

    :cond_d
    const/4 v2, 0x5

    if-ne v2, p1, :cond_f

    .line 223
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/AccModel;

    .line 224
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 225
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onAccChanged(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V

    .line 227
    :cond_e
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 228
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 229
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onAccChanged(Lcom/tencent/wecarbase/carinfo/model/AccModel;)V

    goto :goto_7

    :cond_f
    const/16 v2, 0xc

    if-ne v2, p1, :cond_11

    .line 233
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 234
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 235
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEngineSpeedChanged(F)V

    .line 237
    :cond_10
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 238
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 239
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEngineSpeedChanged(F)V

    goto :goto_8

    :cond_11
    const/4 v2, 0x7

    if-ne v2, p1, :cond_13

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 244
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 245
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEnduranceMileageChanged(I)V

    .line 247
    :cond_12
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 248
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 249
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onEnduranceMileageChanged(I)V

    goto :goto_9

    :cond_13
    const/4 v2, 0x6

    if-ne v2, p1, :cond_15

    .line 253
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 254
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 255
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onTotalMileageChanged(J)V

    .line 257
    :cond_14
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 258
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 259
    invoke-interface {v0, p1, p2}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onTotalMileageChanged(J)V

    goto :goto_a

    :cond_15
    const/16 v2, 0x9

    if-ne v2, p1, :cond_17

    .line 263
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p1, v1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;

    .line 264
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 265
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onLeanWaterChanged(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V

    .line 267
    :cond_16
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 268
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 269
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onLeanWaterChanged(Lcom/tencent/wecarbase/carinfo/model/LeanWaterModel;)V

    goto :goto_b

    :cond_17
    const/4 v2, 0x1

    if-ne v2, p1, :cond_18

    :try_start_0
    const-string p1, ","

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, ","

    .line 276
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 277
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {v0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$500(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 278
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$500(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;->onKeyEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :cond_18
    const/16 v0, 0x12

    if-ne v0, p1, :cond_1a

    const-string p1, "data"

    .line 286
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 288
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onBundleData(Landroid/os/Bundle;)V

    .line 290
    :cond_19
    iget-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 291
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;->this$0:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;

    invoke-static {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 292
    invoke-interface {p2, p1}, Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;->onBundleData(Landroid/os/Bundle;)V

    goto :goto_c

    :catch_0
    :cond_1a
    :goto_d
    return-void
.end method
