.class public Lcom/startapp/android/publish/ads/nativead/b;
.super Lcom/startapp/android/publish/adsCommon/h;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private config:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;)V
    .registers 4

    .line 17
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/h;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 19
    iput-object p2, p0, Lcom/startapp/android/publish/ads/nativead/b;->config:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 10

    .line 24
    new-instance v6, Lcom/startapp/android/publish/ads/nativead/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/b;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/startapp/android/publish/ads/nativead/b;->config:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/ads/nativead/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;)V

    invoke-virtual {v6}, Lcom/startapp/android/publish/ads/nativead/a;->c()V

    return-void
.end method
