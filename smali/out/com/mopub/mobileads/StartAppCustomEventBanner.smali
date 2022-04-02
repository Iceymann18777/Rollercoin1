.class public Lcom/mopub/mobileads/StartAppCustomEventBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "StartAppCustomEventBanner.java"


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final BANNER_MODE_KEY:Ljava/lang/String; = "bannerMode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_26

    const-string v0, "adHeight"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "adWidth"

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 77
    :try_start_12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_24} :catch_26

    const/4 p1, 0x1

    return p1

    :catch_26
    :cond_26
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected getBanner(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;
    .registers 9
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
            ">;",
            "Landroid/content/Context;",
            "Lcom/startapp/android/publish/common/model/AdPreferences;",
            "Lcom/startapp/android/publish/ads/banner/BannerListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p2, :cond_45

    const-string v0, "bannerMode"

    .line 96
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 97
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "BannerMode.STANDARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 98
    new-instance p1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1

    .line 99
    :cond_1e
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "BannerMode.THREED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 100
    invoke-static {p3, p4, p5}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->Banner3Dcreate(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 102
    :cond_31
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "BannerMode.AUTO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 103
    new-instance p1, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1

    :cond_45
    const-string p2, "startAppExtras"

    .line 106
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 107
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/StartAppBannerExtras;

    .line 108
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->getBannerMode()Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    move-result-object p2

    if-eqz p2, :cond_80

    .line 109
    sget-object p2, Lcom/mopub/mobileads/StartAppCustomEventBanner$2;->$SwitchMap$com$mopub$mobileads$StartAppBannerExtras$BannerMode:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->getBannerMode()Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_74

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6f

    goto :goto_80

    .line 115
    :cond_6f
    invoke-static {p3, p4, p5}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->Banner3Dcreate(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 113
    :cond_74
    new-instance p1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1

    .line 111
    :cond_7a
    new-instance p1, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1

    .line 120
    :cond_80
    :goto_80
    new-instance p1, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1
.end method

.method protected getDefaultHeight()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method protected getDefaultWidth()I
    .registers 2

    const/16 v0, 0x140

    return v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
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

    .line 26
    invoke-static {p1, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->checkInit(Landroid/content/Context;Ljava/util/Map;)V

    .line 27
    invoke-static {p1, p3, p4}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->extractAdPrefs(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/common/model/AdPreferences;

    move-result-object v4

    .line 29
    new-instance v5, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;

    invoke-direct {v5, p0, p2}, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;-><init>(Lcom/mopub/mobileads/StartAppCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    .line 52
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/StartAppCustomEventBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const-string p2, "adHeight"

    .line 53
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "adWidth"

    .line 54
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_33

    .line 56
    :cond_2b
    invoke-virtual {p0}, Lcom/mopub/mobileads/StartAppCustomEventBanner;->getDefaultHeight()I

    move-result p2

    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/StartAppCustomEventBanner;->getDefaultWidth()I

    move-result v0

    :goto_33
    move v6, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/StartAppCustomEventBanner;->getBanner(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;

    move-result-object p3

    .line 62
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v0, v6

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 63
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p2, p2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 66
    invoke-static {v2, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p4, v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 1

    return-void
.end method
