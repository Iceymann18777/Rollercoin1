.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial;
.super Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial$CustomEventInterstitialAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/core/Ad;
    .registers 7
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

    if-eqz p2, :cond_a

    :try_start_3
    const-string v1, "AppnextConfiguration"

    .line 48
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_b

    :cond_a
    move-object p2, v0

    .line 51
    :goto_b
    invoke-static {p3}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez p2, :cond_1c

    .line 55
    new-instance p2, Lcom/appnext/ads/interstitial/InterstitialConfig;

    invoke-direct {p2}, Lcom/appnext/ads/interstitial/InterstitialConfig;-><init>()V

    .line 58
    :cond_1c
    move-object v2, p2

    check-cast v2, Lcom/appnext/core/Configuration;

    invoke-virtual {p0, v2, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    :cond_22
    if-eqz p2, :cond_35

    .line 61
    instance-of p3, p2, Lcom/appnext/ads/interstitial/InterstitialConfig;

    if-eqz p3, :cond_35

    .line 62
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial$CustomEventInterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Lcom/appnext/ads/interstitial/InterstitialConfig;

    invoke-direct {p3, p0, p1, v1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial$CustomEventInterstitialAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/interstitial/InterstitialConfig;)V

    move-object v0, p3

    goto :goto_4f

    .line 64
    :cond_35
    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial$CustomEventInterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial$CustomEventInterstitialAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventInterstitial;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_40

    move-object v0, p2

    goto :goto_4f

    :catchall_40
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextMoPubCustomEventInterstitial createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
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

    if-eqz p1, :cond_22

    .line 76
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "AppnextCreativeType"

    .line 77
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "AppnextSkipText"

    .line 78
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "AppnextAutoPlay"

    .line 79
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_20
    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method protected setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V
    .registers 6
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

    if-eqz p1, :cond_ba

    .line 86
    instance-of v0, p1, Lcom/appnext/ads/interstitial/InterstitialConfig;

    if-nez v0, :cond_8

    goto/16 :goto_ba

    .line 90
    :cond_8
    check-cast p1, Lcom/appnext/ads/interstitial/InterstitialConfig;

    .line 92
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    const-string v0, "AppnextCreativeType"

    .line 94
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 96
    :try_start_15
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialConfig;->setCreativeType(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_2e

    :catchall_1f
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCreativeType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    :goto_2e
    const-string v0, "AppnextSkipText"

    .line 101
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 103
    :try_start_36
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialConfig;->setSkipText(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    goto :goto_4f

    :catchall_40
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSkipText: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    :goto_4f
    const-string v0, "AppnextAutoPlay"

    .line 108
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 110
    :try_start_57
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialConfig;->setAutoPlay(Z)V
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_65

    goto :goto_74

    :catchall_65
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAutoPlay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    :goto_74
    const-string v0, "AppnextButtonColor"

    .line 115
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 117
    :try_start_7c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialConfig;->setButtonColor(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_86

    goto :goto_95

    :catchall_86
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setButtonColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_95
    :goto_95
    const-string v0, "AppnextBackButtonCanClose"

    .line 122
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 124
    :try_start_9d
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appnext/ads/interstitial/InterstitialConfig;->setBackButtonCanClose(Z)V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ab

    return-void

    :catchall_ab
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setBackButtonCanClose: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ba
    :goto_ba
    return-void
.end method
