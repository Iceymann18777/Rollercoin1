.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackAdmobAdapter.java"


# instance fields
.field private adLoader:Lcom/google/android/gms/ads/AdLoader;

.field private bannerPlacementId:Ljava/lang/String;

.field private bannerRequestFailReported:Z

.field private bannerView:Lcom/google/android/gms/ads/AdView;

.field private bannerViewRefreshRunnable:Ljava/lang/Runnable;

.field private bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

.field private extras:Landroid/os/Bundle;

.field private fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

.field private fullscreenPlacementId:Ljava/lang/String;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private loadedNativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdsPlacementId:Ljava/lang/String;

.field private rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private rewardedVideoPlacementId:Ljava/lang/String;

.field private rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadedNativeAds:Ljava/util/List;

    .line 231
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$3;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    .line 441
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$CH_iu6GTvv5mNXnBrSL1WnaSyoY;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$CH_iu6GTvv5mNXnBrSL1WnaSyoY;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    .line 586
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$QFb6cEeNBWVdJsFvXmo_Nl6dLUM;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$QFb6cEeNBWVdJsFvXmo_Nl6dLUM;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerRequestFailReported:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerRequestFailReported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/AdView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Landroid/os/Bundle;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected init()V
    .registers 9

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getRewardedVideoPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getNativeAdsPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsPlacementId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    const-string v1, "net_name_FS"

    const-string v2, "net_name"

    const-string v3, "ad_source"

    const-string v4, "ft_admob_custom"

    const-string v5, "ft_admob"

    const-string v6, "fastTrackTag"

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomFullscreenActivated()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob fullscreen: custom"

    .line 74
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 76
    :cond_69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob fullscreen: platform"

    .line 79
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_7e
    const-string v0, "admob fullscreen disabled"

    .line 82
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_83
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomBannerActivated()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob banner: custom"

    .line 90
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 92
    :cond_b1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob banner: platform"

    .line 95
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :cond_c6
    const-string v0, "admob banner disabled"

    .line 98
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_cb
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_10e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10e

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomRewardedActivated()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 103
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob rewarded: custom"

    .line 106
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 108
    :cond_f9
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob rewarded: platform"

    .line 111
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_10e
    const-string v0, "admob rewarded disabled"

    .line 114
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_113
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_156

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomRewardedActivated()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 119
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob native: custom"

    .line 122
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 124
    :cond_141
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "admob native: platform"

    .line 127
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    :cond_156
    const-string v0, "admob native disabled"

    .line 130
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_15b
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 134
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->disableSplash()V

    .line 135
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    const-string v4, "pas"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 137
    :cond_18a
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getContentRating()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1a6

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 140
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    const-string v2, "max_ad_content_rating"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1a6
    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 6

    .line 146
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_60

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob banner initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    .line 150
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    const-string p2, "admob banner attempt to attach bannerView to container"

    .line 224
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 226
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_60
    return-void
.end method

.method public synthetic lambda$loadNativeAds$3$FastTrackAdmobAdapter(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 3

    .line 604
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadedNativeAds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$new$1$FastTrackAdmobAdapter()V
    .registers 3

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->pendingFullscreenRequest:Z

    .line 443
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_c

    .line 444
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_c
    const-string v0, "fastTrackTag"

    const-string v1, "admob fullscreen not loaded, cancelling wait"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$new$2$FastTrackAdmobAdapter()V
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 588
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 589
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 591
    :cond_c
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_23

    .line 592
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 593
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :cond_23
    return-void
.end method

.method public synthetic lambda$showFullscreen$0$FastTrackAdmobAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    .line 416
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    .line 418
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    return-void
.end method

.method public loadFullscreen()V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 279
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 280
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob fullscreen initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    const-string v0, "admob fullscreen attempt to load"

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uniqid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_72

    goto :goto_77

    :cond_72
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 379
    :goto_77
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 382
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_interstitial_sdk_request"

    .line 383
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_90
    return-void
.end method

.method public loadNativeAds(I)V
    .registers 6

    .line 599
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 600
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->nativeAdsPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$rE5CI0zEOyCW1K7MLo2EcS_vU5c;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$rE5CI0zEOyCW1K7MLo2EcS_vU5c;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    .line 602
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$6;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    .line 607
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 644
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_37

    goto :goto_3c

    :cond_37
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 645
    :goto_3c
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 644
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAds(Lcom/google/android/gms/ads/AdRequest;I)V

    :cond_47
    return-void
.end method

.method public loadRewardedVideo()V
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 452
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 453
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded attempt to load"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewarded id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uniqid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_56

    goto :goto_5b

    :cond_56
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 552
    :goto_5b
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 554
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    .line 551
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 555
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_rewarded_sdk_request"

    .line 556
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_74
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 674
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    .line 675
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_23

    .line 676
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v0, "fastTrackTag"

    const-string v2, "admob banner attempt to detach bannerView from container"

    .line 677
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 679
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 681
    :cond_1c
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 682
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    .line 684
    :cond_23
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 685
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 687
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_3a

    .line 688
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->pause(Landroid/content/Context;)V

    :cond_3a
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 3

    .line 666
    invoke-super {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    .line 667
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz p1, :cond_c

    .line 668
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string p1, "appsgeyserSdk_lastRequestTiming"

    const-string v0, "fastTrackTag"

    if-eqz p3, :cond_26

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-wide/16 v3, 0x0

    .line 392
    invoke-virtual {p3, p1, v3, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 393
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->getFullscreenFrequencyTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v3, p3

    cmp-long p3, v1, v3

    if-gtz p3, :cond_26

    const-string p1, "admob fullscreen show request was cancelled due to frequency timing settings"

    .line 394
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_26
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 398
    invoke-virtual {p3, p1, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    const-string p1, "admob fullscreen show request"

    .line 400
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_3d

    .line 402
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 404
    :cond_3d
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_c5

    .line 405
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p1, :cond_b6

    .line 406
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "details"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_interstitial_sdk_attempt"

    .line 408
    invoke-virtual {p1, v2, p2, v1, p3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 410
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "admob fullscreen attempt to show"

    .line 411
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 413
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 414
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$6sIzaOit_HD_P5rBIrvUtAo52c8;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$6sIzaOit_HD_P5rBIrvUtAo52c8;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_9e
    const-string p1, "admob fullscreen not loaded yet, waiting for load"

    .line 423
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->pendingFullscreenRequest:Z

    .line 425
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->getFullscreenPendingDelayTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_b6
    const-string p1, "admob fullscreen disabled"

    .line 428
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 430
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    goto :goto_d3

    :cond_c5
    const-string p1, "admob fullscreen attempt to show canceled due to intensity settings"

    .line 434
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 436
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_d3
    :goto_d3
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .registers 5

    .line 563
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 564
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    .line 565
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 566
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoShowRequested:Z

    .line 568
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    goto :goto_66

    .line 569
    :cond_24
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoDownloadError:Z

    if-eqz p1, :cond_3c

    .line 570
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 571
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    goto :goto_66

    .line 573
    :cond_3c
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    if-nez p1, :cond_49

    .line 574
    new-instance p1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 576
    :cond_49
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 577
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    :cond_58
    const-string p1, "fastTrackTag"

    const-string p2, "Rewarded video placement disabled"

    .line 580
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    .line 582
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :goto_66
    return-void
.end method
