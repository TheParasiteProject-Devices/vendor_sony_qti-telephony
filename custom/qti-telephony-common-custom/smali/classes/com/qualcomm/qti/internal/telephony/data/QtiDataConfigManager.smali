.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;
.super Lcom/android/internal/telephony/data/DataConfigManager;
.source "QtiDataConfigManager.java"


# static fields
.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x1


# instance fields
.field protected mApnsWithSameGID:[Ljava/lang/String;

.field protected mIsApnFilteringRequired:Z

.field private mIsSmartDdsSwitchFeatureAvailable:Z


# direct methods
.method public static synthetic $r8$lambda$gI7aclHdInKFbrLrUnVfQ4Gr72M(Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->onQtiPhoneReady()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsSmartDdsSwitchFeatureAvailable:Z

    .line 54
    const-string v0, "QtiDataConfigManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->registerListenerForQtiPhoneReady()V

    .line 56
    return-void
.end method

.method private onQtiPhoneReady()V
    .locals 2

    .line 71
    const-string v0, "onQtiPhoneReady"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 73
    nop

    .line 74
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isSmartDdsSwitchFeatureAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsSmartDdsSwitchFeatureAvailable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "onQtiPhoneReady: Error connecting to qti phone."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->loge(Ljava/lang/String;)V

    .line 78
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getApnsWithSameGID()[Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    return-object v0
.end method

.method public getPdpRejectCauseSamePdnNotAllowed()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseServiceNotSubscribed()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseUserAuthentication()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectDialogTitle()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectRetryDelay()J
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isApnFilteringWithRadioCapabilityRequired()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    return v0
.end method

.method public isPdpRejectConfigEnabled()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x11101bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsSmartDdsSwitchFeatureAvailable:Z

    return v0
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 81
    const-string v0, "QtiDCM onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->sendEmptyMessage(I)Z

    .line 83
    return-void
.end method

.method registerListenerForQtiPhoneReady()V
    .locals 1

    .line 62
    const-string v0, "registerListenerForQtiPhoneReady"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;)V

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->addOnQtiPhoneReadyListener(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;)V

    .line 64
    return-void
.end method

.method protected updateOtherConfigs()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "multi_apn_array_for_same_gid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "require_apn_filtering_with_radio_capability_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    .line 93
    return-void
.end method
