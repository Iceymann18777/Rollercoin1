.class public Lcom/mopub/mobileads/FacebookRewardedVideo;
.super Lcom/mopub/mobileads/BaseAd;
.source "FacebookRewardedVideo.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdExtendedListener;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field private static final ONE_HOURS_MILLIS:I = 0x36ee80

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private closeCallbackFired:Z

.field private mAdExpiration:Ljava/lang/Runnable;

.field private mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field private mHandler:Landroid/os/Handler;

.field private mPlacementId:Ljava/lang/String;

.field private mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-class v0, Lcom/mopub/mobileads/FacebookRewardedVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/FacebookRewardedVideo;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mPlacementId:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    .line 69
    new-instance v0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/FacebookRewardedVideo$1;-><init>(Lcom/mopub/mobileads/FacebookRewardedVideo;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mAdExpiration:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private cancelExpirationTimer()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hasVideoAvailable()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdInvalidated()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 2

    const/16 v0, 0x834

    if-eq p0, v0, :cond_26

    const/16 v0, 0xbb9

    if-eq p0, v0, :cond_23

    packed-switch p0, :pswitch_data_2a

    packed-switch p0, :pswitch_data_34

    .line 284
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 278
    :pswitch_11
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 270
    :pswitch_14
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 276
    :pswitch_17
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 274
    :pswitch_1a
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 268
    :pswitch_1d
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 272
    :pswitch_20
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 280
    :cond_23
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 282
    :cond_26
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x7d0
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
    .registers 3

    .line 98
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 102
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .registers 9

    .line 110
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->setAutomaticImpressionAndClickTracking(Z)V

    .line 115
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    const-string v1, "placement_id"

    .line 116
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mPlacementId:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2, p2}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 120
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_be

    .line 121
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v1, :cond_35

    .line 122
    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 125
    :cond_35
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v2, v0

    const-string v5, "Creating a Facebook Rewarded Video instance, and registering callbacks."

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 127
    new-instance v1, Lcom/facebook/ads/RewardedVideoAd;

    iget-object v2, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 139
    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 140
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_60

    .line 141
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 143
    :cond_60
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_70
    const-string p1, "adm"

    .line 147
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 150
    invoke-virtual {p2}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p2

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 153
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p2, p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 154
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_bd

    .line 156
    :cond_a5
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p2}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 157
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_bd
    return-void

    .line 129
    :cond_be
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_c9

    .line 130
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 132
    :cond_c9
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v1, v0

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 133
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v1, v2

    .line 132
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Placement ID is null or empty."

    aput-object v0, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 238
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_9

    .line 239
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 241
    :cond_9
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 227
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->cancelExpirationTimer()V

    .line 228
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mAdExpiration:Ljava/lang/Runnable;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_16

    .line 231
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 233
    :cond_16
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 9

    .line 246
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->cancelExpirationTimer()V

    .line 247
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_14

    .line 248
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 250
    :cond_14
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading/Playing Facebook Rewarded Video creative encountered an error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/mopub/mobileads/FacebookRewardedVideo;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 250
    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 254
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/FacebookRewardedVideo;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Lcom/mopub/mobileads/FacebookRewardedVideo;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 253
    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 6

    .line 170
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->cancelExpirationTimer()V

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_25

    .line 172
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Performing cleanup tasks..."

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    :cond_25
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 209
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->cancelExpirationTimer()V

    .line 210
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_11

    .line 211
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 212
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 214
    :cond_11
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoActivityDestroyed()V
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->closeCallbackFired:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_d

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_d
    return-void
.end method

.method public onRewardedVideoClosed()V
    .registers 2

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->closeCallbackFired:Z

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_c

    .line 221
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_c
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 200
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-static {v1, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    .line 203
    :cond_10
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 203
    invoke-static {v0, v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method protected show()V
    .registers 7

    .line 185
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 187
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    goto :goto_4d

    .line 189
    :cond_21
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_2c

    .line 190
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 192
    :cond_2c
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookRewardedVideo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 193
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    .line 192
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_4d
    return-void
.end method
