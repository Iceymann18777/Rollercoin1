.class public abstract Lcom/appnext/banners/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bannerListener:Lcom/appnext/banners/BannerListener;

.field private bannerSize:Lcom/appnext/banners/BannerSize;

.field protected context:Landroid/content/Context;

.field private language:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field protected rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isViewPartiallyVisible(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    return v0

    .line 100
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    return v0
.end method


# virtual methods
.method public abstract click()V
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/appnext/banners/e;->context:Landroid/content/Context;

    return-void
.end method

.method public getBannerListener()Lcom/appnext/banners/BannerListener;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/appnext/banners/e;->bannerListener:Lcom/appnext/banners/BannerListener;

    return-object v0
.end method

.method public getBannerSize()Lcom/appnext/banners/BannerSize;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/appnext/banners/e;->bannerSize:Lcom/appnext/banners/BannerSize;

    return-object v0
.end method

.method public abstract getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/appnext/banners/e;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/appnext/banners/e;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisiblePercent(Landroid/view/View;)I
    .registers 8

    .line 110
    iget-object v0, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/appnext/banners/e;->isViewPartiallyVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_49

    iget-object v0, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1e

    goto :goto_49

    .line 114
    :cond_1e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int v1, v1, v0

    int-to-double v0, v1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int v2, v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_49
    :goto_49
    return v1
.end method

.method public abstract impression()V
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/appnext/banners/e;->rootView:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/banners/e;->context:Landroid/content/Context;

    return-void
.end method

.method public isClickEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadAd(Lcom/appnext/banners/BannerAdRequest;)V
.end method

.method public onScrollChanged(I)V
    .registers 2

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    return-void
.end method

.method protected openLink(Ljava/lang/String;)V
    .registers 4

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object p1, p0, Lcom/appnext/banners/e;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public parseAttributeSet(Landroid/util/AttributeSet;)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public play()V
    .registers 1

    return-void
.end method

.method public setBannerListener(Lcom/appnext/banners/BannerListener;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/appnext/banners/e;->bannerListener:Lcom/appnext/banners/BannerListener;

    return-void
.end method

.method public setBannerSize(Lcom/appnext/banners/BannerSize;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 50
    iget-object v0, p0, Lcom/appnext/banners/e;->bannerSize:Lcom/appnext/banners/BannerSize;

    if-nez v0, :cond_9

    .line 52
    iput-object p1, p0, Lcom/appnext/banners/e;->bannerSize:Lcom/appnext/banners/BannerSize;

    return-void

    .line 51
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The banner size can only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The placement id cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClickEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/appnext/banners/e;->language:Ljava/lang/String;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 38
    iget-object v0, p0, Lcom/appnext/banners/e;->placementId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 40
    iput-object p1, p0, Lcom/appnext/banners/e;->placementId:Ljava/lang/String;

    return-void

    .line 39
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The placement id can only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The placement id cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
