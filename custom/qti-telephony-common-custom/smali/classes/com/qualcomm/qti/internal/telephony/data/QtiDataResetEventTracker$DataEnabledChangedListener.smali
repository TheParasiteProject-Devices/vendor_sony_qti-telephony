.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;
.super Landroid/telephony/TelephonyCallback;
.source "QtiDataResetEventTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledChangedListener"
.end annotation


# instance fields
.field private mSubId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;I)V
    .locals 0
    .param p2, "subId"    # I

    .line 120
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 118
    const/4 p1, -0x1

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->mSubId:I

    .line 121
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->mSubId:I

    .line 122
    return-void
.end method


# virtual methods
.method public onUserMobileDataStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserMobileDataStateChanged: sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmHandler(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmHandler(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4202e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    :cond_0
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 136
    return-void
.end method
