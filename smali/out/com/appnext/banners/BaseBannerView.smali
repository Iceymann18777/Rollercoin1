.class public abstract Lcom/appnext/banners/BaseBannerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field protected bannerAdapter:Lcom/appnext/banners/e;

.field private bannerListener:Lcom/appnext/banners/BannerListener;

.field private language:Ljava/lang/String;

.field onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/appnext/banners/BaseBannerView$1;

    invoke-direct {v0, p0}, Lcom/appnext/banners/BaseBannerView$1;-><init>(Lcom/appnext/banners/BaseBannerView;)V

    iput-object v0, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/appnext/banners/BaseBannerView;->parseAttributeSet(Landroid/util/AttributeSet;)V

    return-void

    .line 40
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The context cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Lcom/appnext/banners/BaseBannerView$1;

    invoke-direct {p1, p0}, Lcom/appnext/banners/BaseBannerView$1;-><init>(Lcom/appnext/banners/BaseBannerView;)V

    iput-object p1, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 48
    invoke-direct {p0, p2}, Lcom/appnext/banners/BaseBannerView;->parseAttributeSet(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lcom/appnext/banners/BaseBannerView$1;

    invoke-direct {p1, p0}, Lcom/appnext/banners/BaseBannerView$1;-><init>(Lcom/appnext/banners/BaseBannerView;)V

    iput-object p1, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 54
    invoke-direct {p0, p2}, Lcom/appnext/banners/BaseBannerView;->parseAttributeSet(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p1, Lcom/appnext/banners/BaseBannerView$1;

    invoke-direct {p1, p0}, Lcom/appnext/banners/BaseBannerView$1;-><init>(Lcom/appnext/banners/BaseBannerView;)V

    iput-object p1, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 61
    invoke-direct {p0, p2}, Lcom/appnext/banners/BaseBannerView;->parseAttributeSet(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/banners/BaseBannerView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/appnext/banners/BaseBannerView;->impression()V

    return-void
.end method

.method static synthetic access$100(Lcom/appnext/banners/BaseBannerView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/appnext/banners/BaseBannerView;->onScrollChanged()V

    return-void
.end method

.method private impression()V
    .registers 2

    .line 188
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->impression()V

    return-void
.end method

.method private isViewPartiallyVisible(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 222
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    return v0
.end method

.method private onScrollChanged()V
    .registers 3

    .line 192
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {p0, p0}, Lcom/appnext/banners/BaseBannerView;->getVisiblePercent(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/e;->onScrollChanged(I)V

    return-void
.end method

.method private parseAttributeSet(Landroid/util/AttributeSet;)V
    .registers 9

    .line 65
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 68
    :cond_7
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/banners/e;->init(Landroid/view/ViewGroup;)V

    .line 70
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    const-string v1, "tid"

    const-string v2, "301"

    invoke-virtual {v0, v1, v2}, Lcom/appnext/banners/d;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appnext/banners/d;->a(Landroid/content/Context;Lcom/appnext/core/p$a;)V

    .line 72
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    if-nez p1, :cond_31

    return-void

    .line 77
    :cond_31
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/appnext/banners/R$styleable;->BannersAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    sget v1, Lcom/appnext/banners/R$styleable;->BannersAttrs_bannerSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7536f730

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_6e

    const v4, -0x5c1d2fb

    if-eq v3, v4, :cond_64

    const v4, 0x7458732c

    if-eq v3, v4, :cond_5a

    goto :goto_77

    :cond_5a
    const-string v3, "BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x0

    goto :goto_77

    :cond_64
    const-string v3, "MEDIUM_RECTANGLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x2

    goto :goto_77

    :cond_6e
    const-string v3, "LARGE_BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x1

    :cond_77
    :goto_77
    if-eqz v2, :cond_9d

    if-eq v2, v6, :cond_97

    if-ne v2, v5, :cond_83

    .line 88
    sget-object v1, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p0, v1}, Lcom/appnext/banners/BaseBannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_a2

    .line 91
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wrong banner size "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_97
    sget-object v1, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p0, v1}, Lcom/appnext/banners/BaseBannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    goto :goto_a2

    .line 82
    :cond_9d
    sget-object v1, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {p0, v1}, Lcom/appnext/banners/BaseBannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 94
    :cond_a2
    :goto_a2
    sget v1, Lcom/appnext/banners/R$styleable;->BannersAttrs_placementId:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 96
    invoke-virtual {p0, v1}, Lcom/appnext/banners/BaseBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 99
    :cond_ad
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    new-instance v1, Lcom/appnext/banners/BaseBannerView$2;

    invoke-direct {v1, p0}, Lcom/appnext/banners/BaseBannerView$2;-><init>(Lcom/appnext/banners/BaseBannerView;)V

    invoke-virtual {v0, v1}, Lcom/appnext/banners/e;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->parseAttributeSet(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private pause()V
    .registers 2

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->pause()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method

.method private play()V
    .registers 2

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->play()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 252
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->destroy()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/appnext/banners/BaseBannerView;->bannerAdapter:Lcom/appnext/banners/e;

    .line 255
    :try_start_a
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/BaseBannerView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_13

    :catchall_13
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-direct {p0}, Lcom/appnext/banners/BaseBannerView;->impression()V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 261
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 263
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->destroy()V

    return-void
.end method

.method protected abstract getBannerAdapter()Lcom/appnext/banners/e;
.end method

.method getBannerListener()Lcom/appnext/banners/BannerListener;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/appnext/banners/BaseBannerView;->bannerListener:Lcom/appnext/banners/BannerListener;

    return-object v0
.end method

.method protected getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 4

    .line 184
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appnext/banners/e;->getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/appnext/banners/BaseBannerView;->language:Ljava/lang/String;

    return-object v0
.end method

.method getPlacementId()Ljava/lang/String;
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisiblePercent(Landroid/view/View;)I
    .registers 8

    .line 232
    invoke-direct {p0, p0}, Lcom/appnext/banners/BaseBannerView;->isViewPartiallyVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 234
    :cond_8
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getWindowVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_43

    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getWindowVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_18

    goto :goto_43

    .line 236
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int v1, v1, v0

    int-to-double v0, v1

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int v2, v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_43
    :goto_43
    return v1
.end method

.method public isClickEnabled()Z
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/e;->isClickEnabled()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/appnext/banners/BannerAdRequest;)V
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 207
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-direct {p0}, Lcom/appnext/banners/BaseBannerView;->impression()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/appnext/banners/BaseBannerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 140
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 141
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 142
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/appnext/banners/BaseBannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    goto :goto_1c

    .line 160
    :cond_10
    invoke-virtual {p0, v1, p1, p2}, Lcom/appnext/banners/BaseBannerView;->measureChild(Landroid/view/View;II)V

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_63

    .line 152
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/e;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 153
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/e;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 155
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/e;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v2, v2, v0

    float-to-int v0, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    .line 164
    :goto_63
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/appnext/banners/BaseBannerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .line 197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 200
    :try_start_3
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->onWindowVisibilityChanged(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public setBannerListener(Lcom/appnext/banners/BannerListener;)V
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    return-void
.end method

.method public setBannerSize(Lcom/appnext/banners/BannerSize;)V
    .registers 3

    .line 172
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    return-void
.end method

.method public setClickEnabled(Z)V
    .registers 3

    .line 312
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->setClickEnabled(Z)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/appnext/banners/BaseBannerView;->language:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/appnext/banners/BaseBannerView;->bannerAdapter:Lcom/appnext/banners/e;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 316
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appnext/banners/d;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/appnext/banners/BaseBannerView;->getBannerAdapter()Lcom/appnext/banners/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/banners/e;->setPlacementId(Ljava/lang/String;)V

    return-void
.end method
