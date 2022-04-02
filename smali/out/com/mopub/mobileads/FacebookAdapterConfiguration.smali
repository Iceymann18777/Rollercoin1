.class public Lcom/mopub/mobileads/FacebookAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "FacebookAdapterConfiguration.java"


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "5.10.1.0"

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "facebook"

.field private static final NATIVE_BANNER_KEY:Ljava/lang/String; = "native_banner"

.field private static final PLACEMENT_IDS_KEY:Ljava/lang/String; = "placement_ids"

.field private static final SDK_VERSION:Ljava/lang/String; = "5.10.1"

.field private static isNativeBanner:Ljava/lang/Boolean;


# instance fields
.field private isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private tokenReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static getNativeBannerPref()Ljava/lang/Boolean;
    .registers 1

    .line 111
    sget-object v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    return-object v0
.end method

.method private refreshBidderToken(Landroid/content/Context;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;-><init>(Lcom/mopub/mobileads/FacebookAdapterConfiguration;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_17
    return-void
.end method

.method private static setNativeBannerPref(Ljava/lang/Boolean;)V
    .registers 1

    .line 115
    sput-object p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "5.10.1.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->refreshBidderToken(Landroid/content/Context;)V

    .line 52
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .registers 2

    const-string v0, "facebook"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "5.10.1"

    return-object v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/OnNetworkInitializationFinishedListener;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    const-class v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    monitor-enter v0

    .line 77
    :try_start_9
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_48

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "placement_ids"

    .line 81
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v1, "\\s*,\\s*"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_37
    const-string v2, "native_banner"

    .line 87
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    .line 89
    invoke-static {p2}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setNativeBannerPref(Ljava/lang/Boolean;)V

    .line 92
    :cond_48
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_71

    .line 93
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 94
    invoke-interface {p1, v1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withPlacementIds(Ljava/util/List;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    const-string p2, "MOPUB_5.13.1:5.10.1.0"

    .line 95
    invoke-interface {p1, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_60

    goto :goto_71

    :catchall_60
    move-exception p1

    .line 99
    :try_start_61
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Initializing Facebook Audience Network has encountered an exception."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 105
    :cond_71
    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_7c

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :catchall_7c
    move-exception p1

    .line 105
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p1
.end method
