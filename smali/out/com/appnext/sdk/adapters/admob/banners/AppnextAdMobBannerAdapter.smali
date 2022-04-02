.class public Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# static fields
.field public static final AppNextBannerAdRequestKey:Ljava/lang/String; = "AppNextBannerAdRequestKey"

.field public static final AppNextBannerLanguageKey:Ljava/lang/String; = "AppNextBannerLanguageKey"


# instance fields
.field protected bannerView:Lcom/appnext/banners/BannerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {v0}, Lcom/appnext/banners/BannerView;->destroy()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    :cond_a
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

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 9

    .line 66
    :try_start_0
    iget-object p5, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    if-eqz p5, :cond_c

    .line 67
    iget-object p5, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {p5}, Lcom/appnext/banners/BannerView;->destroy()V

    const/4 p5, 0x0

    .line 68
    iput-object p5, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    .line 70
    :cond_c
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p5

    const-string v0, "tid"

    const-string v1, "321"

    invoke-virtual {p5, v0, v1}, Lcom/appnext/banners/d;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p5, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;

    invoke-direct {p5, p1}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    if-eqz p6, :cond_2b

    const-string p1, "AppNextBannerLanguageKey"

    const-string v0, ""

    .line 74
    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/appnext/banners/BannerView;->setLanguage(Ljava/lang/String;)V

    .line 77
    :cond_2b
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {p1, p3}, Lcom/appnext/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_50

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getHeight()I

    move-result p3

    if-ne p1, p3, :cond_50

    .line 80
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    sget-object p3, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, p3}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_8f

    .line 81
    :cond_50
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_70

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getHeight()I

    move-result p3

    if-ne p1, p3, :cond_70

    .line 82
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    sget-object p3, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, p3}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_8f

    .line 83
    :cond_70
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_a7

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    sget-object p3, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerSize;->getHeight()I

    move-result p3

    if-ne p1, p3, :cond_a7

    .line 84
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    sget-object p3, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p1, p3}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 91
    :goto_8f
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    new-instance p3, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;-><init>(Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {p1, p3}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 129
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    const-string p2, "AppNextBannerAdRequestKey"

    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p1, p2}, Lcom/appnext/banners/BannerView;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V

    return-void

    .line 86
    :cond_a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_af
    .catchall {:try_start_0 .. :try_end_af} :catchall_af

    :catchall_af
    return-void
.end method
