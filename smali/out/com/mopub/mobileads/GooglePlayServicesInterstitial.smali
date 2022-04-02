.class public Lcom/mopub/mobileads/GooglePlayServicesInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "GooglePlayServicesInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object p0
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

    const-string v0, "adUnitID"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method getGoogleInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .line 28
    iput-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 31
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_42

    const-string p2, "adUnitID"

    .line 32
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 38
    new-instance p3, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p3, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 39
    new-instance p1, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;-><init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;Lcom/mopub/mobileads/GooglePlayServicesInterstitial$1;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 40
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string p2, "MoPub"

    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 47
    :try_start_34
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_39
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_41

    .line 50
    :catch_3a
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_41
    return-void

    .line 34
    :cond_42
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_8
    return-void
.end method

.method protected showInterstitial()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_15

    :cond_e
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Google Play Services interstitial ad before it finished loading. Please try again."

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method
