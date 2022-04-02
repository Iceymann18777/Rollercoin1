.class public Lcom/startapp/android/mediation/admob/StartAppCustomEvent;
.super Ljava/lang/Object;
.source "StartAppCustomEvent.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBanner;
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field private ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

.field private interstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->interstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object p0
.end method

.method private extractAdPrefs(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 4

    .line 207
    new-instance p1, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->setGender(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->setAge(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->setKeywords(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->setLocation(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V

    return-object p1
.end method

.method private getAdMode(Ljava/lang/String;Ljava/lang/Object;)Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    .registers 4

    if-eqz p1, :cond_2e

    const-string v0, "AdMode.FULLPAGE"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    :cond_d
    const-string v0, "AdMode.OVERLAY"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 69
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OVERLAY:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    :cond_18
    const-string v0, "AdMode.OFFERWALL"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 71
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    :cond_23
    const-string v0, "AdMode.AUTOMATIC"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 73
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1

    .line 76
    :cond_2e
    instance-of p1, p2, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    if-eqz p1, :cond_3b

    .line 77
    check-cast p2, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    invoke-virtual {p2}, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;->getAdMode()Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    move-result-object p1

    if-eqz p1, :cond_3b

    return-object p1

    .line 82
    :cond_3b
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p1
.end method

.method private getAdTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1a

    .line 195
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adtag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "adTag"

    .line 197
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method private setAge(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V
    .registers 4

    .line 243
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 244
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_d
    return-void
.end method

.method private setGender(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V
    .registers 5

    .line 233
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 234
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    if-ne v0, v1, :cond_14

    .line 235
    sget-object p2, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;->MALE:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/common/model/AdPreferences;

    goto :goto_21

    .line 236
    :cond_14
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object p2

    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    if-ne p2, v0, :cond_21

    .line 237
    sget-object p2, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;->FEMALE:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_21
    :goto_21
    return-void
.end method

.method private setKeywords(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V
    .registers 6

    .line 216
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_34
    const/4 p2, 0x0

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->setKeywords(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_42
    return-void
.end method

.method private setLocation(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/google/ads/mediation/MediationAdRequest;)V
    .registers 5

    .line 226
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 227
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setLongitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 228
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setLatitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_1c
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getBanner(Ljava/lang/String;Ljava/lang/Object;Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;Lcom/google/ads/AdSize;)Landroid/view/View;
    .registers 9

    .line 152
    invoke-virtual {p6}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p6}, Lcom/google/ads/AdSize;->getHeight()I

    move-result p6

    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    if-ne p6, v0, :cond_1e

    .line 153
    new-instance p6, Lcom/startapp/android/publish/ads/banner/Mrec;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Mrec;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    goto :goto_1f

    :cond_1e
    const/4 p6, 0x0

    :goto_1f
    if-nez p6, :cond_4c

    if-eqz p1, :cond_4c

    const-string v0, "BannerMode.STANDARD"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 158
    new-instance p6, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    goto :goto_4c

    :cond_31
    const-string v0, "BannerMode.THREED"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 160
    new-instance p6, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    goto :goto_4c

    :cond_3f
    const-string v0, "BannerMode.AUTO"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 162
    new-instance p6, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    :cond_4c
    :goto_4c
    if-nez p6, :cond_7b

    .line 166
    instance-of v0, p2, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    if-eqz v0, :cond_7b

    .line 167
    sget-object v0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$4;->$SwitchMap$com$startapp$android$mediation$admob$StartAppBannerExtras$BannerMode:[I

    check-cast p2, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    invoke-virtual {p2}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;->getBannerMode()Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_76

    const/4 v0, 0x2

    if-eq p2, v0, :cond_70

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6a

    goto :goto_7b

    .line 175
    :cond_6a
    new-instance p6, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    goto :goto_7b

    .line 172
    :cond_70
    new-instance p6, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    goto :goto_7b

    .line 169
    :cond_76
    new-instance p6, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    :cond_7b
    :goto_7b
    if-nez p6, :cond_82

    .line 181
    new-instance p6, Lcom/startapp/android/publish/ads/banner/Banner;

    invoke-direct {p6, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    .line 184
    :cond_82
    invoke-direct {p0, p1}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->getAdTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8f

    .line 186
    invoke-virtual {p6, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setAdTag(Ljava/lang/String;)V

    :cond_8f
    return-object p6
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .registers 15

    .line 116
    invoke-direct {p0, p2, p6, p7}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->extractAdPrefs(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)Lcom/startapp/android/publish/common/model/AdPreferences;

    move-result-object v4

    .line 118
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p6, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v5, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;

    invoke-direct {v5, p0, p1, p3}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;-><init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/widget/FrameLayout;)V

    move-object v0, p0

    move-object v1, p4

    move-object v2, p7

    move-object v3, p2

    move-object v6, p5

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->getBanner(Ljava/lang/String;Ljava/lang/Object;Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;Lcom/google/ads/AdSize;)Landroid/view/View;

    move-result-object p1

    .line 143
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p5, p2}, Lcom/google/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p6

    invoke-virtual {p5, p2}, Lcom/google/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p2

    const/16 p5, 0x11

    invoke-direct {p4, p6, p2, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .registers 7

    .line 48
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->interstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 50
    new-instance p3, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {p3, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    .line 51
    invoke-direct {p0, p4, p6}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->getAdMode(Ljava/lang/String;Ljava/lang/Object;)Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    move-result-object p4

    invoke-direct {p0, p2, p5, p6}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->extractAdPrefs(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)Lcom/startapp/android/publish/common/model/AdPreferences;

    move-result-object p2

    new-instance p5, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;

    invoke-direct {p5, p0, p1}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;-><init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V

    invoke-virtual {p3, p4, p2, p5}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    new-instance v1, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;-><init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    return-void
.end method
