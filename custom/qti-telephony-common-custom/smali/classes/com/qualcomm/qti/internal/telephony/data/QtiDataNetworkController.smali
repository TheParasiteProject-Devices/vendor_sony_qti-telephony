.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.super Lcom/android/internal/telephony/data/DataNetworkController;
.source "QtiDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;
    }
.end annotation


# static fields
.field private static final EVENT_QOS_PARAMETERS_CHANGED:I = 0x420ca

.field private static final EVENT_QTI_DISCONNECT_DEFAULT_PDN:I = 0x420c9

.field private static final EVENT_QTI_PHONE_READY:I = 0x420cb

.field private static final EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE:I = 0x420c8

.field private static final INVALID_CID:I = -0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final RECONNECT_EXT_TELEPHONY_SERVICE_DELAY_MILLISECOND:I = 0x7d0


# instance fields
.field protected mCiwlanContentObserver:Landroid/database/ContentObserver;

.field private mCiwlanTimer:J

.field private mClient:Lcom/qti/extphone/Client;

.field private mCrossSimCallingUri:Landroid/net/Uri;

.field private mEnabledChangedReason:I

.field private mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

.field protected final mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsCiwlanFeatureEnabledByPlatform:Z

.field private mIsCiwlanFeatureEnabledByUser:Z

.field private mIsDataRoamingEnabled:Z

.field private mIsEssentialRecordsLoaded:Z

.field private mIsInSecureMode:Z

.field private mIsMobileDataEnabled:Z

.field private mPendingDataOff:Z

.field private mPendingRoamingOff:Z

