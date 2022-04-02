.class public Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;
.super Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/appnext/core/Ad;
    .registers 12

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    :try_start_3
    const-string v1, "AppnextConfiguration"

    .line 48
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "AppnextRewardPostback"

    .line 49
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    goto :goto_14

    :catchall_10
    move-exception p1

    goto :goto_4a

    :cond_12
    move-object p3, v0

    move-object v1, p3

    :goto_14
    if-eqz v1, :cond_23

    .line 52
    instance-of v2, v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz v2, :cond_23

    .line 53
    new-instance v2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    check-cast v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    move-object v0, v2

    goto :goto_29

    .line 55
    :cond_23
    new-instance v1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    invoke-direct {v1, p0, p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    :goto_29
    if-eqz p3, :cond_5e

    .line 58
    instance-of p1, p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_5e

    .line 59
    check-cast p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 61
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    .line 60
    invoke-virtual/range {v2 .. v7}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_10

    goto :goto_5e

    .line 68
    :goto_4a
    iget-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextAdMobCustomEventRewardedVideo createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    :goto_5e
    return-object v0
.end method
