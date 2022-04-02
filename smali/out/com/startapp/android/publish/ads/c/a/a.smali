.class public Lcom/startapp/android/publish/ads/c/a/a;
.super Lcom/startapp/android/publish/html/a;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/c/a/b;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 12

    .line 16
    sget-object v5, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/html/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Z)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/startapp/android/publish/common/model/GetAdRequest;
    .registers 3

    .line 21
    invoke-super {p0}, Lcom/startapp/android/publish/html/a;->a()Lcom/startapp/android/publish/common/model/GetAdRequest;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_8
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setAdsNumber(I)V

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Boolean;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/c/a/a;->a(Z)V

    return-void
.end method
