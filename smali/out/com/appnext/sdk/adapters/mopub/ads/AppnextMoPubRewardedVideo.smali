.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;,
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$CustomEventRewardedVideoAd;
    }
.end annotation


# instance fields
.field ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

.field adUnitId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method private init(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
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

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    const-string v0, "AppnextConfiguration"

    .line 110
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AppnextRewardPostback"

    .line 111
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com_mopub_ad_unit_id"

    .line 113
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 114
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 115
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->adUnitId:Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    .line 119
    :cond_1f
    :goto_1f
    invoke-static {p3}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-virtual {p0, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_36

    if-nez v0, :cond_30

    .line 123
    new-instance v0, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {v0}, Lcom/appnext/ads/fullscreen/RewardedConfig;-><init>()V

    .line 126
    :cond_30
    move-object v2, v0

    check-cast v2, Lcom/appnext/core/Configuration;

    invoke-virtual {p0, v2, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    :cond_36
    if-eqz v0, :cond_46

    .line 129
    instance-of p3, v0, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz p3, :cond_46

    .line 130
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$CustomEventRewardedVideoAd;

    check-cast v0, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    iput-object p3, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    goto :goto_4d

    .line 132
    :cond_46
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$CustomEventRewardedVideoAd;

    invoke-direct {p3, p0, p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    :goto_4d
    if-eqz v1, :cond_6e

    .line 135
    instance-of p1, v1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_6e

    .line 136
    check-cast v1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 137
    iget-object v2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    .line 138
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual/range {v2 .. v7}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_6e
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    .line 152
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 160
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$3;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$3;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 168
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 176
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$5;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$5;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 184
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$6;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$6;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    return-void
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 5
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
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-nez v0, :cond_19

    .line 89
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->init(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextMoPubRewardedVideo createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    const-string v0, "appnext_id"

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

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

    .line 224
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

.method protected hasVideoAvailable()Z
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
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

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    .line 102
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz p1, :cond_a

    .line 103
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->loadAd()V

    :cond_a
    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_7

    .line 218
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->destroy()V

    :cond_7
    return-void
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

    if-eqz p1, :cond_12

    .line 231
    instance-of v0, p1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-nez v0, :cond_7

    goto :goto_12

    .line 235
    :cond_7
    check-cast p1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    .line 236
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    .line 237
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/VideoConfig;Ljava/util/Map;)V

    .line 238
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setRewardedVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/RewardedConfig;Ljava/util/Map;)V

    :cond_12
    :goto_12
    return-void
.end method

.method protected showVideo()V
    .registers 9

    .line 62
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->adUnitId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 63
    const-class v0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;

    iget-object v2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->adUnitId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_20

    .line 65
    const-class v0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;

    :cond_20
    if-eqz v0, :cond_6d

    .line 67
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 68
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$100(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 69
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$200(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 70
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$300(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 71
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$400(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 72
    :cond_54
    iget-object v2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$300(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$400(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$200(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->access$100(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_6d
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->ad:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_74

    .line 76
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->showAd()V

    :cond_74
    return-void
.end method
