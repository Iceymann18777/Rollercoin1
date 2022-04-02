.class public Lcom/mopub/common/privacy/PersonalInfoManager;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;,
        Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_SYNC_DELAY:J = 0x493e0L


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

.field private final mConsentStatusChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/privacy/ConsentStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

.field private mForceGdprAppliesChanged:Z

.field private mForceGdprAppliesChangedSending:Z

.field private mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

.field private mLegitimateInterestAllowed:Z

.field private final mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

.field private mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

.field private mServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

.field private mSyncDelayMs:J

.field private mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field private mSyncRequestInFlight:Z

.field private final mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
    .registers 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    .line 65
    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    .line 75
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    .line 79
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    .line 81
    new-instance p1, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;

    .line 82
    new-instance p1, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;

    invoke-direct {p1, p0, v0}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 83
    invoke-static {p1}, Lcom/mopub/network/MultiAdResponse;->setServerOverrideListener(Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;)V

    .line 85
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 87
    new-instance p1, Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 89
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCachedLastAdUnitIdUsedForInit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 90
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setAdUnit(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCachedLastAdUnitIdUsedForInit(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 95
    :cond_66
    new-instance p1, Lcom/mopub/mobileads/MoPubConversionTracker;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 97
    new-instance p1, Lcom/mopub/common/privacy/PersonalInfoManager$1;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$1;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 136
    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    .line 138
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p2

    .line 140
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    .line 141
    invoke-direct {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->createInitializationListener()Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->setInitializationListener(Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/privacy/PersonalInfoManager;->fireOnConsentStateChangeListeners(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/common/privacy/PersonalInfoManager;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    return p0
.end method

.method static synthetic access$502(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mopub/common/privacy/PersonalInfoManager;)Ljava/lang/Long;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mopub/common/privacy/PersonalInfoManager;)J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/mopub/common/privacy/PersonalInfoManager;J)J
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    return p1
.end method

.method private attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .registers 3

    .line 496
    invoke-virtual {p2}, Lcom/mopub/common/privacy/ConsentChangeReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method private createInitializationListener()Lcom/mopub/common/SdkInitializationListener;
    .registers 2

    .line 605
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$5;

    invoke-direct {v0, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$5;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-object v0
.end method

.method private fireOnConsentStateChangeListeners(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .registers 14

    .line 591
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    monitor-enter v0

    .line 592
    :try_start_3
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    .line 593
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/mopub/common/privacy/PersonalInfoManager$4;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager$4;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 601
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    goto :goto_33

    :goto_32
    throw p1

    :goto_33
    goto :goto_32
.end method

.method static shouldMakeSyncRequest(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    if-nez p1, :cond_8

    return p0

    .line 403
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    return v0

    :cond_f
    if-eqz p2, :cond_12

    return p0

    :cond_12
    if-eqz p7, :cond_1b

    .line 409
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    if-nez p3, :cond_1e

    return p0

    .line 415
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long/2addr p1, p6

    cmp-long p3, p1, p4

    if-lez p3, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method private static shouldSetConsentedVersions(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z
    .registers 4

    .line 574
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 577
    :cond_a
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 581
    :cond_13
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 582
    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .registers 10

    .line 508
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->shouldReacquireConsent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3c

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 513
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consent status is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Not doing a state transition."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 518
    :cond_3c
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setLastChangedMs(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentChangeReason(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 523
    invoke-static {v0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->shouldSetConsentedVersions(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 524
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 525
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 527
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListVersion(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 529
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListIabFormat(Ljava/lang/String;)V

    .line 532
    :cond_85
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 533
    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 534
    :cond_95
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListVersion(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListIabFormat(Ljava/lang/String;)V

    .line 539
    :cond_a5
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 540
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    .line 541
    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/AdvertisingId;->getIfaWithPrefix()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-virtual {v1, v4}, Lcom/mopub/common/privacy/PersonalInfoData;->setUdid(Ljava/lang/String;)V

    .line 544
    :cond_c4
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 545
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentStatusBeforeDnt(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 547
    :cond_d1
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/PersonalInfoData;->setShouldReacquireConsent(Z)V

    .line 548
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 550
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 552
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->repopulateCountryData()V

    .line 553
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubConversionTracker;->shouldTrack()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 554
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    .line 558
    :cond_f7
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 560
    invoke-direct {p0, v0, p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->fireOnConsentStateChangeListeners(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method public canCollectPersonalInformation()Z
    .registers 5

    .line 232
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 240
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 245
    :cond_10
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v3}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    .line 246
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method changeConsentStateFromDialog(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 7

    .line 352
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/mopub/common/privacy/PersonalInfoManager$6;->$SwitchMap$com$mopub$common$privacy$ConsentStatus:[I

    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    .line 364
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid consent status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". This is a bug with the use of changeConsentStateFromDialog."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_43

    .line 360
    :cond_32
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 361
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    goto :goto_43

    .line 356
    :cond_3b
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :goto_43
    return-void
.end method

.method public forceGdprApplies()V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setForceGdprApplies(Z)V

    .line 293
    iput-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    .line 294
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 295
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eq v0, v1, :cond_2f

    .line 297
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 298
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v3

    .line 297
    invoke-direct {p0, v0, v3, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->fireOnConsentStateChangeListeners(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 300
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public gdprApplies()Ljava/lang/Boolean;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 278
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getGdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConsentData()Lcom/mopub/common/privacy/ConsentData;
    .registers 3

    .line 484
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoData;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    return-object v0
.end method

.method getPersonalInfoData()Lcom/mopub/common/privacy/PersonalInfoData;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    return-object v0
.end method

.method getServerOverrideListener()Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    return-object v0
.end method

.method public grantConsent()V
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 321
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot grant consent because Do Not Track is on."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 325
    :cond_22
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isWhitelisted()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 326
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    goto :goto_44

    .line 329
    :cond_32
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 334
    :goto_44
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public isConsentDialogReady()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->isReady()Z

    move-result v0

    return v0
.end method

.method public loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .registers 5

    .line 180
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/ManifestUtils;->checkGdprActivitiesDeclared(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_30

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$2;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void

    .line 198
    :cond_31
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4d

    if-eqz p1, :cond_4c

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$3;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4c
    return-void

    .line 213
    :cond_4d
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, p1, v0, v2}, Lcom/mopub/common/privacy/ConsentDialogController;->loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/PersonalInfoData;)V

    return-void
.end method

.method requestSync()V
    .registers 5

    .line 446
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    .line 452
    new-instance v1, Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    .line 453
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->chooseAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 455
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withUdid(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 456
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getLastChangedMs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 457
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getLastSuccessfullySyncedConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 458
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 459
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 461
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 462
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 463
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    .line 464
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 465
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 466
    iget-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    if-eqz v2, :cond_a2

    .line 467
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    .line 468
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 471
    :cond_a2
    new-instance v0, Lcom/mopub/common/privacy/SyncRequest;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    sget-object v3, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;

    invoke-direct {v0, v2, v1, v3}, Lcom/mopub/common/privacy/SyncRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/SyncRequest$Listener;)V

    .line 474
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public requestSync(Z)V
    .registers 11

    .line 425
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 431
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    .line 432
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 436
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getUdid()Ljava/lang/String;

    move-result-object v7

    .line 437
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v8

    move v3, p1

    .line 431
    invoke-static/range {v1 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager;->shouldMakeSyncRequest(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_31

    return-void

    .line 441
    :cond_31
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync()V

    return-void
.end method

.method public revokeConsent()V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 343
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot revoke consent because Do Not Track is on."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_22
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 348
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public setAllowLegitimateInterest(Z)V
    .registers 2

    .line 256
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLegitimateInterestAllowed:Z

    return-void
.end method

.method public shouldAllowLegitimateInterest()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLegitimateInterestAllowed:Z

    return v0
.end method

.method public shouldShowConsentDialog()Z
    .registers 3

    .line 150
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 151
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_24

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->shouldReacquireConsent()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    return v0

    .line 160
    :cond_17
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public showConsentDialog()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->showConsentDialog()Z

    move-result v0

    return v0
.end method

.method public subscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
