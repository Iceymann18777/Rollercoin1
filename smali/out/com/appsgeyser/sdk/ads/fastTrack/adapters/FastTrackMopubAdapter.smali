.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackMopubAdapter.java"


# instance fields
.field private bannerClickReportedRecently:Z

.field private bannerPlacementId:Ljava/lang/String;

.field private bannerRequestFailReported:Z

.field private bannerView:Lcom/mopub/mobileads/MoPubView;

.field private bannerViewRefreshRunnable:Ljava/lang/Runnable;

.field private bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

.field private fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

.field private fullscreenPlacementId:Ljava/lang/String;

.field private interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

.field private isMopubRewardedVideosActive:Z

.field private noFillPlaceholder:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rewardedVideoPlacementId:Ljava/lang/String;

.field private rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    .line 227
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$3;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    .line 419
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$OM_ZjZHKIBJ16n_Cxe5sY-Ws4OE;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$OM_ZjZHKIBJ16n_Cxe5sY-Ws4OE;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    .line 561
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$S0W51ycs_kMa17kvH6mCMOThKEc;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$S0W51ycs_kMa17kvH6mCMOThKEc;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ProgressBar;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubInterstitial;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerRequestFailReported:Z

    return p0
.end method

.method static synthetic access$502(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerRequestFailReported:Z

    return p1
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ImageView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerClickReportedRecently:Z

    return p0
.end method

.method static synthetic access$702(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerClickReportedRecently:Z

    return p1
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected init()V
    .registers 9

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getRewardedVideoPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    const-string v1, "fastTrackTag"

    const-string v2, "net_name_FS"

    const-string v3, "net_name"

    const-string v4, "ad_source"

    const-string v5, "ft_mopub_custom"

    const-string v6, "ft_mopub"

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomFullscreenActivated()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub fullscreen: custom"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 75
    :cond_52
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub fullscreen: platform"

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 83
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomBannerActivated()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub banner: custom"

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 89
    :cond_94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub banner: platform"

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_ea

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomRewardedActivated()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub rewarded: custom"

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 103
    :cond_d6
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mopub rewarded: platform"

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_ea
    :goto_ea
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    goto :goto_113

    :cond_f7
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_104

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    goto :goto_113

    :cond_104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_111

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    goto :goto_113

    :cond_111
    const-string v0, ""

    .line 113
    :goto_113
    new-instance v1, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {v1, v0}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$1;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    invoke-static {v1, v0, v2}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 122
    new-instance v0, Lcom/mopub/mobileads/MoPubConversionTracker;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen()V

    .line 124
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 125
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getStartAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 126
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->disableSplash()V

    .line 127
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    const-string v4, "pas"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_15f
    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 10

    .line 133
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x8

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b9

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mopub banner initializing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fastTrackTag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Lcom/mopub/mobileads/MoPubView;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 139
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    const/high16 v5, 0x42480000    # 50.0f

    iget-object v6, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    .line 142
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 141
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v1, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 143
    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v4, v1}, Lcom/mopub/mobileads/MoPubView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    iget-object v6, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 145
    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 146
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 152
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    sget v3, Lcom/appsgeyser/sdk/R$drawable;->appsgeysersdk_banner_placeholder:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    const-string p2, "mopub banner attempt to attach bannerView to container"

    .line 220
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 222
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b9
    return-void
.end method

.method public synthetic lambda$new$1$FastTrackMopubAdapter()V
    .registers 3

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->pendingFullscreenRequest:Z

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_c

    .line 422
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_c
    const-string v0, "fastTrackTag"

    const-string v1, "mopub fullscreen not loaded, cancelling wait"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$new$2$FastTrackMopubAdapter()V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 564
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v1, :cond_1f

    .line 565
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 566
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :cond_1f
    return-void
.end method

.method public synthetic lambda$showFullscreen$0$FastTrackMopubAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    .line 394
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    .line 396
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    return-void
.end method

.method public loadFullscreen()V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 278
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mopub fullscreen initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$5;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$5;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    const-string v0, "mopub fullscreen attempt to load"

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uniqid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 360
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_interstitial_sdk_request"

    .line 361
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_76
    return-void
.end method

.method public loadNativeAds(I)V
    .registers 2

    return-void
.end method

.method public loadRewardedVideo()V
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 430
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mopub/common/MoPub;->onCreate(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->isMopubRewardedVideosActive:Z

    .line 432
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    const-string v1, "fastTrackTag"

    const-string v2, "mopub rewarded attempt to load"

    .line 526
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rewarded id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mopub/common/MediationSettings;

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 530
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_rewarded_sdk_request"

    .line 531
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_5d
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 592
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    .line 593
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_3a

    .line 594
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const-string v0, "fastTrackTag"

    const-string v2, "mopub banner attempt to detach bannerView from container"

    .line 595
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 597
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 599
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 601
    :cond_2a
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 602
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 603
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerView:Lcom/mopub/mobileads/MoPubView;

    .line 604
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 605
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->noFillPlaceholder:Landroid/widget/ImageView;

    .line 607
    :cond_3a
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->isMopubRewardedVideosActive:Z

    if-eqz v0, :cond_53

    .line 611
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mopub/common/MoPub;->onPause(Landroid/app/Activity;)V

    :cond_53
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 2

    .line 584
    invoke-super {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    .line 585
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->isMopubRewardedVideosActive:Z

    if-eqz p1, :cond_e

    .line 586
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mopub/common/MoPub;->onResume(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string p1, "appsgeyserSdk_lastRequestTiming"

    const-string v0, "fastTrackTag"

    if-eqz p3, :cond_26

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-wide/16 v3, 0x0

    .line 370
    invoke-virtual {p3, p1, v3, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 371
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->getFullscreenFrequencyTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v3, p3

    cmp-long p3, v1, v3

    if-gtz p3, :cond_26

    const-string p1, "mopub fullscreen show request was cancelled due to frequency timing settings"

    .line 372
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_26
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 376
    invoke-virtual {p3, p1, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    const-string p1, "mopub fullscreen show request"

    .line 378
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_3d

    .line 380
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 382
    :cond_3d
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_c5

    .line 383
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz p1, :cond_b6

    .line 384
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "details"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_interstitial_sdk_attempt"

    .line 386
    invoke-virtual {p1, v2, p2, v1, p3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 388
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->interstitialAd:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "mopub fullscreen attempt to show"

    .line 389
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 391
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 392
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$yvmQXjuLoJjtf0aE1UWIMYfx3jQ;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$yvmQXjuLoJjtf0aE1UWIMYfx3jQ;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_9e
    const-string p1, "mopub fullscreen not loaded yet, waiting for load"

    .line 401
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->pendingFullscreenRequest:Z

    .line 403
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->getFullscreenPendingDelayTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_b6
    const-string p1, "mopub fullscreen disabled"

    .line 406
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 408
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    goto :goto_d3

    :cond_c5
    const-string p1, "mopub fullscreen attempt to show canceled due to intensity settings"

    .line 412
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 414
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_d3
    :goto_d3
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .registers 5

    .line 538
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 539
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    .line 540
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->isMopubRewardedVideosActive:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 541
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 542
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoShowRequested:Z

    .line 543
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_66

    .line 544
    :cond_24
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoDownloadError:Z

    if-eqz p1, :cond_3c

    .line 545
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 546
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    goto :goto_66

    .line 548
    :cond_3c
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    if-nez p1, :cond_49

    .line 549
    new-instance p1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 551
    :cond_49
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 552
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    :cond_58
    const-string p1, "fastTrackTag"

    const-string p2, "Rewarded video placement disabled"

    .line 555
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    .line 557
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :goto_66
    return-void
.end method
