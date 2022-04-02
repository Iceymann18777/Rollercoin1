.class public Lcom/mopub/mobileads/GooglePlayServicesBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "GooglePlayServicesBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;
    }
.end annotation


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private mGoogleAdView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method private calculateAdSize(II)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    .line 97
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_13

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_13

    .line 98
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 99
    :cond_13
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_26

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_26

    .line 100
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 101
    :cond_26
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_39

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_39

    .line 102
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 103
    :cond_39
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_4c

    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_4c

    .line 104
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    :cond_4c
    const/4 p1, 0x0

    return-object p1
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
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

    :try_start_0
    const-string v0, "adWidth"

    .line 86
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v0, "adHeight"

    .line 87
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_1d

    const-string v0, "adUnitID"

    .line 92
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_1d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method getGoogleAdView()Lcom/google/android/gms/ads/AdView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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

    .line 37
    iput-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 42
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_6d

    const-string p2, "adUnitID"

    .line 43
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "adWidth"

    .line 44
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const-string v0, "adHeight"

    .line 45
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 51
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    .line 52
    new-instance p1, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;-><init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;Lcom/mopub/mobileads/GooglePlayServicesBanner$1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 53
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p3, p4}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->calculateAdSize(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    if-nez p1, :cond_4b

    .line 57
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 61
    :cond_4b
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 63
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string p2, "MoPub"

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 68
    :try_start_5f
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_64
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_6c

    .line 71
    :catch_65
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_6c
    return-void

    .line 47
    :cond_6d
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_12
    return-void
.end method
