.class public Lcom/mopub/mobileads/StartAppCustomEventInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "StartAppCustomEventInterstitial.java"


# static fields
.field public static final AD_MODE_KEY:Ljava/lang/String; = "adMode"


# instance fields
.field private ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

.field private adTag:Ljava/lang/String;

.field private listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object p0
.end method

.method private getAdMode(Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;"
        }
    .end annotation

    if-eqz p2, :cond_4e

    const-string v0, "adMode"

    .line 70
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 71
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AdMode.FULLPAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 72
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    .line 73
    :cond_1b
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AdMode.OVERLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 74
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OVERLAY:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    .line 75
    :cond_2c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AdMode.OFFERWALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 76
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    .line 77
    :cond_3d
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "AdMode.AUTOMATIC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 78
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    :cond_4e
    const-string p2, "startAppExtras"

    .line 81
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 82
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/StartAppInterstitialExtras;

    .line 83
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppInterstitialExtras;->getAdMode()Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    move-result-object p1

    if-eqz p1, :cond_63

    return-object p1

    .line 88
    :cond_63
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
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

    .line 29
    invoke-static {p1, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->checkInit(Landroid/content/Context;Ljava/util/Map;)V

    .line 30
    iput-object p2, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    const-string v0, "adTag"

    .line 31
    invoke-static {v0, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->getStringFromExtras(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->adTag:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    .line 33
    invoke-direct {p0, p3, p4}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->getAdMode(Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    move-result-object v1

    invoke-static {p1, p3, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->extractAdPrefs(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/common/model/AdPreferences;

    move-result-object p1

    new-instance p3, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;

    invoke-direct {p3, p0, p2}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;-><init>(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1, p1, p3}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 1

    return-void
.end method

.method public showInterstitial()V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object v1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->adTag:Ljava/lang/String;

    new-instance v2, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;-><init>(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    return-void
.end method
