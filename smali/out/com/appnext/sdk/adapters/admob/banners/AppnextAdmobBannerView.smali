.class public Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;
.super Lcom/appnext/banners/BannerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected getBannerAdapter()Lcom/appnext/banners/e;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;->bannerAdapter:Lcom/appnext/banners/e;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;

    invoke-direct {v0}, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;-><init>()V

    iput-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;->bannerAdapter:Lcom/appnext/banners/e;

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdmobBannerView;->bannerAdapter:Lcom/appnext/banners/e;

    return-object v0
.end method
