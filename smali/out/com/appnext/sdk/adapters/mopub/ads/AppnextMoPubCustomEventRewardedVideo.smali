.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;
.super Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/core/Ad;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/core/Ad;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    :try_start_3
    const-string v1, "AppnextConfiguration"

    .line 50
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppnextRewardPostback"

    .line 51
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_12

    :cond_10
    move-object p2, v0

    move-object v1, p2

    .line 54
    :goto_12
    invoke-static {p3}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p0, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez v1, :cond_23

    .line 58
    new-instance v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {v1}, Lcom/appnext/ads/fullscreen/RewardedConfig;-><init>()V

    .line 61
    :cond_23
    move-object v3, v1

    check-cast v3, Lcom/appnext/core/Configuration;

    invoke-virtual {p0, v3, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    :cond_29
    if-eqz v1, :cond_3b

    .line 64
    instance-of p3, v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz p3, :cond_3b

    .line 65
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {p3, p0, p1, v2, v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    goto :goto_44

    .line 67
    :cond_3b
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p0, p1, v2}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V

    :goto_44
    move-object v0, p3

    if-eqz p2, :cond_75

    .line 70
    instance-of p1, p2, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_75

    .line 71
    check-cast p2, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 73
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    .line 72
    invoke-virtual/range {v3 .. v8}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_66

    goto :goto_75

    :catchall_66
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextMoPubCustomEventRewardedVideo createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    :goto_75
    return-object v0
.end method

.method protected hasAdConfigServerExtras(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 89
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->hasVideoConfigServerExtras(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_e
    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method protected setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/core/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 96
    instance-of v0, p1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-nez v0, :cond_7

    goto :goto_f

    .line 100
    :cond_7
    check-cast p1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    .line 102
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    .line 103
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/VideoConfig;Ljava/util/Map;)V

    :cond_f
    :goto_f
    return-void
.end method
