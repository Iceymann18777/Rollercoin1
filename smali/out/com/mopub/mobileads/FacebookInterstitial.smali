.class public Lcom/mopub/mobileads/FacebookInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "FacebookInterstitial.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field private static final ONE_HOURS_MILLIS:I = 0x36ee80

.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private mAdExpiration:Ljava/lang/Runnable;

.field private mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field private mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

.field private mHandler:Landroid/os/Handler;

.field private mPlacementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    .line 66
    new-instance v0, Lcom/mopub/mobileads/FacebookInterstitial$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/FacebookInterstitial$1;-><init>(Lcom/mopub/mobileads/FacebookInterstitial;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private cancelExpirationTimer()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "placement_id"

    .line 280
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mPlacementId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .registers 7

    .line 90
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 94
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    :cond_f
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/FacebookInterstitial;->setAutomaticImpressionAndClickTracking(Z)V

    .line 99
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 100
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/FacebookInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_84

    const-string v1, "placement_id"

    .line 101
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mPlacementId:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 112
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v3, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    const-string p1, "adm"

    .line 114
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    .line 117
    invoke-virtual {p2}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p2

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 120
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {p2, p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 121
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_83

    .line 123
    :cond_6b
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {p2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_83
    return-void

    .line 104
    :cond_84
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_b0

    .line 105
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 106
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 107
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v0

    .line 106
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_b0
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 235
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1a

    .line 237
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_1a
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 170
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->cancelExpirationTimer()V

    .line 171
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_1d

    .line 172
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 173
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 175
    :cond_1d
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 7

    .line 180
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->cancelExpirationTimer()V

    .line 183
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d9

    if-eq p1, p2, :cond_34

    const/16 p2, 0x834

    if-eq p1, p2, :cond_31

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_2e

    packed-switch p1, :pswitch_data_6e

    packed-switch p1, :pswitch_data_78

    .line 212
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 200
    :pswitch_1c
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 188
    :pswitch_1f
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 197
    :pswitch_22
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 194
    :pswitch_25
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 185
    :pswitch_28
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 191
    :pswitch_2b
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 203
    :cond_2e
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 209
    :cond_31
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_36

    .line 206
    :cond_34
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 215
    :goto_36
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 217
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-nez p2, :cond_63

    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_63

    .line 218
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_6c

    .line 219
    :cond_63
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p2, :cond_6c

    .line 220
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_6c
    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x3e8
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x7d0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public onInterstitialActivityDestroyed()V
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_9
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .registers 2

    .line 252
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_9

    .line 253
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_9
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 226
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->cancelExpirationTimer()V

    .line 227
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1d

    .line 229
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    :cond_1d
    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 151
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->cancelExpirationTimer()V

    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_d

    .line 153
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    :cond_d
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 243
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Facebook interstitial ad logged impression."

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 245
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1f

    .line 246
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_1f
    return-void
.end method

.method public onRewardedAdCompleted()V
    .registers 1

    return-void
.end method

.method public onRewardedAdServerFailed()V
    .registers 1

    return-void
.end method

.method public onRewardedAdServerSucceeded()V
    .registers 1

    return-void
.end method

.method protected show()V
    .registers 8

    .line 130
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    .line 132
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 134
    invoke-direct {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->cancelExpirationTimer()V

    goto :goto_7f

    .line 136
    :cond_2c
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 137
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 136
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Tried to show a Facebook interstitial ad when it\'s not ready. Please try again."

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_6c

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/FacebookInterstitial;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_7f

    .line 143
    :cond_6c
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/FacebookInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Interstitial listener not instantiated. Please load interstitial again."

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_7f
    return-void
.end method
