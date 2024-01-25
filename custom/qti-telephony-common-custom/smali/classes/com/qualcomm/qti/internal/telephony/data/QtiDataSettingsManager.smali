.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;
.super Lcom/android/internal/telephony/data/DataSettingsManager;
.source "QtiDataSettingsManager.java"


# static fields
.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x64

.field private static final EVENT_INITIALIZE:I = 0xb

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x4


# instance fields
.field private mLogTag:Ljava/lang/String;

.field private mPhoneId:I

.field private mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

.field private mSubId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDSMGR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mLogTag:Ljava/lang/String;

    .line 70
    move-object v0, p2

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    .line 73
    const-string v0, "Constructor ends"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private hasTempDdsSwitched()Z
    .locals 5

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    .line 137
    .local v0, "phoneSwitcher":Lcom/android/internal/telephony/data/PhoneSwitcher;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    if-eqz v1, :cond_0

    .line 138
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 139
    .local v1, "qtiPhoneSwitcher":Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->hasTempDdsSwitched()Z

    move-result v2

    .line 140
    .local v2, "hasTempDdsSwitched":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasTempDdsSwitched = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 141
    return v2

    .line 143
    .end local v1    # "qtiPhoneSwitcher":Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .end local v2    # "hasTempDdsSwitched":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isDataAllowedByPlatform(I)Z
    .locals 5
    .param p1, "apnType"    # I

    .line 153
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    move-result-object v0

    .line 155
    .local v0, "factory":Lcom/android/internal/telephony/data/TelephonyNetworkFactory;
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isInternetApn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    if-eqz v1, :cond_0

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    .line 158
    .local v1, "qtiFactory":Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->isInternetDataAllowed()Z

    move-result v2

    .line 159
    .local v2, "isInternetDataAllowed":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInternetDataAllowedByPlatform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 160
    return v2

    .line 163
    .end local v1    # "qtiFactory":Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
    .end local v2    # "isInternetDataAllowed":Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isDataAllowedInVoiceCall(I)Z
    .locals 3
    .param p1, "apnType"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isInternetApn(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    .line 177
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    .line 179
    nop

    .line 180
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v0, v1

    .line 184
    .local v0, "isDataAllowedInVoiceCall":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataAllowedInVoiceCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 185
    return v0

    .line 188
    .end local v0    # "isDataAllowedInVoiceCall":Z
    :cond_2
    return v1
.end method

.method private isInternetApn(I)Z
    .locals 1
    .param p1, "apnType"    # I

    .line 194
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private onInit()V
    .locals 3

    .line 108
    const-string v0, "onInit..."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method private sendDataDuringCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "sendDataDuringCall SUB ID is invalid"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "sendDataDuringCall mQtiDataNetworkController is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 120
    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataDuringCall mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :sswitch_0
    const-string v0, "EVENT_ACTIVE_PHONE_SWITCH"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->sendDataDuringCall(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->updateDataEnabledAndNotify(I)V

    goto :goto_0

    .line 81
    :sswitch_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    .line 82
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->onInit()V

    .line 83
    goto :goto_0

    .line 85
    :sswitch_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "subId":I
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    if-eq v1, v0, :cond_0

    .line 88
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    .line 89
    const-string v1, "EVENT_SUBSCRIPTIONS_CHANGED"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->sendDataDuringCall(Ljava/lang/String;)V

    .line 105
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public isDataEnabled(I)Z
    .locals 1
    .param p1, "apnType"    # I

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->hasTempDdsSwitched()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isDataAllowedInVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isDataAllowedByPlatform(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->isDataAllowedInVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_1
    return v0
.end method