.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field protected final mQtiDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCrossSimCallingUri(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedRadioCapability(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;J)V
    .locals 0

    iput-wide p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misCrossSimCallingEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    .line 97
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 101
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 148
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 153
    const-string v1, "QtiDataNetworkController: constructor"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    invoke-direct {v1}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    .line 155
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 156
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 157
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 158
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 160
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 161
    .local v3, "transport":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 162
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 161
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    .end local v3    # "transport":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 167
    const v1, 0x420ca

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->registerForQosParametersChanged(Landroid/os/Handler;I)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultDataPhone()Lcom/android/internal/telephony/Phone;
    .locals 8

    .line 433
    const/4 v0, -0x1

    .line 434
    .local v0, "defaultDataPhoneId":I
    const/4 v1, 0x0

    .line 435
    .local v1, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 436
    .local v2, "isDataEnableOnDds":Z
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v3

    .line 438
    .local v3, "subMgrService":Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v4

    .line 439
    .local v4, "defaultDataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 443
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v5

    .line 447
    .local v5, "ex":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultDataPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 451
    .end local v5    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 328
    return-object v1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 331
    .local v0, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getNonDdsPhoneId()I
    .locals 4

    .line 527
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 528
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 529
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 531
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNonDdsPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 533
    return v0

    .line 527
    .end local v1    # "subIds":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getPhoneCount()I
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 620
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 621
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    return v1
.end method

.method private handleDdsRoamingStateChangesIfRequired()V
    .locals 4

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 510
    .local v0, "oldRoamingState":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 511
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 513
    .local v1, "newRoamingState":Z
    if-eq v0, v1, :cond_0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DDS roaming state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    const-string v3, "DDS_ROAMING_STATE_CHANGED"

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "oldRoamingState":Z
    .end local v1    # "newRoamingState":Z
    :cond_0
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while handling DDs roaming state changes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 521
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private isCrossSimCallingEnabledByUser()Z
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    return v1

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 295
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 296
    return v1

    .line 300
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "exception":Landroid/telephony/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get cross SIM calling configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 304
    .end local v2    # "exception":Landroid/telephony/ims/ImsException;
    return v1
.end method

.method private isCurrentSubDds(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 612
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 613
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 615
    :cond_1
    return v1
.end method

.method private isDataEnabledOnDds()Z
    .locals 3

    .line 458
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 459
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 461
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result v1

    .line 460
    return v1

    .line 464
    :cond_0
    return v1
.end method

.method private isDdsRoamingCriteriaSatisfiedForTempSwitch()Z
    .locals 5

    .line 475
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 476
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 477
    return v1

    .line 482
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 483
    const/4 v1, 0x1

    return v1

    .line 487
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking DDS roaming state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 490
    return v1
.end method

.method private isEssentialRecordsLoaded()Z
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC isEssentialRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 648
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    return v0
.end method

.method static synthetic lambda$onQosParametersChanged$0(ILcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1
    .param p0, "cid"    # I
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 233
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "qosParams"    # Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQosParametersChanged, cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qosParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 227
    if-nez p2, :cond_1

    .line 228
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 233
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 237
    .local v0, "dataNetworkForReceivedCid":Lcom/android/internal/telephony/data/DataNetwork;
    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosParametersChanged: dataNetworkForReceivedCid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3

    .line 250
    const-string v1, "onQosParametersChanged: associated DataNetwork not for IMS, ignore"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 251
    return-void

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 257
    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->addToQosParamsMap(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    .line 260
    invoke-virtual {p2}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->getQosBearerSessions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->updateQosBearerSessions(Ljava/util/List;)V

    .line 261
    return-void

    .line 241
    :cond_4
    :goto_1
    const-string v1, "onQosParametersChanged: no associated DataNetwork yet, ignore"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private registerCiwlanContentObserverAndStartTimer()V
    .locals 4

    .line 336
    sget-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 338
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    .line 339
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    return-void
.end method

.method private resetEssentialRecordsLoadedStateIfRequired(I)V
    .locals 1
    .param p1, "simState"    # I

    .line 667
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->setEssentialRecordsLoaded(Z)V

    .line 671
    :cond_0
    return-void
.end method

.method private sendCrossSimCallingEnabled()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 313
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 314
    return-void

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrossSimCallingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "exception":Landroid/telephony/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to send cross SIM calling configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 324
    .end local v1    # "exception":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method private unregisterCiwlanContentObserver()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method protected addDataDisallowedReasonWhenInSecureMode(Lcom/android/internal/telephony/data/DataEvaluation;)V
    .locals 2
    .param p1, "evaluation"    # Lcom/android/internal/telephony/data/DataEvaluation;

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDataDisallowedReasonWhenInSecureMode: mIsInSecureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 683
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    if-eqz v0, :cond_0

    .line 684
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_SECURE_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 686
    :cond_0
    return-void
.end method

.method protected checkSimStateForDataEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V
    .locals 2
    .param p1, "evaluation"    # Lcom/android/internal/telephony/data/DataEvaluation;

    .line 697
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSimState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isEssentialRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    const-string v0, "QtiDCT SIM is neither loaded, nor essentially loaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 702
    :cond_0
    return-void
.end method

.method evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 550
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    return-void

    .line 557
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    nop

    .line 563
    if-nez v0, :cond_1

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateAndSendDataDuringVoiceCallInfo, phone null for phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 565
    return-void

    .line 568
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    const-string v1, "evaluateAndSendDataDuringVoiceCallInfo, sub id is invalid"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 570
    return-void

    .line 574
    :cond_2
    const/4 v1, 0x0

    .line 576
    .local v1, "isDataAllowedDuringCall":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 581
    nop

    .line 582
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 583
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 585
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 586
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDdsRoamingCriteriaSatisfiedForTempSwitch()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataAllowedDuringCall: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", data during calls switch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 590
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDataEnabledOnDds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 592
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDdsRoamingSatisfied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 593
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDdsRoamingCriteriaSatisfiedForTempSwitch()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 598
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    if-eqz v2, :cond_5

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmartTempDdsSwitchSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluated data during voice call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, v1, v3}, Lcom/qti/extphone/ExtTelephonyManager;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 606
    :cond_5
    return-void

    .line 558
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "isDataAllowedDuringCall":Z
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateAndSendDataDuringVoiceCallInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public getEnhancedRadioCapabilityResponse()Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_0
    const-string v0, "EVENT_QOS_PARAMETERS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 199
    .local v1, "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;>;"
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 200
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    goto :goto_0

    .line 202
    :cond_0
    const-string v2, "EVENT_QOS_PARAMETERS_CHANGED: exception, ignore."

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 204
    goto :goto_0

    .line 183
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;>;"
    :pswitch_1
    const-string v0, "EVENT_QTI_DISCONNECT_DEFAULT_PDN"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 185
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    .line 186
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    invoke-super {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    if-eqz v0, :cond_2

    .line 190
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    .line 191
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    invoke-super {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 181
    nop

    .line 208
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x420c8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isPdpRejectRetryOngoing(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 5
    .param p1, "networkRequest"    # Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 745
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 746
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v1

    .line 745
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 747
    .local v0, "transport":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 748
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataNetworkType(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZ)Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 750
    .local v1, "dataProfile":Landroid/telephony/data/DataProfile;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 752
    .local v2, "qtiDataRetryManager":Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isPdpRejectRetryOngoing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isDataProfileOfTypeDefault(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    const-string v4, "isPdpRejectRetryOngoing: true"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 755
    return v3

    .line 757
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 629
    const-string v0, "QtiDNC onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->onCarrierConfigLoadedForEssentialRecords()V

    .line 631
    return-void
.end method

.method protected onDataDuringVoiceCallChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDuringVoiceCallChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "DATA_DURING_VOICE_CALL_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 268
    return-void
.end method

.method protected onDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataEnabledChanged: enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 395
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 396
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    .line 398
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    .line 399
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 402
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 406
    :goto_0
    return-void
.end method

.method public onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 1
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 711
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "QtiDNC onDataNetworkConnected: Reset data reject count .."

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataRetryManager;->handlePdpRejectCauseSuccess()V

    .line 716
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 717
    return-void
.end method

.method protected onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 2
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;
    .param p2, "cause"    # I
    .param p3, "tearDownReason"    # I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataNetworkDisconnected: cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tearDownReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 730
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 731
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->removeFromQosParamsMap(I)V

    .line 732
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V

    .line 733
    return-void
.end method

.method protected onDataRoamingEnabledChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ROAMING_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 421
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    .line 423
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 426
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    goto :goto_0

    .line 428
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    .line 430
    :goto_0
    return-void
.end method

.method protected onServiceStateChanged()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->handleDdsRoamingStateChangesIfRequired()V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    .line 501
    return-void
.end method

.method protected onSimStateChanged(I)V
    .locals 0
    .param p1, "simState"    # I

    .line 658
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->resetEssentialRecordsLoadedStateIfRequired(I)V

    .line 659
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    .line 660
    return-void
.end method

.method protected onSubscriptionChanged()V
    .locals 2

    .line 273
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 274
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->unregisterCiwlanContentObserver()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    .line 281
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->registerCiwlanContentObserverAndStartTimer()V

    .line 286
    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    .line 287
    return-void
.end method

.method public setEssentialRecordsLoaded(Z)V
    .locals 2
    .param p1, "isLoaded"    # Z

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC setEssentialRecordsLoaded to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 640
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 641
    return-void
.end method
