.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field private currentFilteredPage:I

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private documentPageCount:I

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private filteredUserPageIndexes:[I

.field private filteredUserPages:[I

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private optimalPageHeight:F

.field private optimalPageWidth:F

.field private originalUserPages:[I

.field private pageHeight:I

.field private pageWidth:I

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private recycled:Z

.field renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 85
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 86
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 87
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 98
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 170
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 175
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    const/4 p2, 0x1

    .line 180
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 185
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 236
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 247
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 257
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 263
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 271
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_33

    return-void

    .line 275
    :cond_33
    new-instance p2, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {p2}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    .line 276
    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 277
    new-instance v1, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-direct {v1, p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    .line 279
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    .line 280
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 281
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    new-instance p2, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 284
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return p0
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .registers 6

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .registers 5

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    return-void
.end method

.method private calculateCenterOffsetForPage(I)F
    .registers 5

    .line 758
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_19

    int-to-float p1, p1

    .line 759
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float p1, p1, v0

    neg-float p1, p1

    .line 760
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    :goto_15
    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    return p1

    :cond_19
    int-to-float p1, p1

    .line 763
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float p1, p1, v0

    neg-float p1, p1

    .line 764
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    goto :goto_15
.end method

.method private calculateOptimalWidthAndHeight()V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_38

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_38

    .line 778
    :cond_d
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 779
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v3, v0, v2

    float-to-double v3, v3

    .line 782
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_33

    mul-float v2, v2, v1

    float-to-double v2, v2

    .line 785
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_34

    :cond_33
    move v1, v3

    .line 788
    :goto_34
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 789
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    :cond_38
    :goto_38
    return-void
.end method

.method private determineValidPageNumberFrom(I)I
    .registers 4

    if-gtz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_f

    .line 738
    array-length v1, v0

    if-lt p1, v1, :cond_16

    .line 739
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 742
    :cond_f
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    if-lt p1, v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_16
    return p1
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .registers 14

    .line 589
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 590
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    .line 599
    :cond_f
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 600
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float p2, p2, v2

    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p2

    move v2, p2

    const/4 p2, 0x0

    goto :goto_32

    .line 602
    :cond_24
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float p2, p2, v2

    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p2

    const/4 v2, 0x0

    .line 603
    :goto_32
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 605
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 606
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 608
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v5

    .line 609
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v6

    .line 610
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    .line 611
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 616
    new-instance v8, Landroid/graphics/RectF;

    float-to-int v9, v5

    int-to-float v9, v9

    float-to-int v10, v6

    int-to-float v10, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v0, v0

    invoke-direct {v8, v9, v10, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 621
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p2

    .line 622
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v5, v2

    .line 623
    iget v6, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_b6

    iget v6, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v6

    cmpg-float v0, v0, v3

    if-lez v0, :cond_b6

    iget v0, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v5

    .line 624
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gez v0, :cond_b6

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    cmpg-float v0, v5, v3

    if-gtz v0, :cond_ab

    goto :goto_b6

    .line 629
    :cond_ab
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    neg-float p2, p2

    neg-float v0, v2

    .line 637
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_b6
    :goto_b6
    neg-float p2, p2

    neg-float v0, v2

    .line 625
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .registers 7

    .line 293
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_2e

    if-eqz p5, :cond_16

    .line 299
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    .line 300
    invoke-static {p5}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->deleteDuplicatedPages([I)[I

    move-result-object p5

    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    .line 301
    iget-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    invoke-static {p5}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->calculateIndexesInDuplicateArray([I)[I

    move-result-object p5

    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    .line 304
    :cond_16
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    .line 305
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    const/4 p3, 0x0

    .line 307
    iput-boolean p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 309
    new-instance p4, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p4, p1, p2, p0, p5}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V

    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    .line 310
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p3, [Ljava/lang/Void;

    invoke-virtual {p4, p1, p2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 294
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDefaultPage(I)V
    .registers 2

    .line 1007
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    return-void
.end method

.method private setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-void
.end method

.method private setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-void
.end method

.method private setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-void
.end method

.method private setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .registers 2

    .line 1027
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-void
.end method


# virtual methods
.method public documentFitsView()Z
    .registers 5

    .line 963
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 964
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float v0, v0, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    .line 966
    :cond_1b
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v0, v0, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public enableAnnotationRendering(Z)V
    .registers 2

    .line 1091
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return-void
.end method

.method public enableDoubletap(Z)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enableDoubletap(Z)V

    return-void
.end method

.method public enableSwipe(Z)V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 4

    .line 1116
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/AssetSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/AssetSource;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .registers 4

    .line 1143
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 2

    .line 971
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .registers 2

    .line 975
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .registers 2

    .line 979
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .registers 3

    .line 1099
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1102
    :cond_6
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method getDocumentPageCount()I
    .registers 2

    .line 911
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method getFilteredUserPages()[I
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    return-object v0
.end method

.method public getMaxZoom()F
    .registers 2

    .line 1067
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public getMidZoom()F
    .registers 2

    .line 1059
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public getMinZoom()F
    .registers 2

    .line 1051
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return v0
.end method

.method getOnPageChangeListener()Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object v0
.end method

.method getOnPageScrollListener()Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object v0
.end method

.method public getOptimalPageHeight()F
    .registers 2

    .line 1003
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    return v0
.end method

.method public getOptimalPageWidth()F
    .registers 2

    .line 999
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    return v0
.end method

.method public getPageCount()I
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_6

    .line 410
    array-length v0, v0

    return v0

    .line 412
    :cond_6
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method public getPositionOffset()F
    .registers 4

    .line 378
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_19

    .line 379
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_2d

    .line 381
    :cond_19
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    :goto_2d
    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 383
    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->limit(FFF)F

    move-result v0

    return v0
.end method

.method getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    .registers 2

    .line 884
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    return-object v0
.end method

.method getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_a

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1109
    :cond_a
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .registers 2

    .line 991
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public isAnnotationRendering()Z
    .registers 2

    .line 1095
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return v0
.end method

.method public isBestQuality()Z
    .registers 2

    .line 1079
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return v0
.end method

.method public isSwipeVertical()Z
    .registers 2

    .line 1083
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .registers 3

    .line 995
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public jumpTo(IZ)V
    .registers 5

    .line 319
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_1e

    neg-int v0, p1

    int-to-float v0, v0

    .line 320
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    mul-float v0, v0, v1

    if-eqz p2, :cond_18

    .line 322
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_37

    .line 324
    :cond_18
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_37

    :cond_1e
    neg-int v0, p1

    int-to-float v0, v0

    .line 327
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    mul-float v0, v0, v1

    if-eqz p2, :cond_32

    .line 329
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_37

    .line 331
    :cond_32
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 334
    :goto_37
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void
.end method

.method public loadComplete(Lcom/shockwave/pdfium/PdfDocument;)V
    .registers 5

    .line 663
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 664
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    .line 667
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 668
    aget v0, v0, v1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 672
    :goto_15
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 673
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v2, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 674
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v2, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v2

    iput v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    .line 675
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v2, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    .line 676
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 678
    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    .line 680
    new-instance v0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {v0, p0, v2, p1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    .line 681
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v2}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 683
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p1, :cond_50

    .line 684
    invoke-interface {p1, p0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V

    const/4 p1, 0x1

    .line 685
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 689
    :cond_50
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    invoke-virtual {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    .line 690
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    if-eqz p1, :cond_5e

    .line 691
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    invoke-interface {p1, v0}, Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;->loadComplete(I)V

    :cond_5e
    return-void
.end method

.method public loadError(Ljava/lang/Throwable;)V
    .registers 4

    .line 696
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 697
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 698
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    .line 699
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    if-eqz v0, :cond_12

    .line 700
    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_12
    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    .line 702
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method loadPageByOffset()V
    .registers 4

    .line 889
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_9

    .line 890
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 891
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    goto :goto_d

    .line 893
    :cond_9
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 894
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 897
    :goto_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-ltz v0, :cond_38

    .line 899
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_38

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_38

    .line 900
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    goto :goto_3b

    .line 902
    :cond_38
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    :goto_3b
    return-void
.end method

.method public loadPages()V
    .registers 3

    .line 647
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_20

    .line 652
    :cond_e
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->removeAllTasks()V

    .line 653
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    .line 655
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    .line 656
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    :cond_20
    :goto_20
    return-void
.end method

.method public moveRelativeTo(FF)V
    .registers 4

    .line 922
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .registers 4

    const/4 v0, 0x1

    .line 794
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    return-void
.end method

.method public moveTo(FFZ)V
    .registers 8

    .line 806
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_c0

    .line 808
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_26

    .line 809
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    div-float/2addr v0, v1

    :goto_24
    sub-float/2addr p1, v0

    goto :goto_48

    :cond_26
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2c

    const/4 p1, 0x0

    goto :goto_48

    .line 813
    :cond_2c
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_48

    .line 814
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    goto :goto_24

    .line 819
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    mul-float v0, v0, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_73

    .line 820
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    mul-float v0, v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_a4

    :cond_73
    cmpl-float v0, p2, v2

    if-lez v0, :cond_79

    const/4 p2, 0x0

    goto :goto_a4

    .line 824
    :cond_79
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a4

    .line 825
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 829
    :cond_a4
    :goto_a4
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_b0

    .line 830
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_175

    :cond_b0
    cmpl-float v0, p2, v0

    if-lez v0, :cond_ba

    .line 832
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_175

    .line 834
    :cond_ba
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_175

    .line 838
    :cond_c0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_df

    .line 839
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    div-float/2addr v0, v1

    :goto_dd
    sub-float/2addr p2, v0

    goto :goto_101

    :cond_df
    cmpl-float v0, p2, v2

    if-lez v0, :cond_e5

    const/4 p2, 0x0

    goto :goto_101

    .line 843
    :cond_e5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_101

    .line 844
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    goto :goto_dd

    .line 849
    :cond_101
    :goto_101
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    mul-float v0, v0, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_12c

    .line 850
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_15d

    :cond_12c
    cmpl-float v0, p1, v2

    if-lez v0, :cond_132

    const/4 p1, 0x0

    goto :goto_15d

    .line 854
    :cond_132
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15d

    .line 855
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 859
    :cond_15d
    :goto_15d
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_168

    .line 860
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_175

    :cond_168
    cmpl-float v0, p1, v0

    if-lez v0, :cond_171

    .line 862
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_175

    .line 864
    :cond_171
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 868
    :goto_175
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 869
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 870
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result p1

    if-eqz p3, :cond_18e

    .line 872
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p2, :cond_18e

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p2

    if-nez p2, :cond_18e

    .line 873
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {p2, p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setScroll(F)V

    .line 876
    :cond_18e
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    if-eqz p2, :cond_199

    .line 877
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result p3

    invoke-interface {p2, p3, p1}, Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;->onPageScrolled(IF)V

    .line 880
    :cond_199
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method public onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .registers 3

    .line 717
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 718
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_11

    .line 720
    :cond_c
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 722
    :goto_11
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 484
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 485
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 504
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 538
    :cond_7
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    .line 540
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_15

    .line 542
    :cond_12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    :goto_15
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_1a

    return-void

    .line 549
    :cond_1a
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_21

    return-void

    .line 554
    :cond_21
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 555
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 556
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 559
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 560
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_32

    .line 564
    :cond_42
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 565
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_4c

    .line 569
    :cond_5c
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    if-eqz v2, :cond_91

    .line 570
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 572
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 573
    invoke-virtual {p0, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v4

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 574
    invoke-virtual {p0, v5}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v5

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 572
    invoke-interface {v2, p1, v4, v5, v6}, Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    .line 577
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    int-to-float v2, v2

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_91
    neg-float v0, v0

    neg-float v1, v1

    .line 581
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 490
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 493
    :cond_7
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 494
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 495
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 496
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz p1, :cond_22

    .line 497
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateCenterOffsetForPage(I)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_2d

    .line 499
    :cond_22
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateCenterOffsetForPage(I)F

    move-result p1

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    :goto_2d
    return-void
.end method

.method public recycle()V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 448
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 449
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->cancel(Z)Z

    .line 451
    :cond_d
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v0, :cond_14

    .line 452
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    .line 456
    :cond_14
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    .line 458
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_24

    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    if-eqz v2, :cond_24

    .line 459
    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->destroyLayout()V

    .line 462
    :cond_24
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-eqz v2, :cond_2f

    .line 463
    invoke-virtual {v0, v2}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_2f
    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    .line 467
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    .line 468
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    .line 469
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 470
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 473
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 474
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 475
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method redraw()V
    .registers 1

    .line 707
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method public resetZoomWithAnimation()V
    .registers 2

    .line 1015
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(F)V

    return-void
.end method

.method public setMaxZoom(F)V
    .registers 2

    .line 1071
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return-void
.end method

.method public setMidZoom(F)V
    .registers 2

    .line 1063
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return-void
.end method

.method public setMinZoom(F)V
    .registers 2

    .line 1055
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return-void
.end method

.method public setPositionOffset(F)V
    .registers 3

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    return-void
.end method

.method public setPositionOffset(FZ)V
    .registers 6

    .line 392
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_20

    .line 393
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    goto :goto_3b

    .line 395
    :cond_20
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float v0, v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    .line 397
    :goto_3b
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    return-void
.end method

.method public setSwipeVertical(Z)V
    .registers 2

    .line 1087
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return-void
.end method

.method showPage(I)V
    .registers 4

    .line 342
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_5

    return-void

    .line 345
    :cond_5
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 349
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 350
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 351
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    .line 352
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    if-eqz v0, :cond_1e

    if-ltz p1, :cond_1e

    .line 353
    array-length v1, v0

    if-ge p1, v1, :cond_1e

    .line 354
    aget p1, v0, p1

    .line 355
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    .line 359
    :cond_1e
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 361
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p1

    if-nez p1, :cond_34

    .line 362
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setPageNum(I)V

    .line 365
    :cond_34
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    if-eqz p1, :cond_41

    .line 366
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;->onPageChanged(II)V

    :cond_41
    return-void
.end method

.method public stopFling()V
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public toCurrentScale(F)F
    .registers 3

    .line 987
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float p1, p1, v0

    return p1
.end method

.method public useBestQuality(Z)V
    .registers 2

    .line 1075
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return-void
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .registers 4

    .line 954
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .registers 7

    .line 941
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    .line 942
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 943
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float p1, p1, v0

    .line 944
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float v1, v1, v0

    .line 945
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 946
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, v0

    sub-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 947
    invoke-virtual {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public zoomTo(F)V
    .registers 2

    .line 929
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return-void
.end method

.method public zoomWithAnimation(F)V
    .registers 6

    .line 1023
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method

.method public zoomWithAnimation(FFF)V
    .registers 6

    .line 1019
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method
