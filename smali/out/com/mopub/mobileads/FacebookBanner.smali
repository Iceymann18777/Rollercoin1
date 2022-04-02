.class public Lcom/mopub/mobileads/FacebookBanner;
.super Lcom/mopub/mobileads/BaseAd;
.source "FacebookBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field private mFacebookBanner:Lcom/facebook/ads/AdView;

.field private mPlacementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/mopub/mobileads/FacebookBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 56
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    return-void
.end method

.method private calculateAdSize(I)Lcom/facebook/ads/AdSize;
    .registers 3

    .line 203
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 204
    sget-object p1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 205
    :cond_b
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 206
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 209
    :cond_16
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1
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

    .line 197
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 198
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

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mPlacementId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .registers 8

    .line 61
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 65
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    :cond_f
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/FacebookBanner;->setAutomaticImpressionAndClickTracking(Z)V

    .line 70
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 71
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/FacebookBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_96

    const-string v2, "placement_id"

    .line 72
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->mPlacementId:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v2, p1, v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 83
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_35

    const/4 p2, 0x0

    goto :goto_3d

    :cond_35
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_3d
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/FacebookBanner;->calculateAdSize(I)Lcom/facebook/ads/AdSize;

    move-result-object p2

    .line 85
    new-instance v2, Lcom/facebook/ads/AdView;

    iget-object v4, p0, Lcom/mopub/mobileads/FacebookBanner;->mPlacementId:Ljava/lang/String;

    invoke-direct {v2, p1, v4, p2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    .line 87
    invoke-virtual {v2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    .line 88
    invoke-interface {p1, p0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    const-string p2, "adm"

    .line 90
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 92
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 93
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_95

    .line 95
    :cond_7d
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 96
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_95
    return-void

    .line 75
    :cond_96
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 76
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v0

    .line 75
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_c2

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_c2
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 181
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_9

    .line 182
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 184
    :cond_9
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 7

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Facebook banner ad loaded successfully. Showing ad..."

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2e

    .line 130
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 131
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 9

    .line 137
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Facebook banner ad failed to load."

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x834

    if-eq p1, p2, :cond_40

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_3d

    packed-switch p1, :pswitch_data_76

    packed-switch p1, :pswitch_data_80

    .line 167
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 158
    :pswitch_2b
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 146
    :pswitch_2e
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 155
    :pswitch_31
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 152
    :pswitch_34
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 143
    :pswitch_37
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 149
    :pswitch_3a
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 161
    :cond_3d
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_42

    .line 164
    :cond_40
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 170
    :goto_42
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v1

    invoke-static {p2, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 172
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-nez p2, :cond_6c

    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_6c

    .line 173
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_75

    .line 174
    :cond_6c
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p2, :cond_75

    .line 175
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x3e8
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x7d0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method protected onInvalidate()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_f

    .line 108
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    :cond_f
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 189
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Facebook banner ad logged impression."

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1f

    .line 192
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->mInteractionListener:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_1f
    return-void
.end method
