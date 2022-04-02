.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;
.super Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;
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
    invoke-virtual {p0, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez p2, :cond_1c

    .line 55
    new-instance p2, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    invoke-direct {p2}, Lcom/appnext/ads/fullscreen/FullscreenConfig;-><init>()V

    .line 58
    :cond_1c
    move-object v2, p2

    check-cast v2, Lcom/appnext/core/Configuration;

    invoke-virtual {p0, v2, p3}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    :cond_22
    if-eqz p2, :cond_35

    .line 61
    instance-of p3, p2, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    if-eqz p3, :cond_35

    .line 62
    new-instance p3, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    invoke-direct {p3, p0, p1, v1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V

    move-object v0, p3

    goto :goto_4f

    .line 64
    :cond_35
    new-instance p2, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_40

    move-object v0, p2

    goto :goto_4f

    :catchall_40
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextMoPubCustomEventFullScreenVideo createAd: "

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

    if-eqz p1, :cond_10

    .line 76
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

    if-eqz p1, :cond_12

    .line 83
    instance-of v0, p1, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    if-nez v0, :cond_7

    goto :goto_12

    .line 87
    :cond_7
    check-cast p1, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    .line 89
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setConfigFromExtras(Lcom/appnext/core/Configuration;Ljava/util/Map;)V

    .line 90
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setVideoConfigFromExtras(Lcom/appnext/ads/fullscreen/VideoConfig;Ljava/util/Map;)V

    .line 91
    invoke-static {p1, p2}, Lcom/appnext/sdk/adapters/mopub/ads/Helper;->setFullscreenConfigFromExtras(Lcom/appnext/ads/fullscreen/FullscreenConfig;Ljava/util/Map;)V

    :cond_12
    :goto_12
    return-void
.end method
