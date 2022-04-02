.class public Lcom/startapp/android/publish/ads/c/b/a;
.super Lcom/startapp/android/publish/a/a;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 11

    .line 22
    sget-object v5, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/a/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/startapp/android/publish/common/model/GetAdRequest;
    .registers 3

    .line 27
    invoke-super {p0}, Lcom/startapp/android/publish/a/a;->a()Lcom/startapp/android/publish/common/model/GetAdRequest;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_8
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setAdsNumber(I)V

    return-object v0
.end method

.method protected a(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 37
    check-cast p1, Lcom/startapp/android/publish/ads/c/b/b;

    .line 38
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/c/b/b;->d()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/c/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/e;->a()V

    if-eqz v0, :cond_2b

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 43
    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/ads/list3d/e;->a(Lcom/startapp/android/publish/common/model/AdDetails;)V

    goto :goto_1b

    :cond_2b
    return-void
.end method
