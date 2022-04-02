.class Lcom/github/barteksc/pdfviewer/PagesLoader;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    }
.end annotation


# instance fields
.field private cacheOrder:I

.field private colWidth:F

.field private colsRows:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageRelativePartHeight:F

.field private pageRelativePartWidth:F

.field private partRenderHeight:F

.field private partRenderWidth:F

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private rowHeight:F

.field private scaledHeight:F

.field private scaledWidth:F

.field private thumbnailHeight:I

.field private final thumbnailRect:Landroid/graphics/RectF;

.field private thumbnailWidth:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    .line 41
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void
.end method

.method private documentPage(I)I
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getFilteredUserPages()[I

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1f

    if-ltz p1, :cond_1e

    .line 57
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getFilteredUserPages()[I

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_15

    goto :goto_1e

    .line 60
    :cond_15
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getFilteredUserPages()[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_20

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    move v0, p1

    :goto_20
    if-ltz v0, :cond_2c

    .line 64
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v2

    if-lt p1, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method private getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    .registers 5

    .line 72
    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;Lcom/github/barteksc/pdfviewer/PagesLoader$1;)V

    const/4 v1, 0x0

    .line 73
    invoke-static {p1, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result p1

    neg-float p1, p1

    .line 75
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 76
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    div-float v1, p1, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 77
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 78
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    goto :goto_69

    .line 80
    :cond_3f
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    div-float v1, p1, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 81
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    .line 82
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    :goto_69
    return-object v0
.end method

.method private getPageColsRows()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 46
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v2

    div-float v2, v1, v2

    const/high16 v3, 0x43800000    # 256.0f

    mul-float v2, v2, v3

    .line 47
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    div-float/2addr v2, v4

    mul-float v0, v0, v3

    .line 48
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    div-float v2, v1, v2

    .line 49
    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    div-float/2addr v1, v0

    .line 50
    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    .line 51
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private loadCell(IIIIFF)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    int-to-float v1, v1

    mul-float v1, v1, p5

    move/from16 v2, p3

    int-to-float v2, v2

    mul-float v2, v2, p6

    .line 207
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 208
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    add-float v5, v1, p5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    sub-float v5, v6, v1

    goto :goto_1d

    :cond_1b
    move/from16 v5, p5

    :goto_1d
    add-float v7, v2, p6

    cmpl-float v7, v7, v6

    if-lez v7, :cond_25

    sub-float/2addr v6, v2

    goto :goto_27

    :cond_25
    move/from16 v6, p6

    :goto_27
    mul-float v3, v3, v5

    mul-float v4, v4, v6

    .line 217
    new-instance v14, Landroid/graphics/RectF;

    add-float/2addr v5, v1

    add-float/2addr v6, v2

    invoke-direct {v14, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    cmpl-float v2, v3, v1

    if-lez v2, :cond_73

    cmpl-float v1, v4, v1

    if-lez v1, :cond_73

    .line 220
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v13, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move/from16 v8, p1

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move-object v12, v14

    invoke-virtual/range {v7 .. v13}, Lcom/github/barteksc/pdfviewer/CacheManager;->upPartIfContained(IIFFLandroid/graphics/RectF;I)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 221
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/PDFView;->renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    const/4 v13, 0x0

    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 223
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v15

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v16

    move/from16 v8, p1

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move-object v12, v14

    move v14, v1

    .line 221
    invoke-virtual/range {v7 .. v16}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    .line 226
    :cond_6c
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    return v2

    :cond_73
    const/4 v1, 0x0

    return v1
.end method

.method private loadRelative(IIZ)I
    .registers 14

    .line 103
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 104
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    .line 105
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result p1

    if-eqz p3, :cond_34

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p3

    goto :goto_35

    .line 107
    :cond_20
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 108
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result p1

    if-eqz p3, :cond_34

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p3

    goto :goto_35

    :cond_34
    const/4 p3, 0x0

    :goto_35
    int-to-float p3, p3

    sub-float/2addr p1, p3

    sub-float/2addr p1, v0

    .line 111
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object p1

    .line 112
    iget p3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, p3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result p3

    if-gez p3, :cond_45

    return v1

    .line 116
    :cond_45
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, v0, p3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 118
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 119
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 120
    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v0

    .line 121
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 122
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    :goto_82
    if-gt v0, v9, :cond_e8

    .line 124
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_97

    add-int/lit8 v1, v1, 0x1

    :cond_97
    if-lt v1, p2, :cond_9a

    return v1

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 132
    :cond_9d
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 133
    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v0

    .line 134
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 135
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    :goto_cd
    if-gt v0, v9, :cond_e8

    .line 137
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v6, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_e2

    add-int/lit8 v1, v1, 0x1

    :cond_e2
    if-lt v1, p2, :cond_e5

    return v1

    :cond_e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    :cond_e8
    return v1
.end method

.method private loadThumbnail(II)V
    .registers 14

    .line 88
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/CacheManager;->containsThumbnail(IIFFLandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 90
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingAsyncTask:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 92
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v10

    move v2, p1

    move v3, p2

    .line 90
    invoke-virtual/range {v1 .. v10}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    :cond_33
    return-void
.end method


# virtual methods
.method public loadPages()V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    .line 234
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    .line 235
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    .line 236
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    .line 237
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageColsRows()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    .line 238
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    .line 239
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    .line 240
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    .line 241
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    .line 242
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    .line 243
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    .line 244
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    const/high16 v2, 0x43800000    # 256.0f

    div-float v0, v2, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    div-float/2addr v2, v1

    .line 245
    iput v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    const/4 v0, 0x1

    .line 246
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    .line 247
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadVisible()I

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    move-result-object v2

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c1

    :goto_b2
    const/4 v2, 0x7

    if-ge v3, v2, :cond_d1

    .line 249
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_d1

    .line 250
    invoke-direct {p0, v3, v1, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_c1
    const/4 v0, 0x0

    :goto_c2
    const/4 v2, -0x7

    if-le v0, v2, :cond_d1

    .line 253
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_d1

    .line 254
    invoke-direct {p0, v0, v1, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_c2

    :cond_d1
    return-void
.end method

.method public loadVisible()I
    .registers 7

    .line 152
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_70

    .line 153
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 156
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v4, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v3, v4, :cond_36

    .line 157
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 159
    :cond_36
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 160
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    :goto_46
    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v4, v5, :cond_58

    .line 161
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_46

    .line 163
    :cond_58
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    :goto_5d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5f
    if-ge v3, v1, :cond_d5

    .line 166
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v4, v5, :cond_d5

    .line 167
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v3, v5, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 170
    :cond_70
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 171
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 173
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v4, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v3, v4, :cond_9b

    .line 174
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 176
    :cond_9b
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 177
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    :goto_ab
    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v4, v5, :cond_bd

    .line 178
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_ab

    .line 180
    :cond_bd
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    :goto_c2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c4
    if-ge v3, v1, :cond_d5

    .line 183
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v4, v5, :cond_d5

    .line 184
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v3, v5, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c4

    .line 187
    :cond_d5
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v1

    if-ltz v1, :cond_e6

    .line 189
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 191
    :cond_e6
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v1

    if-ltz v1, :cond_f7

    .line 193
    iget v0, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    :cond_f7
    return v4
.end method
