.class public Lcom/github/barteksc/pdfviewer/model/PagePart;
.super Ljava/lang/Object;
.source "PagePart.java"


# instance fields
.field private cacheOrder:I

.field private height:F

.field private page:I

.field private pageRelativeBounds:Landroid/graphics/RectF;

.field private renderedBitmap:Landroid/graphics/Bitmap;

.field private thumbnail:Z

.field private userPage:I

.field private width:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V
    .registers 9

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    .line 40
    iput p2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    .line 41
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object p6, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 43
    iput-boolean p7, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    .line 44
    iput p8, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 85
    instance-of v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 89
    :cond_6
    check-cast p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 90
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    if-ne v0, v2, :cond_65

    .line 91
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    if-ne v0, v2, :cond_65

    .line 92
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getWidth()F

    move-result v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->width:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 93
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->height:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 94
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 95
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 96
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_65

    .line 97
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_65

    const/4 v1, 0x1

    :cond_65
    return v1
.end method

.method public getCacheOrder()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 72
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->height:F

    return v0
.end method

.method public getPage()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    return v0
.end method

.method public getPageRelativeBounds()Landroid/graphics/RectF;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRenderedBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUserPage()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 68
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->width:F

    return v0
.end method

.method public isThumbnail()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    return v0
.end method

.method public setCacheOrder(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method
