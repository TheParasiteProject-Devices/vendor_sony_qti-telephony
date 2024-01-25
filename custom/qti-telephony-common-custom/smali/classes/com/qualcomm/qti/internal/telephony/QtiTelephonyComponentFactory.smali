.class public Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "QtiTelephonyComponentFactory.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;


# instance fields
.field private mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "QtiTelephonyComponentFactory"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    .line 66
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 69
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    .line 70
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    .locals 1

    .line 73
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    .locals 2
    .param p1, "slotId"    # I

    .line 299
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 300
    aget-object v0, v0, p1

    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeCarrierInfoManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierInfoManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 238
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeCarrierInfoManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeDataConfigManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/DataConfigManager;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 255
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object v0
.end method

.method public makeDataNetworkController(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 244
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object v0
.end method

.method public makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "dataServiceManager"    # Lcom/android/internal/telephony/data/DataServiceManager;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "callback"    # Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    .line 263
    new-instance v6, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-object v6
.end method

.method public makeDataRetryManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)Lcom/android/internal/telephony/data/DataRetryManager;
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "dataRetryManagerCallback"    # Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")",
            "Lcom/android/internal/telephony/data/DataRetryManager;"
        }
    .end annotation

    .line 272
    .local p3, "dataServiceManagers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/data/DataServiceManager;>;"
    new-instance v6, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-object v6
.end method

.method public makeDataServiceManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)Lcom/android/internal/telephony/data/DataServiceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "transportType"    # I

    .line 249
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeDataServiceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    return-object v0
.end method

.method public makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 288
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "eriFileSource"    # I

    .line 122
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v0

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, " makeExtTelephonyClasses "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "value":Ljava/lang/String;
    const-string v2, "false"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    :cond_1
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 201
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-static {p1, p3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 203
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    .line 205
    :cond_2
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->init(Landroid/content/Context;)V

    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 209
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 212
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error creating ExtTelephonyServiceImpl"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 78
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 155
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "referenceNumber"    # I
    .param p10, "sequenceNumber"    # I
    .param p11, "messageCount"    # I
    .param p12, "is3gpp2WapPdu"    # Z
    .param p13, "msgBody"    # Ljava/lang/String;
    .param p14, "isClass0"    # Z
    .param p15, "subId"    # I
    .param p16, "smsSource"    # I

    .line 147
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super/range {p0 .. p16}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "is3gpp2WapPdu"    # Z
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "displayAddr"    # Ljava/lang/String;
    .param p10, "msgBody"    # Ljava/lang/String;
    .param p11, "isClass0"    # Z
    .param p12, "subId"    # I
    .param p13, "smsSource"    # I

    .line 137
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super/range {p0 .. p13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 171
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .locals 2
    .param p1, "maxDataAttachModemCount"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 219
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiPhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 226
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 228
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v2, v1, v0

    .line 233
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiServiceStateTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSmsDispatchersController(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsDispatchersController;
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 115
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiSmsDispatchersController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 84
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSubscriptionManagerService(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 178
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSubscriptionManagerService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->init(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    move-result-object v0

    return-object v0
.end method

.method public makeTelephonyNetworkAgent(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;
    .param p4, "score"    # Landroid/net/NetworkScore;
    .param p5, "config"    # Landroid/net/NetworkAgentConfig;
    .param p6, "provider"    # Landroid/net/NetworkProvider;
    .param p7, "callback"    # Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

    .line 280
    new-instance v8, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-object v8
.end method

.method public makeTelephonyNetworkFactory(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/data/TelephonyNetworkFactory;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "phoneSwitcher"    # Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 294
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "make QtiTelephonyNetworkFactory"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-object v0
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 2
    .param p1, "pdu"    # [B

    .line 128
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v0

    return-object v0
.end method
