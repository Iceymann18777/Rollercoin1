.class public Lcom/startapp/android/mediation/admob/StartAppNative;
.super Ljava/lang/Object;
.source "StartAppNative.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;


# static fields
.field public static final EXTRAS_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRAS_INSTALLS:Ljava/lang/String; = "installs"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNativeAdPreferences(Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;
    .registers 9

    .line 73
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 76
    :goto_11
    new-instance v3, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    invoke-direct {v3}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;-><init>()V

    .line 80
    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    .line 82
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getGender()I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 83
    sget-object v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;->MALE:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/common/model/AdPreferences;

    goto :goto_31

    .line 84
    :cond_25
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getGender()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_31

    .line 85
    sget-object v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;->FEMALE:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 88
    :cond_31
    :goto_31
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/startapp/android/mediation/admob/Utils;->getDiffInYears(JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 92
    :cond_4e
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_61
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    .line 97
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 100
    :cond_76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setKeywords(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 103
    :cond_82
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 104
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setLongitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 105
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->setLatitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_9e
    return-object v3
.end method


# virtual methods
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

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .registers 6

    .line 32
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isDesignedForFamilies()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p1, 0x3

    .line 33
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    return-void

    .line 37
    :cond_b
    new-instance p3, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    invoke-direct {p3, p1}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p4}, Lcom/startapp/android/mediation/admob/StartAppNative;->createNativeAdPreferences(Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;)Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    move-result-object p4

    new-instance p5, Lcom/startapp/android/mediation/admob/StartAppNative$1;

    invoke-direct {p5, p0, p3, p2, p1}, Lcom/startapp/android/mediation/admob/StartAppNative$1;-><init>(Lcom/startapp/android/mediation/admob/StartAppNative;Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Landroid/content/Context;)V

    invoke-virtual {p3, p4, p5}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    return-void
.end method
