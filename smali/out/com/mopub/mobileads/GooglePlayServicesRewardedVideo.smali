.class public Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "GooglePlayServicesRewardedVideo.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "0.1.0"

.field private static final KEY_EXTRA_AD_UNIT_ID:Ljava/lang/String; = "adunit"

.field private static final KEY_EXTRA_APPLICATION_ID:Ljava/lang/String; = "appid"

.field private static final TAG:Ljava/lang/String; = "MoPubToAdMobRewarded"

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private mLifecycleListener:Lcom/mopub/common/LifecycleListener;

.field private mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 59
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;-><init>(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mLifecycleListener:Lcom/mopub/common/LifecycleListener;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object p0
.end method

.method private getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 3

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 261
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 258
    :cond_e
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 255
    :cond_11
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 252
    :cond_14
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 249
    :cond_17
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_19
    return-object p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    const-class p2, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    sget-object v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_58

    const-string v0, "MoPubToAdMobRewarded"

    const-string v3, "Adapter version - 0.1.0"

    .line 109
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "appid"

    .line 111
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    goto :goto_2e

    .line 114
    :cond_25
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2e
    const-string v0, "adunit"

    .line 117
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 122
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 120
    invoke-static {p2, p1, p3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v2

    .line 127
    :cond_46
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 130
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return v1

    :cond_58
    return v2
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    const-class p2, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    const-string v0, "adunit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 147
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 145
    invoke-static {p2, p1, p3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 151
    :cond_1a
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 153
    iget-object p3, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez p3, :cond_2f

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 155
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 158
    :cond_2f
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 159
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 160
    invoke-static {p2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_53

    .line 162
    :cond_3d
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    new-instance p3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v0, "MoPub"

    .line 163
    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    :goto_53
    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 98
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 99
    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    :cond_a
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .registers 5

    .line 217
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 220
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result p1

    invoke-static {v2, p1}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object p1

    .line 217
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 3

    .line 205
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .registers 4

    .line 232
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 235
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    .line 232
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .registers 3

    .line 225
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 3

    .line 186
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 3

    .line 198
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method protected showVideo()V
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    goto :goto_18

    .line 177
    :cond_c
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_18
    return-void
.end method
