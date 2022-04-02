.class public Lcom/startapp/android/publish/ads/b/e;
.super Lcom/startapp/android/publish/ads/b/c;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 17
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/b/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method protected getFallbackAdCacheTtl()J
    .registers 3

    .line 27
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/ACMConfig;->getReturnAdCacheTTL()J

    move-result-wide v0

    return-wide v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 5

    .line 22
    new-instance v0, Lcom/startapp/android/publish/ads/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/b/e;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/ads/b/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/e;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/b/b;->c()V

    return-void
.end method
