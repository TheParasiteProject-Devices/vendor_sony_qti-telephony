.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static sToken:I


# instance fields
.field private final EVENT_CLOSE_ALL_SESSIONS:I

.field private final EVENT_INCOMING_DTMF_START:I

.field private final EVENT_INCOMING_DTMF_STOP:I

.field private final EVENT_SRTP_ENCRYPTION_UPDATE:I

.field private final mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private final mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mUssdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsUssdSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V
    .locals 6
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 75
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 83
    const/4 v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_START:I

    .line 84
    const/4 v2, 0x2

    iput v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_STOP:I

    .line 85
    const/4 v3, 0x3

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_CLOSE_ALL_SESSIONS:I

    .line 86
    const/4 v3, 0x4

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_SRTP_ENCRYPTION_UPDATE:I

    .line 88
    new-instance v4, Lorg/codeaurora/ims/ImsServiceClassTracker$1;

    invoke-direct {v4, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$1;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 95
    new-instance v4, Lorg/codeaurora/ims/ImsServiceClassTracker$2;

    invoke-direct {v4, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$2;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 110
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 111
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 112
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    .line 115
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 116
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    .line 117
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 118
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v5, v4, v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrtpEncryptionUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p3, "notify"    # Z

    .line 720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    if-eqz p3, :cond_0

    .line 722
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 724
    :cond_0
    return-void
.end method

.method private broadcastPreAlertingCallIntent(I)V
    .locals 1
    .param p1, "token"    # I

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    .line 817
    return-void
.end method

.method private broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;
    .param p2, "token"    # I

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.PRE_ALERTING_CALL_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string v1, "pre_alerting_call_phoneId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    if-nez p1, :cond_0

    .line 825
    const-string v1, "broadcastPreAlertingCallIntent for end state"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_ENDED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 829
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 830
    .local v1, "ccExtra":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 831
    sget-object v2, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 835
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/EcnamInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 836
    .local v2, "ecnamExtra":Landroid/os/Bundle;
    :goto_0
    if-eqz v2, :cond_3

    .line 837
    sget-object v3, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_ECNAM:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 839
    :cond_3
    nop

    .line 840
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getModemCallId()I

    move-result v3

    .line 839
    const-string v4, "modemCallId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v3, "isDcCall"

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getIsDcCall()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 844
    .end local v1    # "ccExtra":Landroid/os/Bundle;
    .end local v2    # "ecnamExtra":Landroid/os/Bundle;
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.qti.permission.RECEIVE_PRE_ALERTING_CALL_INFO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 9
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 461
    new-instance v8, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 462
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v6

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 463
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v7

    move-object v0, v8

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    .line 464
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 465
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 466
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 468
    return-object v0
.end method

.method private createIncomingCallBundle(ZZ)Landroid/os/Bundle;
    .locals 2
    .param p1, "isUssd"    # Z
    .param p2, "isUnknown"    # Z

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.telephony.ims.feature.extra.IS_USSD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string v1, "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-object v0
.end method

.method private createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 472
    new-instance v7, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 473
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v4

    move-object v0, v7

    move-object v1, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsUssdSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V

    .line 474
    .local v0, "session":Lorg/codeaurora/ims/ImsUssdSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 475
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 476
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 478
    return-object v0
.end method

.method private static getToken()I
    .locals 2

    .line 795
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    .line 796
    return v0
.end method

.method private handleCloseAllSessions()V
    .locals 3

    .line 908
    const-string v0, "handleCloseAllSessions"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "call list"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 911
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v1, "pending call list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 913
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    const-string v1, "ussd list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 914
    return-void
.end method

.method private handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "isStart"    # Z

    .line 878
    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 883
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 884
    const-string v1, "handleIncomingDtmf ar.exception not null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 886
    return-void

    .line 888
    :cond_1
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 889
    .local v1, "dtmf":Ljava/lang/String;
    iget v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v2

    .line 890
    .local v2, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v2, :cond_2

    .line 891
    const-string v3, "handleIncomingDtmf Error: callSession is null"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    return-void

    .line 894
    :cond_2
    invoke-virtual {v2, p2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyIncomingDtmf(ZLjava/lang/String;)V

    .line 895
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 896
    return-void

    .line 879
    .end local v0    # "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    :goto_0
    const-string v0, "handleIncomingDtmf exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method private handleSrtpEncryptionInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 917
    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 922
    const-string v0, "handleSrtpEncryptionInfo ar.exception not null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    return-void

    .line 925
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 926
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 927
    .local v1, "callId":I
    iget v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 928
    .local v2, "category":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v3

    .line 929
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v3, :cond_2

    .line 930
    const-string v4, "handleSrtpEncryptionInfo Error: callSession is not found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 932
    return-void

    .line 934
    :cond_2
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySrtpEncryptionUpdate(I)V

    .line 935
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 936
    return-void

    .line 918
    .end local v0    # "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v1    # "callId":I
    .end local v2    # "category":I
    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    :goto_0
    const-string v0, " handleSrtpEncryptionInfo exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method private static isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z
    .locals 2
    .param p0, "hoInfo"    # Lorg/codeaurora/ims/HoInfo;

    .line 624
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 624
    :goto_0
    return v0
.end method

.method static synthetic lambda$notifyUssdAdded$0(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 734
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 735
    return-void
.end method

.method static synthetic lambda$notifyUssdRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 740
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 741
    return-void
.end method

.method private maybeBroadcastPreAlertingCallIntent(I)V
    .locals 2
    .param p1, "callId"    # I

    .line 807
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 808
    .local v0, "token":I
    if-eq v0, v1, :cond_0

    .line 809
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(I)V

    .line 810
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 812
    :cond_0
    return-void
.end method

.method private maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "disableVideo"    # Z

    .line 354
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-nez v0, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 361
    .local v0, "isVideoDisabled":Z
    if-ne v0, p2, :cond_1

    .line 362
    return-object p1

    .line 365
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 366
    .local v6, "srv":Lorg/codeaurora/ims/ServiceStatus;
    iget v7, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v7, v1, :cond_2

    .line 367
    iput v4, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 365
    .end local v6    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 370
    :cond_3
    return-object p1

    .line 356
    .end local v0    # "isVideoDisabled":Z
    :cond_4
    :goto_1
    return-object p1
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 714
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 715
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 716
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 727
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 728
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 729
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 730
    :cond_0
    return-void
.end method

.method private notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 733
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 736
    return-void
.end method

.method private notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 742
    return-void
.end method

.method private removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V
    .locals 4
    .param p2, "needToClose"    # Z
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/codeaurora/ims/QImsSessionBase;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 391
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    if-nez p1, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase;

    .line 396
    .local v1, "session":Lorg/codeaurora/ims/QImsSessionBase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAndNotifySessions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    if-eqz p2, :cond_1

    .line 398
    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QImsSessionBase;->terminate(I)V

    .line 399
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsSessionBase;->close()V

    .line 401
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 402
    instance-of v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_2

    .line 403
    move-object v2, v1

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_1

    .line 404
    :cond_2
    instance-of v2, v1, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    if-eqz v2, :cond_3

    .line 405
    move-object v2, v1

    check-cast v2, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 407
    .end local v1    # "session":Lorg/codeaurora/ims/QImsSessionBase;
    :cond_3
    :goto_1
    goto :goto_0

    .line 408
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    :cond_4
    return-void
.end method

.method private removeCallSessionsAfterSrvcc()V
    .locals 3

    .line 411
    const-string v0, "removeCallSessionsAfterSrvcc"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "call list"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v1, "pending list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 418
    return-void
.end method

.method private shallDisableVideo(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .line 335
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->canHoldVideoCall(ILandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    return v1

    .line 338
    :cond_0
    const/4 v0, 0x0

    .line 339
    .local v0, "hasActiveVoiceCall":Z
    const/4 v2, 0x0

    .line 340
    .local v2, "hasHeldVoiceCall":Z
    const/4 v3, 0x0

    .line 342
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/DriverCallIms;

    .line 343
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_1

    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 344
    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    or-int/2addr v0, v7

    .line 345
    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_2

    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 346
    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    or-int/2addr v2, v6

    .line 347
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_0

    .line 349
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 350
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v6

    .line 349
    :cond_6
    return v1
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 680
    if-eqz p1, :cond_1

    .line 686
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: Listener already added, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAllSessions()V
    .locals 2

    .line 904
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 905
    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 453
    const-string v0, "dialstring"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object v0

    goto :goto_1

    .line 455
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object v0

    .line 456
    :goto_1
    nop

    .line 457
    .local v0, "session":Lorg/codeaurora/ims/QImsSessionBase;
    return-object v0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 614
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 615
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 616
    return-object v2

    .line 618
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 619
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 489
    return-object v0
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 5
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v0

    .line 592
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 593
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 594
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    goto :goto_0

    .line 598
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 599
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 600
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 601
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_1

    .line 604
    :cond_4
    return-object v0
.end method

.method public getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 6
    .param p1, "state"    # I

    .line 551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 553
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 554
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 555
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    .line 556
    .local v3, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 557
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMultiparty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 560
    const-string v4, "ImsCallSession found with Multiparty bit set"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    :cond_0
    if-ne p1, v5, :cond_1

    .line 565
    const-string v4, "Foreground Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    return-object v2

    .line 567
    :cond_1
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 569
    const-string v4, "Background Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    return-object v2

    .line 571
    :cond_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_4

    :cond_3
    if-nez p1, :cond_4

    .line 574
    const-string v4, "Ringing Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    return-object v2

    .line 578
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v3    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_4
    goto :goto_0

    .line 580
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallsListToClear()Ljava/lang/Object;
    .locals 9

    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 184
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 185
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 187
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 188
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v4, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v4}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 189
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 190
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 191
    new-instance v5, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v5}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 192
    iget-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 193
    iget-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 194
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x83

    invoke-direct {v5, v8, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 196
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 198
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 201
    :cond_1
    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPreAlertingCallTokenList()Landroid/util/SparseIntArray;
    .locals 1

    .line 791
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getUssdCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 211
    .local v10, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->shallDisableVideo(Ljava/util/ArrayList;)Z

    move-result v11

    .line 212
    .local v11, "disableVideo":Z
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-eqz v9, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_b

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v8, v1, v11}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v13

    .line 215
    .local v13, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 220
    .local v2, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v3, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v4, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found match call session in temp list, s = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index in call list is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget v3, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v3, v2, v14}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 230
    .end local v2    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_1

    .line 233
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    iget-object v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v2, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 234
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v15, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v15, :cond_2

    .line 238
    invoke-virtual {v15, v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_4

    .line 240
    :cond_2
    const/16 v16, 0x0

    .line 241
    .local v16, "isUnknown":Z
    iget-object v0, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_3

    .line 245
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {v8, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    .line 246
    goto/16 :goto_5

    .line 248
    :cond_3
    new-instance v17, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 249
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v6

    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v13

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    move-object/from16 v15, v17

    .line 250
    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v15, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 251
    iget-boolean v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v15, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 254
    iget-boolean v0, v13, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 255
    const-string v0, "MT Call creating a new call session"

    invoke-static {v8, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v8, v15, v0, v14}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_3

    .line 257
    :cond_4
    iget-boolean v0, v13, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_6

    .line 258
    const-string v0, "Conference Call creating a new call session"

    invoke-static {v8, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 262
    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v15}, Lorg/codeaurora/ims/ImsConferenceController;->processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v16

    .line 264
    if-eqz v16, :cond_5

    .line 265
    const-string v0, "Phantom conference call Scenario"

    invoke-static {v8, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_5
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v0, v15, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 269
    :goto_2
    invoke-virtual {v15, v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_3

    .line 270
    :cond_6
    iget-object v0, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_7

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO phantom Call Scenario. State = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/16 v16, 0x1

    .line 274
    :cond_7
    :goto_3
    if-eqz v16, :cond_8

    .line 275
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v8, v15, v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 279
    .end local v16    # "isUnknown":Z
    :cond_8
    :goto_4
    iget-object v0, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_9

    .line 280
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_9
    iget-object v0, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_a

    .line 283
    iget v0, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {v8, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    .line 212
    .end local v13    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v15    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_a
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 290
    .end local v12    # "i":I
    :cond_b
    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 291
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCalls: removing dropped/ended call id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v8, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {v8, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 303
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_c
    goto :goto_6

    .line 304
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_d
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 13
    .param p1, "handover"    # Lorg/codeaurora/ims/HoInfo;

    .line 629
    const-string v0, "in handleHandover"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-static {p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 632
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeCallSessionsAfterSrvcc()V

    .line 635
    :cond_0
    return-void

    .line 638
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " srcTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tarTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 640
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " extraType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " extraInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errorMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "showHandoverToast":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 648
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 649
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 650
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 651
    .local v4, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v4, :cond_2

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleHandover: null callsession. Key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v7

    .line 656
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v8

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v9

    .line 657
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v10

    .line 658
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    .line 655
    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    .line 659
    if-nez v0, :cond_3

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 660
    const/4 v0, 0x1

    .line 662
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_0

    .line 664
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_4
    if-eqz v0, :cond_7

    .line 665
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 666
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_5

    .line 667
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_7

    .line 668
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_6

    .line 669
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_7

    .line 670
    :cond_6
    const-string v1, "Switching to LTE network for better quality"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    :cond_7
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    const/4 v0, 0x1

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 865
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 866
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrtpEncryptionInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 867
    goto :goto_1

    .line 862
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCloseAllSessions()V

    .line 863
    goto :goto_1

    .line 858
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 859
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    .line 860
    goto :goto_1

    .line 854
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 855
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    .line 856
    goto :goto_1

    .line 869
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_1
    goto :goto_2

    .line 871
    :catch_0
    move-exception v1

    .line 872
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 431
    if-eqz p1, :cond_1

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v2, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    goto :goto_0

    .line 437
    :cond_0
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 440
    :cond_1
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    :goto_1
    return-void
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 12
    .param p1, "info"    # Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSuppSvcUnsol connId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 502
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 503
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_2

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "startOnHoldLocalTone":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "forwardedCallHistory":Ljava/lang/String;
    const/4 v3, 0x0

    .line 507
    .local v3, "callHistory":[Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 508
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 510
    :cond_0
    new-instance v11, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 511
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getCode()I

    move-result v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getIndex()I

    move-result v7

    .line 512
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v8

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    move-object v4, v11

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 514
    .local v4, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHoldTone()Z

    move-result v1

    .line 517
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, v4, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 520
    .end local v1    # "startOnHoldLocalTone":Z
    .end local v2    # "forwardedCallHistory":Ljava/lang/String;
    .end local v3    # "callHistory":[Ljava/lang/String;
    .end local v4    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    goto :goto_0

    .line 521
    :cond_2
    const-string v1, "No call session found for number: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 531
    const/4 v0, 0x0

    .line 534
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 535
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 538
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 539
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 540
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 541
    goto :goto_1

    .line 543
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 545
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 546
    const-string v1, "No Active call session found for TTY mode change"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    :cond_2
    return-void
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public onCallClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 374
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 375
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 376
    const-string v1, "onCallClosed: call session not in terminated state. Ignore."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing pending session on close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 387
    :cond_1
    return-void
.end method

.method public onPreAlertingCallDataAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 800
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getToken()I

    move-result v0

    .line 801
    .local v0, "token":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    .line 803
    return-void
.end method

.method public onUssdClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUssdClosed for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 423
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing session on close "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 428
    :cond_0
    return-void
.end method

.method public onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 6
    .param p1, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 314
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 318
    .local v0, "isErrorCase":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 319
    const-string v1, "onUssdMessageReceived: ongoing USSD session"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    return-void

    .line 323
    :cond_0
    if-eqz v0, :cond_1

    .line 324
    const-string v1, "onUssdMessageReceived: received empty message"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    return-void

    .line 328
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 330
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v4

    .line 331
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object v3

    .line 330
    invoke-virtual {v2, v4, v3}, Lorg/codeaurora/ims/ImsServiceSub;->handleNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 699
    if-eqz p1, :cond_1

    .line 705
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 700
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportIncomingCall :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUnknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 748
    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 747
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceSub;->handleNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 749
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 750
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 3
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVoiceSupported"    # Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 159
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 162
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 163
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 169
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLowBatteryStatus()V

    .line 170
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 4
    .param p1, "quality"    # I

    .line 758
    const/4 v0, 0x0

    .line 761
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 762
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 764
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 765
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V

    .line 766
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    goto :goto_0

    .line 767
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    return-void
.end method
