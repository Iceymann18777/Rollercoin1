.class public Lcom/startapp/android/publish/ads/b/d;
.super Lcom/startapp/android/publish/ads/b/c;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 14
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/b/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method public loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 5

    .line 19
    new-instance v0, Lcom/startapp/android/publish/ads/b/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/b/d;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/ads/b/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/e;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/b/a;->c()V

    return-void
.end method
