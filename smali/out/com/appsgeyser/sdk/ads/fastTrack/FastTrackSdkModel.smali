.class public Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;
.super Ljava/lang/Object;
.source "FastTrackSdkModel.java"


# instance fields
.field private additionalReportingParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_reporting_params"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private bannerPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_placement_id"
    .end annotation
.end field

.field private bannerPlacementsRefreshTimerMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_placements_refresh_timer_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contentRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_rating"
    .end annotation
.end field

.field private customBannerActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_banner_activated"
    .end annotation
.end field

.field private customFullscreenActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_fullscreen_activated"
    .end annotation
.end field

.field private customRewardedActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_rewarded_activated"
    .end annotation
.end field

.field private defaultBannerRefreshTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_refresh_timer"
    .end annotation
.end field

.field private defaultFullscreenIntensity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_intensity"
    .end annotation
.end field

.field private fullscreenFrequencyTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_frequency_timer"
    .end annotation
.end field

.field private fullscreenPendingDelayTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_pending_delay_timer"
    .end annotation
.end field

.field private fullscreenPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placement_id"
    .end annotation
.end field

.field private fullscreenPlacementsIntensityMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placements_intensity_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private nativeAdsPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_ads_placement_id"
    .end annotation
.end field

.field private rewardedPlacementsActivationMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewarded_placements_activation_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedVideoPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewarded_video_placement_id"
    .end annotation
.end field

.field private startAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startapp_id"
    .end annotation
.end field


# virtual methods
.method public getAdditionalReportingParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->additionalReportingParams:Ljava/util/Map;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPlacementId()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPlacementsRefreshTimerMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementsRefreshTimerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getContentRating()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultBannerRefreshTimer()Ljava/lang/Integer;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultBannerRefreshTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultFullscreenIntensity()Ljava/lang/Integer;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultFullscreenIntensity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenFrequencyTimer()Ljava/lang/Integer;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenFrequencyTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenPendingDelayTimer()Ljava/lang/Integer;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPendingDelayTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenPlacementId()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullscreenPlacementsIntensityMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsIntensityMap:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdsPlacementId()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativeAdsPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedPlacementsActivationMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedPlacementsActivationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardedVideoPlacementId()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAppId()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->startAppId:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomBannerActivated()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customBannerActivated:Z

    return v0
.end method

.method public isCustomFullscreenActivated()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customFullscreenActivated:Z

    return v0
.end method

.method public isCustomRewardedActivated()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customRewardedActivated:Z

    return v0
.end method
