.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackDisabledAdapter.java"


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .registers 1

    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public loadFullscreen()V
    .registers 1

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

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 40
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_e

    .line 41
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 42
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_e
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    return-void
.end method
