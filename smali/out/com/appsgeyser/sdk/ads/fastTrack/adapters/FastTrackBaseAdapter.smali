.class public abstract Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.super Ljava/lang/Object;
.source "FastTrackBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;,
        Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;
    }
.end annotation


# instance fields
.field final appDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bannerDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bannerViewContainer:Landroid/view/ViewGroup;

.field context:Landroid/content/Context;

.field fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

.field fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

.field handler:Landroid/os/Handler;

.field final interstitialDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isInForeground:Z

.field final nativeAdsDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingFullscreenRequest:Z

.field preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

.field progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

.field final rewardedDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rewardedVideoCurrentPlacement:Ljava/lang/String;

.field rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

.field videoDownloadError:Z

.field videoShowRequested:Z


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->appDetails:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->interstitialDetails:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->bannerDetails:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->rewardedDetails:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->nativeAdsDetails:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->isInForeground:Z

    .line 42
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    .line 43
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->context:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "widget_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wdid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getAdditionalReportingParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 49
    :try_start_4d
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getAdditionalReportingParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_56} :catch_57

    goto :goto_5e

    :catch_57
    const-string p1, "fastTrackTag"

    const-string v0, "NPE while adding reporting params"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_5e
    :goto_5e
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->handler:Landroid/os/Handler;

    .line 55
    new-instance p1, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p1, p2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 56
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->init()V

    return-void
.end method


# virtual methods
.method getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementsRefreshTimerMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementsRefreshTimerMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_1b

    return-object p1

    .line 71
    :cond_1b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getDefaultBannerRefreshTimer()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    .line 72
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getDefaultBannerRefreshTimer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_30

    :cond_2e
    const/16 p1, 0x3a98

    .line 71
    :goto_30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method getFullscreenFrequencyTimerValue()Ljava/lang/Integer;
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenFrequencyTimer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3a98

    if-lt v1, v2, :cond_15

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_18

    :cond_15
    const v0, 0x1d4c0

    .line 106
    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementsIntensityMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementsIntensityMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_1b

    return-object p1

    .line 99
    :cond_1b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getDefaultFullscreenIntensity()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    .line 100
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getDefaultFullscreenIntensity()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_30

    :cond_2e
    const/16 p1, 0x64

    .line 99
    :goto_30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getFullscreenListener()Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    return-object v0
.end method

.method getFullscreenPendingDelayTimerValue()Ljava/lang/Integer;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPendingDelayTimer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_15

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_17

    :cond_15
    const/16 v0, 0x3a98

    .line 113
    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x1

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getRewardedPlacementsActivationMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1c

    if-eqz p1, :cond_1c

    .line 161
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getRewardedPlacementsActivationMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    :cond_1c
    if-eqz v1, :cond_22

    .line 163
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected abstract init()V
.end method

.method public abstract initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end method

.method public abstract loadFullscreen()V
.end method

.method public abstract loadNativeAds(I)V
.end method

.method public abstract loadRewardedVideo()V
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->isInForeground:Z

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 78
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->context:Landroid/content/Context;

    :cond_c
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->isInForeground:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    return-void
.end method

.method public setProgressDialog(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-void
.end method

.method public abstract showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
.end method
