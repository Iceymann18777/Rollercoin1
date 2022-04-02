.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackFacebookAdapter.java"


# instance fields
.field private adListener:Lcom/facebook/ads/AdListener;

.field private adView:Lcom/facebook/ads/AdView;

.field private bannerPlacementId:Ljava/lang/String;

.field private bannerRequestFailReported:Z

.field private bannerViewRefreshRunnable:Ljava/lang/Runnable;

.field private bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

.field private fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

.field private fullscreenPlacementId:Ljava/lang/String;

.field private interstitialAd:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    .line 150
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$2;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    .line 171
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$s7j7-AwOcWdxkvWG6YBHdOfryWo;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$s7j7-AwOcWdxkvWG6YBHdOfryWo;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerRequestFailReported:Z

    return p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerRequestFailReported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adListener:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/InterstitialAd;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method


# virtual methods
.method protected init()V
    .registers 9

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    const-string v1, "net_name_FS"

    const-string v2, "net_name"

    const-string v3, "ad_source"

    const-string v4, "ft_facebook_custom"

    const-string v5, "ft_facebook"

    const-string v6, "fastTrackTag"

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomFullscreenActivated()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebook fullscreen: custom"

    .line 57
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 59
    :cond_53
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebook fullscreen: platform"

    .line 62
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_68
    const-string v0, "facebook fullscreen disabled"

    .line 65
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_6d
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomBannerActivated()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebook banner: custom"

    .line 73
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 75
    :cond_9b
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebook banner: platform"

    .line 78
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_b0
    const-string v0, "facebook banner disabled"

    .line 81
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b5
    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 8

    .line 87
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_55

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook banner initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    .line 91
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adListener:Lcom/facebook/ads/AdListener;

    const-string p2, "admob banner attempt to attach bannerView to container"

    .line 143
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 145
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_55
    return-void
.end method

.method public synthetic lambda$new$1$FastTrackFacebookAdapter()V
    .registers 3

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->pendingFullscreenRequest:Z

    .line 352
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_c

    .line 353
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_c
    const-string v0, "fastTrackTag"

    const-string v1, "facebook fullscreen not loaded, cancelling wait"

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$showFullscreen$0$FastTrackFacebookAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    .line 325
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    return-void
.end method

.method public loadFullscreen()V
    .registers 6

    .line 198
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 199
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook fullscreen initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V

    const-string v2, "facebook fullscreen attempt to load"

    .line 284
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fs id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 288
    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v2

    .line 289
    invoke-interface {v2, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    .line 287
    invoke-virtual {v1, v0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 291
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_interstitial_sdk_request"

    .line 292
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_7b
    return-void
.end method

.method public loadNativeAds(I)V
    .registers 2

    return-void
.end method

.method public loadRewardedVideo()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 382
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    .line 383
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_23

    .line 384
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v0, "fastTrackTag"

    const-string v2, "facebook banner attempt to detach bannerView from container"

    .line 385
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 387
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 389
    :cond_1c
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 390
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->adView:Lcom/facebook/ads/AdView;

    .line 392
    :cond_23
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string p1, "appsgeyserSdk_lastRequestTiming"

    const-string v0, "fastTrackTag"

    if-eqz p3, :cond_26

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-wide/16 v3, 0x0

    .line 301
    invoke-virtual {p3, p1, v3, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 302
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->getFullscreenFrequencyTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v3, p3

    cmp-long p3, v1, v3

    if-gtz p3, :cond_26

    const-string p1, "facebook fullscreen show request was cancelled due to frequency timing settings"

    .line 303
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_26
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 307
    invoke-virtual {p3, p1, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    const-string p1, "facebook fullscreen show request"

    .line 309
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_3d

    .line 311
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 313
    :cond_3d
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_c5

    .line 314
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz p1, :cond_b6

    .line 315
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "details"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_interstitial_sdk_attempt"

    .line 317
    invoke-virtual {p1, v2, p2, v1, p3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 319
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "facebook fullscreen attempt to show"

    .line 320
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 322
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 323
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_9e
    const-string p1, "facebook fullscreen not loaded yet, waiting for load"

    .line 332
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->pendingFullscreenRequest:Z

    .line 334
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->getFullscreenPendingDelayTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d3

    :cond_b6
    const-string p1, "facebook fullscreen disabled"

    .line 337
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 339
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    goto :goto_d3

    :cond_c5
    const-string p1, "facebook fullscreen attempt to show canceled due to intensity settings"

    .line 343
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_d3

    .line 345
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_d3
    :goto_d3
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .registers 3

    .line 365
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    return-void
.end method
