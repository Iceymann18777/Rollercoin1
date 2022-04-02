.class public abstract Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "SourceFile"


# static fields
.field protected static final AppnextAutoPlayExtraKey:Ljava/lang/String; = "AppnextAutoPlay"

.field protected static final AppnextBackButtonCanCloseExtraKey:Ljava/lang/String; = "AppnextBackButtonCanClose"

.field protected static final AppnextBannerSizeExtraKey:Ljava/lang/String; = "AppnextBannerSize"

.field protected static final AppnextButtonColorExtraKey:Ljava/lang/String; = "AppnextButtonColor"

.field protected static final AppnextCategoriesExtraKey:Ljava/lang/String; = "AppnextCategories"

.field protected static final AppnextCloseDelayExtraKey:Ljava/lang/String; = "AppnextCloseDelay"

.field public static final AppnextConfigurationExtraKey:Ljava/lang/String; = "AppnextConfiguration"

.field protected static final AppnextCreativeTypeExtraKey:Ljava/lang/String; = "AppnextCreativeType"

.field protected static final AppnextLanguageExtraKey:Ljava/lang/String; = "AppnextLanguage"

.field protected static final AppnextMaxVideoLenExtraKey:Ljava/lang/String; = "AppnextMaxVideoLen"

.field protected static final AppnextMinVideoLenExtraKey:Ljava/lang/String; = "AppnextMinVideoLen"

.field protected static final AppnextMultiTimerLengthExtraKey:Ljava/lang/String; = "AppnextMultiTimerLength"

.field protected static final AppnextMuteExtraKey:Ljava/lang/String; = "AppnextMute"

.field protected static final AppnextOrientationExtraKey:Ljava/lang/String; = "AppnextOrientation"

.field protected static final AppnextPlacementIdExtraKey:Ljava/lang/String; = "AppnextPlacementId"

.field protected static final AppnextPostbackExtraKey:Ljava/lang/String; = "AppnextPostback"

.field protected static final AppnextProgressColorExtraKey:Ljava/lang/String; = "AppnextProgressColor"

.field protected static final AppnextProgressTypeExtraKey:Ljava/lang/String; = "AppnextProgressType"

.field public static final AppnextRewardPostbackExtraKey:Ljava/lang/String; = "AppnextRewardPostback"

.field protected static final AppnextRollCapTimeExtraKey:Ljava/lang/String; = "AppnextRollCapTime"

.field protected static final AppnextShowCloseExtraKey:Ljava/lang/String; = "AppnextShowClose"

.field protected static final AppnextShowCtaExtrakey:Ljava/lang/String; = "AppnextShowCta"

.field protected static final AppnextSkipTextExtraKey:Ljava/lang/String; = "AppnextSkipText"

.field protected static final AppnextVideoLengthExtraKey:Ljava/lang/String; = "AppnextVideoLength"

.field protected static final AppnextVideoModeExtraKey:Ljava/lang/String; = "AppnextVideoMode"


# instance fields
.field protected mAd:Lcom/appnext/core/Ad;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object p0
.end method


# virtual methods
.method protected abstract createAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/core/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/core/Ad;"
        }
    .end annotation
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->createAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/core/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    if-nez p1, :cond_16

    .line 92
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 98
    :cond_16
    :try_start_16
    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$1;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$1;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 106
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$2;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$2;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 114
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$3;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$3;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 123
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$4;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$4;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 131
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 156
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {p1}, Lcom/appnext/core/Ad;->loadAd()V
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "requestInterstitialAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 1

    return-void
.end method

.method protected showInterstitial()V
    .registers 4

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->showAd()V

    goto :goto_2c

    .line 175
    :cond_e
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_2c
    return-void
.end method
