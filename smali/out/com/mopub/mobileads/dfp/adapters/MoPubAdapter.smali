.class public Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MOPUB_IMAGE_SCALE:D = 1.0

.field private static final DEFAULT_MOPUB_PRIVACY_ICON_SIZE_DP:I = 0x14

.field private static final MAXIMUM_MOPUB_PRIVACY_ICON_SIZE_DP:I = 0x1e

.field private static final MINIMUM_MOPUB_PRIVACY_ICON_SIZE_DP:I = 0xa

.field private static final MOPUB_AD_UNIT_KEY:Ljava/lang/String; = "adUnitId"

.field private static final MOPUB_NATIVE_CEVENT_VERSION:Ljava/lang/String; = "gmext"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdSize:Lcom/google/android/gms/ads/AdSize;

.field private mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mPrivacyIconSize:I

.field private privacyIconPlacement:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/google/android/gms/ads/AdSize;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    return-object p0
.end method

.method private static getAge(Ljava/util/Date;)I
    .registers 3

    const-string v0, "yyyy"

    .line 362
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;
    .registers 8

    .line 323
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_22

    .line 327
    invoke-static {v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getAge(Ljava/util/Date;)I

    move-result v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    .line 331
    :goto_23
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    const-string v2, "m_gender:f"

    goto :goto_37

    :cond_30
    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    const-string v2, "m_gender:m"

    goto :goto_37

    :cond_36
    move-object v2, v1

    .line 342
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gmext"

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5c

    .line 349
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5b
    return-object v1

    .line 351
    :cond_5c
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_67

    :cond_63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_67
    return-object v1
.end method

.method private initSdkListener()Lcom/mopub/common/SdkInitializationListener;
    .registers 2

    .line 526
    new-instance v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V

    return-object v0
.end method

.method private initializeMoPub(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 518
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_16

    .line 519
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {v0, p2}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p2

    .line 521
    invoke-direct {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->initSdkListener()Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    :cond_16
    return-void
.end method

.method private keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z
    .registers 4

    .line 357
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 358
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 79
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_13

    .line 83
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 84
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    :cond_13
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

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 7

    const-string p6, "adUnitId"

    .line 289
    invoke-virtual {p3, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 290
    invoke-direct {p0, p1, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->initializeMoPub(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 294
    new-instance p4, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p4, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 295
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p4, p1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 296
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1, p3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 299
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2b

    .line 300
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 304
    :cond_2b
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 305
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/mopub/mobileads/MoPubView;->setLocation(Landroid/location/Location;)V

    .line 308
    :cond_3a
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 p3, 0x0

    invoke-direct {p0, p5, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0, p5, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setUserDataKeywords(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 6

    const-string p5, "adUnitId"

    .line 432
    invoke-virtual {p3, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 433
    invoke-direct {p0, p1, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->initializeMoPub(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    new-instance p5, Lcom/mopub/mobileads/MoPubInterstitial;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p5, p1, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 436
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {p5, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 440
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_26

    .line 441
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->setTesting(Z)V

    .line 444
    :cond_26
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 p3, 0x0

    invoke-direct {p0, p4, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0, p4, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "adUnitId"

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 104
    invoke-direct {p0, p1, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->initializeMoPub(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    goto :goto_19

    .line 111
    :cond_17
    iput v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    .line 113
    :goto_19
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isAppInstallAdRequested()Z

    move-result v0

    if-nez v0, :cond_30

    .line 114
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isContentAdRequested()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 115
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Currently, MoPub only serves native app install ads. Apps requesting content ads alone will not receive ads from this adapter."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    :cond_30
    if-eqz p5, :cond_49

    const-string v0, "privacy_icon_size_dp"

    .line 122
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    const/16 v0, 0xa

    if-ge p5, v0, :cond_3f

    .line 124
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_4d

    :cond_3f
    const/16 v0, 0x1e

    if-le p5, v0, :cond_46

    .line 126
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_4d

    .line 128
    :cond_46
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_4d

    :cond_49
    const/16 p5, 0x14

    .line 131
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    .line 134
    :goto_4d
    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    invoke-direct {p5, p0, p2, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/content/Context;)V

    if-nez p3, :cond_5f

    .line 235
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Ad unit id is invalid. So failing the request."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    .line 240
    :cond_5f
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {v0, p1, p3, p5}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 242
    new-instance p1, Lcom/mopub/nativeads/ViewBinder$Builder;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    .line 243
    new-instance p5, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-direct {p5, p1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 245
    invoke-virtual {v0, p5}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 246
    sget-object p1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object p5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v4, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    .line 247
    invoke-static {p1, p5, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    .line 253
    new-instance p5, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {p5}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    .line 254
    invoke-direct {p0, p4, p3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/mopub/nativeads/RequestParameters$Builder;->keywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p3

    .line 255
    invoke-direct {p0, p4, v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/mopub/nativeads/RequestParameters$Builder;->userDataKeywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p3

    .line 256
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p3

    .line 257
    invoke-virtual {p3, p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->desiredAssets(Ljava/util/EnumSet;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object p1

    .line 260
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    .line 263
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 454
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    goto :goto_13

    :cond_e
    const-string v0, "Interstitial was not ready. Unable to load the interstitial"

    .line 456
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    :goto_13
    return-void
.end method
