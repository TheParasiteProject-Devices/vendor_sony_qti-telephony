.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    .line 84
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    nop

    .line 90
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "stateExtra":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SIM_STATE_CHANGED, action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 92
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v3, "SIM_STATE_ABSENT OR DISABLED"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    .line 97
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_1
    return-void
.end method
