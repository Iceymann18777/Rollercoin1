.class public Lcom/mopub/mobileads/MoPubRewardedVideo;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
    }
.end annotation


# static fields
.field static final MOPUB_REWARDED_VIDEO_ID:Ljava/lang/String; = "mopub_rewarded_video_id"


# instance fields
.field private mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 29
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mAdUnitId:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "mopub_rewarded_video_id"

    :goto_9
    return-object v0
.end method

.method getRewardedVastVideoInterstitial()Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    return-object v0
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

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-nez v0, :cond_15

    .line 54
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "mRewardedVastVideoInterstitial is null. Has this class been invalidated?"

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_15
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->onInvalidate()V

    :cond_7
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 44
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    return-void
.end method

.method setRewardedVastVideoInterstitial(Lcom/mopub/mobileads/RewardedVastVideoInterstitial;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    return-void
.end method

.method protected show()V
    .registers 5

    .line 64
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-eqz v0, :cond_1d

    .line 65
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Showing MoPub rewarded video."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->showInterstitial()V

    goto :goto_28

    .line 68
    :cond_1d
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to show MoPub rewarded video"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_28
    return-void
.end method
