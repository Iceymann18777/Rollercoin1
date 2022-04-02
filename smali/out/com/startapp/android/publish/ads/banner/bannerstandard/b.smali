.class public Lcom/startapp/android/publish/ads/banner/bannerstandard/b;
.super Lcom/startapp/android/publish/html/a;
.source "StartAppSDK"


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/e;ILcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 13

    .line 22
    sget-object v5, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/html/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Z)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->i:I

    .line 23
    iput p3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->i:I

    return-void
.end method


# virtual methods
.method protected a()Lcom/startapp/android/publish/common/model/GetAdRequest;
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 29
    new-instance v1, Lcom/startapp/android/publish/ads/banner/a;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/banner/a;-><init>()V

    .line 30
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->b(Lcom/startapp/android/publish/common/model/GetAdRequest;)Lcom/startapp/android/publish/common/model/GetAdRequest;

    .line 32
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/a;->setWidth(I)V

    .line 33
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/a;->setHeight(I)V

    .line 34
    iget v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->i:I

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/a;->setOffset(I)V

    .line 35
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/c;->a()Lcom/startapp/android/publish/ads/banner/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/c;->b()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/a;->setAdsNumber(I)V

    .line 36
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/a;->a(Z)V

    .line 37
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/a;->a(I)V

    return-object v1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 4

    .line 44
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->a(Z)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Html onPostExecute, result=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-void
.end method
