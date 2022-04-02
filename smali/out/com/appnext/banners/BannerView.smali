.class public Lcom/appnext/banners/BannerView;
.super Lcom/appnext/banners/BaseBannerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/appnext/banners/BaseBannerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/appnext/banners/BaseBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/banners/BaseBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appnext/banners/BaseBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected getBannerAdapter()Lcom/appnext/banners/e;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/appnext/banners/BannerView;->bannerAdapter:Lcom/appnext/banners/e;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/appnext/banners/g;

    invoke-direct {v0}, Lcom/appnext/banners/g;-><init>()V

    iput-object v0, p0, Lcom/appnext/banners/BannerView;->bannerAdapter:Lcom/appnext/banners/e;

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/appnext/banners/BannerView;->bannerAdapter:Lcom/appnext/banners/e;

    return-object v0
.end method

.method public getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/appnext/banners/BaseBannerView;->getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V

    return-void
.end method
