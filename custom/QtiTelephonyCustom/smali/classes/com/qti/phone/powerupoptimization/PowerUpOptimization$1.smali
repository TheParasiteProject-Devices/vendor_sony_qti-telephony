.class Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUpOptimization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/powerupoptimization/PowerUpOptimization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;


# direct methods
.method constructor <init>(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;Ljava/lang/String;)V

    const-string v0, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "android.telephony.extra.SLOT_INDEX"

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "state"

    .line 181
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 183
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, " slotId= "

    const/16 v5, 0x8

    if-nez v0, :cond_6

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ss"

    .line 210
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 214
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_STATE_CHANGED: iccState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;Ljava/lang/String;)V

    const-string v0, "NOT_READY"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v0, p2}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$misSubDeactivated(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v2}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object v2

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    const-string v0, "LOADED"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LOCKED"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 223
    :cond_3
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object p0

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 223
    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_4
    const-string v0, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 229
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object p0

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 229
    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 232
    :cond_5
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "received unknown intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :goto_0
    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 189
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 191
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM intent: simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsBootup ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v2}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmIsBootup(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v0, p2}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$misValidSlotIndex(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_7

    .line 194
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {v0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmIsBootup(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_7
    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    if-ne p1, v5, :cond_8

    goto :goto_1

    :cond_8
    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    .line 201
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    .line 202
    invoke-static {v0, p1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$misSimLocked(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 203
    :cond_9
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object p0

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 203
    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 199
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$fgetmPowerUpOptHandler(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization$PowerUpOptHandler;

    move-result-object p0

    const/4 p1, 0x7

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 207
    :cond_b
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimization$1;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid slot id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimization;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method
