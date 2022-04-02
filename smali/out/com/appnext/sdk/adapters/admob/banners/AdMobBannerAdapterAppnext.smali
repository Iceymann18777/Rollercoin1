.class public Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;
.super Lcom/appnext/banners/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/appnext/banners/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/core/Ad;
    .registers 8

    .line 16
    invoke-virtual {p0}, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7536f730

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_32

    const v2, -0x5c1d2fb

    if-eq v1, v2, :cond_28

    const v2, 0x7458732c

    if-eq v1, v2, :cond_1e

    goto :goto_3c

    :cond_1e
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_3d

    :cond_28
    const-string v1, "MEDIUM_RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    goto :goto_3d

    :cond_32
    const-string v1, "LARGE_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v0, -0x1

    :goto_3d
    if-eqz v0, :cond_67

    if-eq v0, v4, :cond_61

    if-ne v0, v3, :cond_49

    .line 22
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobMediumBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobMediumBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Wrong banner size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_61
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobLargeBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobLargeBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_67
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobSmallBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobSmallBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
