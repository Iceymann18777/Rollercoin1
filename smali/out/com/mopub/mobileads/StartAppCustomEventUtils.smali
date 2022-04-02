.class public Lcom/mopub/mobileads/StartAppCustomEventUtils;
.super Ljava/lang/Object;
.source "StartAppCustomEventUtils.java"


# static fields
.field public static final DEFAULT_CONTENT_AD:Z = false

.field public static final DEFAULT_PRIMARY_IMAGE_SIZE:I = 0x4

.field public static final DEFAULT_SECONDARY_IMAGE_SIZE:I = 0x2

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"

.field public static final SERVER_EXTRA_ACCOUNT_ID:Ljava/lang/String; = "accountID"

.field public static final SERVER_EXTRA_APP_ID:Ljava/lang/String; = "appID"

.field public static final SERVER_EXTRA_CONTENT_AD:Ljava/lang/String; = "contentAd"

.field public static final SERVER_EXTRA_NATIVE_PRIMARY_IMAGE:Ljava/lang/String; = "primaryImageSize"

.field public static final SERVER_EXTRA_NATIVE_SECONDARY_IMAGE:Ljava/lang/String; = "secondaryImageSize"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Banner3Dcreate(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;
    .registers 10

    :try_start_0
    const-string v0, "com.startapp.android.publish.banner.banner3d"

    .line 100
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.startapp.android.publish.banner.banner3d.Banner3D"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 102
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/startapp/android/publish/common/model/AdPreferences;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/startapp/android/publish/ads/banner/BannerListener;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/View;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v0

    .line 106
    :catch_30
    new-instance v0, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {v0, p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object v0
.end method

.method public static checkInit(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appID"

    .line 151
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v1, "accountID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 154
    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->getStringFromExtras(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static extractAdPrefs(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 3
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
            "Lcom/startapp/android/publish/common/model/AdPreferences;"
        }
    .end annotation

    .line 75
    new-instance p0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 76
    invoke-static {p1, p0}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->extractAdPrefs(Ljava/util/Map;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-object p0
.end method

.method private static extractAdPrefs(Ljava/util/Map;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/startapp/android/publish/common/model/AdPreferences;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_21

    const-string v0, "startAppExtras"

    .line 81
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 82
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/StartAppExtras;

    .line 84
    invoke-static {p1, v0}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->setAge(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/mopub/mobileads/StartAppExtras;)V

    .line 86
    invoke-static {p1, v0}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->setKeywords(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/mopub/mobileads/StartAppExtras;)V

    const-string v0, "location"

    .line 87
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-static {p1, p0}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->setLocation(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/location/Location;)V

    :cond_21
    return-void
.end method

.method public static extractNativeAdPrefs(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;
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
            "Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;"
        }
    .end annotation

    .line 30
    new-instance p0, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;-><init>()V

    .line 31
    invoke-static {p1, p0}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->extractAdPrefs(Ljava/util/Map;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    const-string p1, "primaryImageSize"

    .line 34
    invoke-static {p2, p1}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->validateExtras(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_21

    .line 36
    :try_start_15
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    nop

    :cond_21
    :goto_21
    const-string p1, "secondaryImageSize"

    .line 44
    invoke-static {p2, p1}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->validateExtras(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_36

    .line 46
    :try_start_2a
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    nop

    :cond_36
    :goto_36
    const-string p1, "contentAd"

    .line 54
    invoke-static {p2, p1}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->validateExtras(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4a

    .line 56
    :try_start_3f
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    :cond_4a
    const/4 p1, 0x0

    .line 60
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setContentAd(Z)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    .line 61
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    .line 62
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setSecondaryImageSize(I)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    .line 64
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    return-object p0
.end method

.method public static getStringFromExtras(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 142
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setAge(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/mopub/mobileads/StartAppExtras;)V
    .registers 3

    .line 136
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppExtras;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 137
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppExtras;->getAge()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_d
    return-void
.end method

.method private static setKeywords(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/mopub/mobileads/StartAppExtras;)V
    .registers 3

    .line 117
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppExtras;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {p1}, Lcom/mopub/mobileads/StartAppExtras;->getKeywords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setKeywords(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_d
    return-void
.end method

.method private static setLocation(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/location/Location;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 124
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setLongitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 125
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setLatitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_10
    return-void
.end method

.method private static validateExtras(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_10

    .line 70
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
