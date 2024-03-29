.class public Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/data/PhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DUAL_DATA_USER_PREFERENCE:I = 0x1

.field private static final DEFAULT_PHONE_INDEX:I = 0x0

.field private static final DUAL_DATA_PREFERENCE:Ljava/lang/String; = "dual_data_preference"

.field private static final DUAL_DATA_USER_PREFERENCE:Landroid/net/Uri;

.field private static final RECONNECT_EXT_TELEPHONY_SERVICE_DELAY_MILLISECOND:I = 0x7d0


# instance fields
.field private final NONUSER_INITIATED_SWITCH:I

.field private final SETTING_VALUE_OFF:I

.field private final USER_INITIATED_SWITCH:I

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field private mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

.field private final mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

.field private mDualDataUserPreference:I

.field protected final mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsSmartDdsSwitchFeatureAvailable:Z

.field private mNonDdsInternetNotAllowed:Z

.field private mPendingBroadcastDualDataRecommendation:Z

.field private mPendingDdsSwitch:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualDataUserPreference(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataUserPreference:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mIsSmartDdsSwitchFeatureAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mIsSmartDdsSwitchFeatureAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPrimaryDataPhoneId(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->getPrimaryDataPhoneId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTelTempDdsSwitchSatisfiedWithDdsSubSituation(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->isTelTempDdsSwitchSatisfiedWithDdsSubSituation()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendDualDataUserPreference(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendDualDataUserPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAndNotify(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->updateAndNotify(Lcom/qti/extphone/DualDataRecommendation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDUAL_DATA_USER_PREFERENCE()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->DUAL_DATA_USER_PREFERENCE:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    nop

    .line 85
    const-string v0, "dual_data_preference"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->DUAL_DATA_USER_PREFERENCE:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "maxActivePhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataUserPreference:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->SETTING_VALUE_OFF:I

    .line 94
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->USER_INITIATED_SWITCH:I

    .line 95
    const/4 v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->NONUSER_INITIATED_SWITCH:I

    .line 109
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mNonDdsInternetNotAllowed:Z

    .line 110
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingDdsSwitch:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingBroadcastDualDataRecommendation:Z

    .line 185
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 116
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 118
    const/16 v1, 0x7a

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

    .line 120
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;

    invoke-direct {v0, p0, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 122
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 123
    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->registerForDualDataPreferenceChange(Landroid/os/Looper;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    return p1
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    return p1
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 81
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    return-object v0
.end method

.method private getPrimaryDataPhoneId()I
    .locals 3

    .line 380
    const/4 v0, -0x1

    .line 381
    .local v0, "primaryDataPhoneId":I
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 385
    :cond_0
    return v0
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 333
    .local v1, "rspId":I
    const v2, 0x8041e

    if-ne v1, v2, :cond_2

    .line 334
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 335
    .local v2, "response_size":I
    if-gez v2, :cond_1

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 337
    return-void

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 342
    .end local v2    # "response_size":I
    :cond_2
    return-void

    .line 327
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    :cond_3
    :goto_0
    const-string v0, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private internalUpdatePreferredDataPhoneId()V
    .locals 6

    .line 601
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v0, v1, :cond_4

    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, "isAllowed":Z
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 604
    .local v1, "preferredDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v0

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DDS mobile data check: allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v0, v4

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DDS roaming data check: allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 617
    :cond_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 618
    .local v4, "voicePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 622
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v0, v2

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalUpdatePreferredDataPhoneId: internet pdn is allowed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 626
    :cond_3
    if-eqz v0, :cond_4

    .line 627
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 630
    .end local v0    # "isAllowed":Z
    .end local v1    # "preferredDataPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "voicePhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    return-void
.end method

.method private isDdsSwitchPending()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingDdsSwitch:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 148
    .local v1, "value":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 149
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSmartTempDdsSwitchSupported()Z
    .locals 2

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_1

    .line 467
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmartTempDdsSwitchSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isTelTempDdsSwitchSatisfiedWithDdsSubSituation()Z
    .locals 7

    .line 304
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->getPrimaryDataPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 305
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 307
    .local v1, "isDataRoaming":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    .line 308
    .local v2, "isRoamingDataEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v3

    .line 309
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result v3

    .line 310
    .local v3, "isDataEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DDS SUB: isDataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDataRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoamingDataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 314
    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 315
    :cond_0
    return v4

    .line 318
    .end local v1    # "isDataRoaming":Z
    .end local v2    # "isRoamingDataEnabled":Z
    .end local v3    # "isDataEnabled":Z
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .locals 1
    .param p0, "maxActivePhones"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 127
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 131
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    return-object v0
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 323
    return-void
.end method

.method private registerForDualDataPreferenceChange(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 553
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->DUAL_DATA_USER_PREFERENCE:Landroid/net/Uri;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 570
    return-void
.end method

.method private sendDualDataUserPreference()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getDualDataCapability()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_data_preference"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataUserPreference:I

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mClient:Lcom/qti/extphone/Client;

    .line 179
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 178
    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PhoneSwitcher"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 172
    :cond_2
    :goto_2
    return-void
.end method

.method private updateAndNotify(Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 4
    .param p1, "rec"    # Lcom/qti/extphone/DualDataRecommendation;

    .line 154
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    .line 155
    invoke-virtual {p1}, Lcom/qti/extphone/DualDataRecommendation;->getRecommendedSub()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    invoke-virtual {v0}, Lcom/qti/extphone/DualDataRecommendation;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mNonDdsInternetNotAllowed:Z

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->isDdsSwitchPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending DDS switch. Can not notify DualDataRecommendation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 162
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingBroadcastDualDataRecommendation:Z

    .line 163
    return-void

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify DualDataRecommendation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 168
    return-void
.end method

.method private updateHalCommandToUse()Z
    .locals 6

    .line 473
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 474
    const/4 v0, 0x1

    .line 475
    .local v0, "isRadioAvailable":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mActiveModemCount:I

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 476
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    if-eq v4, v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/2addr v0, v4

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_3

    .line 480
    const-string v1, "update HAL command"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mHalCommandToUse:I

    .line 483
    return v2

    .line 485
    :cond_3
    const-string v3, "radio is unavailable"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 488
    .end local v0    # "isRadioAvailable":Z
    :cond_4
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle event - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 375
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 370
    :sswitch_0
    const-string v1, "EVENT_RECONNECT_EXT_TELEPHONY_SERVICE"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 372
    goto :goto_1

    .line 360
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 362
    .local v1, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_1

    .line 365
    :cond_0
    const-string v2, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 367
    goto :goto_1

    .line 350
    .end local v1    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :sswitch_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    goto :goto_0

    .line 353
    :cond_1
    const-string v1, "Oem hook service is not ready"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendDualDataUserPreference()V

    .line 356
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    .line 357
    nop

    .line 377
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public hasTempDdsSwitched()Z
    .locals 2

    .line 664
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->getActiveDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isAutoDataSwitchEnabledOnPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p1, "secondaryDataPhone"    # Lcom/android/internal/telephony/Phone;

    .line 643
    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAutoSwitchTargetSubId: overall data allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isDataAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auto data switch policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v1

    .line 649
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    .line 655
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x1

    return v0

    .line 660
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 493
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 494
    return v0

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 504
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 504
    :cond_2
    return v0
.end method

.method protected onDdsSwitchResponse(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 414
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 415
    .local v1, "commandSuccess":Z
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 416
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDdsSwitchResponse: Invalid phoneId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 418
    return-void

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v3, :cond_2

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency override result sent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    goto :goto_1

    .line 425
    :cond_2
    if-nez v1, :cond_5

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDdsSwitchResponse: DDS switch failed. with exception "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v0, "onDdsSwitchResponse: Wait for call end indication"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 432
    return-void

    .line 433
    :cond_3
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->isSimApplicationReady(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v0, "onDdsSwitchResponse: Wait for SIM to get READY"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 438
    return-void

    .line 440
    :cond_4
    const-string v0, "onDdsSwitchResponse: Scheduling DDS switch retry"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 441
    nop

    .line 442
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 441
    const/16 v3, 0x71

    invoke-static {p0, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    return-void

    .line 445
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchResponse: DDS switch success on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 446
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 448
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 450
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingDdsSwitch:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 451
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingBroadcastDualDataRecommendation:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->isDdsSwitchPending()Z

    move-result v3

    if-nez v3, :cond_7

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify DualDataRecommendation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 455
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingBroadcastDualDataRecommendation:Z

    .line 457
    :cond_7
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 460
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mIsSmartDdsSwitchFeatureAvailable:Z

    if-nez v0, :cond_8

    .line 461
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->displayAutoDataSwitchNotification()V

    .line 463
    :cond_8
    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->updateHalCommandToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const-string v0, "Wait for HAL command update"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected phoneIdForRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I
    .locals 6
    .param p1, "networkRequest"    # Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 514
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 515
    .local v0, "netRequest":Landroid/net/NetworkRequest;
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v1

    .line 517
    .local v1, "subId":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    return v2

    .line 518
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v2

    .line 520
    :cond_1
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mActiveModemCount:I

    if-ge v3, v4, :cond_2

    .line 522
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    aget v3, v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    .line 531
    .local v3, "preferredDataSubId":I
    :goto_0
    iget-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mNonDdsInternetNotAllowed:Z

    if-eqz v4, :cond_3

    .line 532
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v1, v3, :cond_3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 534
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->getSubIdInValidation()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 536
    return v2

    .line 540
    :cond_3
    const/4 v2, -0x1

    .line 541
    .local v2, "phoneId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mActiveModemCount:I

    if-ge v4, v5, :cond_5

    .line 542
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_4

    .line 543
    move v2, v4

    .line 544
    goto :goto_2

    .line 541
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    .end local v4    # "i":I
    :cond_5
    :goto_2
    return v2
.end method

.method public registerForDualDataRecommendation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 140
    return-void
.end method

.method protected sendRilCommands(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 400
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->updateHalCommandToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    const-string v0, "Wait for HAL command update"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->logl(Ljava/lang/String;)V

    .line 402
    return-void

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->sendRilCommands(I)V

    .line 406
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mPendingDdsSwitch:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    return-void
.end method

.method public unregisterForActivePhoneSwitch(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mDualDataRecommendationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 144
    return-void
.end method
