.class public Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;
.super Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/appnext/core/Ad;
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    :try_start_3
    const-string v1, "AppnextConfiguration"

    .line 46
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    goto :goto_d

    :catchall_a
    move-exception p1

    goto :goto_23

    :cond_c
    move-object p3, v0

    :goto_d
    if-eqz p3, :cond_1c

    .line 49
    instance-of v1, p3, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    if-eqz v1, :cond_1c

    .line 50
    new-instance v1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;

    check-cast p3, Lcom/appnext/ads/fullscreen/FullscreenConfig;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V

    move-object v0, v1

    goto :goto_37

    .line 52
    :cond_1c
    new-instance p3, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;

    invoke-direct {p3, p0, p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_a

    move-object v0, p3

    goto :goto_37

    .line 55
    :goto_23
    iget-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextAdMobCustomEventFullScreenVideo createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    return-object v0
.end method
