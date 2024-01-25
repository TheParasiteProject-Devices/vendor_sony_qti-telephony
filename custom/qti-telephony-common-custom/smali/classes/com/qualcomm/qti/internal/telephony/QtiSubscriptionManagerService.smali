.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;
.super Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.source "QtiSubscriptionManagerService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionManagerService"

.field private static final PROPERTY_SUBSIDY_DEVICE:Ljava/lang/String; = "persist.vendor.radio.subsidydevice"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;


# instance fields
.field private mNotifyAddSubInfo:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mNotifyAddSubInfo:Z

    .line 78
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "init by context"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private varargs enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 83
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 84
    .local v2, "permission":Ljava/lang/String;
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 86
    return-void

    .line 83
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Does not have permissions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;
    .locals 2

    .line 69
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "QtiSubscriptionManagerService"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    return-object v0
.end method

.method private getSlotIdForDeactivatedSub(I)I
    .locals 8
    .param p1, "subId"    # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 138
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 139
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v2

    .line 140
    .local v2, "slotsInfo":[Landroid/telephony/UiccSlotInfo;
    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 141
    return v3

    .line 144
    :cond_0
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 145
    aget-object v5, v2, v4

    .line 146
    .local v5, "slotInfo":Landroid/telephony/UiccSlotInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSlotIdForDeactivatedSub: slotId found: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 148
    return v4

    .line 144
    .end local v5    # "slotInfo":Landroid/telephony/UiccSlotInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "index":I
    :cond_2
    return v3
.end method

.method private getSlotIdForSubId(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 124
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 125
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    if-nez v0, :cond_0

    .line 126
    const/4 v1, -0x1

    return v1

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getSlotIndex(I)I

    move-result v1

    return v1

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getSlotIdForDeactivatedSub(I)I

    move-result v1

    return v1
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 58
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    goto :goto_0

    .line 62
    :cond_0
    const-string v1, "QtiSubscriptionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times! sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSimLocked(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 206
    .local v0, "family":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 207
    .local v2, "uiccCardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 209
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    .line 211
    .local v4, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v5, v6, :cond_3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v5, :cond_2

    .line 215
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->isPersoLocked(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 211
    :goto_2
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 256
    const-string v0, "QtiSubscriptionManagerService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 264
    const-string v0, "QtiSubscriptionManagerService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 260
    const-string v0, "QtiSubscriptionManagerService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method


# virtual methods
.method public addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 185
    .local v0, "retValue":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 187
    .local v1, "phoneCount":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mNotifyAddSubInfo:Z

    if-eqz v2, :cond_1

    .line 188
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 190
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .line 191
    .local v3, "phone":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifySubInfoAdded()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v3    # "phone":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    goto :goto_1

    .line 192
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubInfo, exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 194
    nop

    .line 188
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "phoneId":I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mNotifyAddSubInfo:Z

    .line 199
    :cond_1
    return v0
.end method

.method public areUiccAppsEnabledOnCard(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 165
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 166
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 171
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 178
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 176
    :goto_0
    return v3

    .line 172
    :cond_3
    :goto_1
    const-string v2, "QtiSubscriptionManagerService"

    const-string v4, "QtiPhoneUtils or TelephonyManager instance is null"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v3

    .line 167
    .end local v1    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsEnabledOnCard(I)Z

    move-result v1

    return v1
.end method

.method public isDsdsToSsConfigEnabled()Z
    .locals 4

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "dsdsToSsConfigStatus":Z
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isDsdsToSsConfigEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDsdsToSsConfigEnabled, exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 252
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return v0
.end method

.method public isSubIdCreationPending()Z
    .locals 8

    .line 220
    const/4 v0, 0x0

    .line 223
    .local v0, "subsidyDevicePropVal":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    const-string v3, "persist.vendor.radio.subsidydevice"

    .line 224
    invoke-virtual {v2, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubIdCreationPending, exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 229
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 231
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 232
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 233
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->isSimLocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId Creation is Pending for slot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logi(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    return v1

    .line 231
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubIdCreationPending()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 240
    return v1
.end method

.method public setUiccApplicationsEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUiccApplicationsEnabled]+ enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 97
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 99
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "setUiccApplicationsEnabled HAL is 1.5 or above"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setUiccApplicationsEnabled(ZI)V

    goto :goto_1

    .line 103
    :cond_0
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "setUiccApplicationsEnabled"

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 108
    .local v1, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getSlotIdForSubId(I)I

    move-result v3

    .line 110
    .local v3, "slotId":I
    if-eqz p1, :cond_1

    .line 111
    const-string v4, "setUiccApplicationsEnabled: using legacy api activateUiccCard"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v4, "setUiccApplicationsEnabled: uisng legacy api deactivateUiccCard"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->logd(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v3    # "slotId":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    nop

    .line 121
    .end local v1    # "identity":J
    :goto_1
    return-void

    .line 118
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw v3
.end method

.method public updateSubscription(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 156
    invoke-super {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    .line 157
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 158
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->updateUserPreferences()V

    .line 161
    :cond_0
    return-void
.end method
