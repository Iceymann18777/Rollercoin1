.class Lcom/mopub/mobileads/RewardedAdsLoaders;
.super Ljava/lang/Object;
.source "RewardedAdsLoaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedVideoRequestListener;
    }
.end annotation


# instance fields
.field private final mAdUnitToAdLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/AdLoaderRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final moPubRewardedVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->moPubRewardedVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/RewardedAdsLoaders;)Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->moPubRewardedVideoManager:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object p0
.end method


# virtual methods
.method canPlay(Ljava/lang/String;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 121
    :cond_c
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->getLastDeliveredResponse()Lcom/mopub/network/AdResponse;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method clearMapping()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method creativeDownloadSuccess(Ljava/lang/String;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    if-nez p1, :cond_b

    return-void

    .line 136
    :cond_b
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->creativeDownloadSuccess()V

    return-void
.end method

.method getLoadersMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/AdLoaderRewardedVideo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    return-object v0
.end method

.method hasMoreAds(Ljava/lang/String;)Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    if-eqz p1, :cond_12

    .line 127
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->hasMoreAds()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method isLoading(Ljava/lang/String;)Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method loadNextAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)Lcom/mopub/volley/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 54
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    if-eqz v0, :cond_16

    .line 59
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 60
    :cond_16
    new-instance v0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    sget-object v4, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    new-instance v7, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedVideoRequestListener;

    invoke-direct {v7, p0, p2}, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedVideoRequestListener;-><init>(Lcom/mopub/mobileads/RewardedAdsLoaders;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    .line 65
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2b
    invoke-virtual {v0, p4}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    return-object p1
.end method

.method markFail(Ljava/lang/String;)V
    .registers 3

    .line 76
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method markPlayed(Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method onRewardedVideoClicked(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 104
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    if-nez p1, :cond_11

    return-void

    .line 112
    :cond_11
    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->trackClick(Landroid/content/Context;)V

    return-void
.end method

.method onRewardedVideoStarted(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->mAdUnitToAdLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/AdLoaderRewardedVideo;

    if-nez p1, :cond_11

    return-void

    .line 100
    :cond_11
    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->trackImpression(Landroid/content/Context;)V

    return-void
.end method
