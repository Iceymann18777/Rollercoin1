.class public Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;
    }
.end annotation


# instance fields
.field private _mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object p0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 13

    .line 33
    iput-object p4, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    const/4 p2, 0x0

    const-string p4, "parameter"

    const-string v0, "AppnextRewardPostback"

    const-string v1, "AppnextConfiguration"

    if-eqz p5, :cond_1b

    .line 39
    :try_start_b
    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .line 40
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    .line 41
    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1d

    :catchall_18
    move-exception p1

    goto/16 :goto_bb

    :cond_1b
    move-object p5, p3

    move-object p3, p2

    :goto_1d
    if-eqz p6, :cond_3d

    .line 44
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 45
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .line 46
    :cond_29
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 47
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    .line 48
    :cond_33
    invoke-virtual {p6, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 49
    invoke-virtual {p6, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_3d
    if-eqz p2, :cond_4d

    .line 52
    instance-of p4, p2, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz p4, :cond_4d

    .line 53
    new-instance p4, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    check-cast p2, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {p4, p0, p1, p5, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    iput-object p4, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    goto :goto_54

    .line 55
    :cond_4d
    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    invoke-direct {p2, p0, p1, p5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    :goto_54
    if-eqz p3, :cond_75

    .line 58
    instance-of p1, p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_75

    .line 59
    check-cast p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 60
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    .line 61
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_75
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 75
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$2;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$2;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 82
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 89
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$4;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$4;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 96
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$5;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$5;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 103
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    .line 121
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz p1, :cond_ba

    .line 122
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    :try_end_ba
    .catchall {:try_start_b .. :try_end_ba} :catchall_18

    :cond_ba
    return-void

    .line 124
    :goto_bb
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextAdMobRewardedVideoAdapter createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz p1, :cond_d1

    const/4 p2, 0x0

    .line 126
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    :cond_d1
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    .line 132
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz p1, :cond_7

    .line 133
    invoke-virtual {p1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->loadAd()V

    :cond_7
    const/4 p1, 0x0

    const-string v0, "AppnextRewardPostback"

    if-eqz p3, :cond_11

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_17

    :cond_11
    if-eqz p2, :cond_17

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :cond_17
    :goto_17
    if-eqz p1, :cond_38

    .line 140
    instance-of p2, p1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p2, :cond_38

    .line 141
    check-cast p1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 142
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    .line 143
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public showVideo()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {v0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->showAd()V

    :cond_7
    return-void
.end method
