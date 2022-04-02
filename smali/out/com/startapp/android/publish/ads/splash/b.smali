.class public Lcom/startapp/android/publish/ads/splash/b;
.super Lcom/startapp/android/publish/ads/b/c;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 16
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/b/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-super {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/b/c;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Z)Z

    move-result p1

    return p1
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 5

    .line 26
    new-instance v0, Lcom/startapp/android/publish/ads/splash/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/b;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/ads/splash/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/b;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/a;->c()V

    return-void
.end method
