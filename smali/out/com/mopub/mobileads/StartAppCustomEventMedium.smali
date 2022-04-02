.class public Lcom/mopub/mobileads/StartAppCustomEventMedium;
.super Lcom/mopub/mobileads/StartAppCustomEventBanner;
.source "StartAppCustomEventMedium.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/StartAppCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBanner(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)Landroid/view/View;
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
            ">;",
            "Landroid/content/Context;",
            "Lcom/startapp/android/publish/common/model/AdPreferences;",
            "Lcom/startapp/android/publish/ads/banner/BannerListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 16
    new-instance p1, Lcom/startapp/android/publish/ads/banner/Mrec;

    invoke-direct {p1, p3, p4, p5}, Lcom/startapp/android/publish/ads/banner/Mrec;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-object p1
.end method

.method protected getDefaultHeight()I
    .registers 2

    const/16 v0, 0xfa

    return v0
.end method

.method protected getDefaultWidth()I
    .registers 2

    const/16 v0, 0x12c

    return v0
.end method
