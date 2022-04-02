.class public Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;
.super Ljava/lang/Object;
.source "StartAppNativeAdMapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;,
        Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;,
        Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMapper(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 8

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->isApp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 20
    new-instance v1, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V

    goto :goto_17

    :cond_12
    new-instance v1, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V

    :goto_17
    check-cast v1, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;

    .line 24
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setHeadline(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setBody(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;->extractCallToAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setCallToAction(Ljava/lang/String;)V

    const-string v2, "Google Play"

    .line 28
    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setStore(Ljava/lang/String;)V

    const-string v2, ""

    .line 30
    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setPrice(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getRating()F

    move-result v2

    float-to-double v2, v2

    invoke-interface {v1, v2, v3}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setStarRating(D)V

    .line 33
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 34
    new-instance v2, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 37
    :cond_5e
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    new-instance v3, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {v1, v2}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->setImages(Ljava/util/List;)V

    .line 43
    :cond_8b
    invoke-interface {v1}, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;->asMapper()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object p0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setOverrideClickHandling(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setOverrideImpressionRecording(Z)V

    if-eqz v0, :cond_b2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object p1

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    :cond_b2
    return-object p0
.end method

.method private static extractCallToAction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf239fd1    # 8.0673E-30f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1a

    const v1, 0x3d8f3375

    if-eq v0, v1, :cond_10

    goto :goto_24

    :cond_10
    const-string v0, "LAUNCH_APP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_1a
    const-string v0, "OPEN_MARKET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p0, -0x1

    :goto_25
    if-eq p0, v2, :cond_2a

    const-string p0, "Install"

    return-object p0

    :cond_2a
    const-string p0, "Launch app"

    return-object p0
.end method
