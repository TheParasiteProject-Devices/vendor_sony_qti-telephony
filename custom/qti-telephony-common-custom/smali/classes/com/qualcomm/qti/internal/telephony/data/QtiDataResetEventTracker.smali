.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;
.super Ljava/lang/Object;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;,
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataEnabledCallback:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private mPreviousRAT:I

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTransportType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousRAT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousRAT:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->notifyResetEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/Phone;Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;)V
    .locals 4
    .param p1, "transportType"    # I
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "listener"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 44
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 45
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 47
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousRAT:I

    .line 53
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDataResetEventTracker constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 103
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;

    .line 106
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTransportType:I

    .line 107
    nop

    .line 108
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 110
    .local v0, "subId":I
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;

    invoke-direct {v1, p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mDataEnabledCallback:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;

    .line 111
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mDataEnabledCallback:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 113
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 229
    const-string v0, "QtiDataResetEventTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private notifyResetEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyResetEvent: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 223
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$ResetEventListener;->onResetEvent(ZLjava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 209
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 211
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mDataEnabledCallback:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$DataEnabledChangedListener;->unregisterListener()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 215
    return-void
.end method

.method public startResetEventTracker()V
    .locals 5

    .line 143
    const-string v0, "startResetEventTracker"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousRAT:I

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTransportType:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    const v3, 0x42029

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    const v2, 0x42006

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 152
    .local v0, "currentCellLocation":Landroid/telephony/CellLocation;
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection mPreviousLocation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 157
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1

    .line 158
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$3;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$3;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 183
    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 184
    return-void
.end method

.method public stopResetEventTracker()V
    .locals 3

    .line 190
    const-string v0, "stopResetTimer"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousRAT:I

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 194
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mTransportType:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 200
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 201
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
