.class public Lcom/facebook/ads/RewardedVideoAd;
.super Ljava/lang/Object;
.source "RewardedVideoAd.java"

# interfaces
.implements Lcom/facebook/ads/FullScreenAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;,
        Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;,
        Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;,
        Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    }
.end annotation


# static fields
.field public static final UNSET_VIDEO_DURATION:I = -0x1


# instance fields
.field private final mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createRewardedVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/facebook/ads/RewardedVideoAd;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->destroy()V

    return-void
.end method

.method public enableRVChain(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public isAdInvalidated()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->isAdInvalidated()Z

    move-result v0

    return v0
.end method

.method public isAdLoaded()Z
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd()V

    return-void
.end method

.method public loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    return-void
.end method

.method public loadAd(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd(Z)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAdFromBid(Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAdFromBid(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    return-void
.end method

.method public setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->setExtraHints(Lcom/facebook/ads/ExtraHints;)V

    return-void
.end method

.method public setRewardData(Lcom/facebook/ads/RewardData;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->setRewardData(Lcom/facebook/ads/RewardData;)V

    return-void
.end method

.method public show()Z
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->show()Z

    move-result v0

    return v0
.end method

.method public show(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->show(I)Z

    move-result p1

    return p1
.end method

.method public show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->mRewardedVideoAdApi:Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result p1

    return p1
.end method
