.class Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;
.super Landroid/os/AsyncTask;
.source "RenderingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/github/barteksc/pdfviewer/model/PagePart;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final openedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private renderBounds:Landroid/graphics/RectF;

.field private renderMatrix:Landroid/graphics/Matrix;

.field private final renderingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;",
            ">;"
        }
    .end annotation
.end field

.field private roundedRenderBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->openedPages:Ljava/util/Set;

    .line 48
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 49
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 50
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    return-void
.end method

.method private calculateBounds(IILandroid/graphics/RectF;)V
    .registers 7

    .line 147
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 148
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderMatrix:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float p1, p1

    mul-float v1, v1, p1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float p2, p2

    mul-float v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 151
    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 153
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private proceed(Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .registers 14

    .line 115
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 116
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 120
    :cond_22
    iget v0, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 121
    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->height:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 122
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    iget-object v3, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v3}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->calculateBounds(IILandroid/graphics/RectF;)V

    .line 125
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_85

    .line 126
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v6, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-boolean v11, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->annotationRendering:Z

    move-object v5, v2

    .line 126
    invoke-virtual/range {v3 .. v11}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    .line 134
    iget-boolean v0, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->bestQuality:Z

    if-nez v0, :cond_6f

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v0

    goto :goto_70

    :cond_6f
    move-object v6, v2

    .line 140
    :goto_70
    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->userPage:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    iget v7, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->width:F

    iget v8, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->height:F

    iget-object v9, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v10, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->thumbnail:Z

    iget v11, p1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->cacheOrder:I

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    return-object v0

    .line 130
    :cond_85
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private waitForRenderingTasks()Z
    .registers 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_e

    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 107
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    :catch_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V
    .registers 22

    .line 56
    new-instance v11, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;

    move-object v0, v11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move v5, p1

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;-><init>(Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;FFLandroid/graphics/RectF;IIZIZZ)V

    move-object v0, p0

    .line 57
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->wakeUp()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4f

    .line 68
    :cond_7
    :goto_7
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter p1

    .line 69
    :try_start_a
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 70
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;

    .line 74
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_4c

    if-eqz v1, :cond_7

    .line 77
    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->proceed(Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_3f

    .line 80
    :cond_25
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/barteksc/pdfviewer/model/PagePart;

    aput-object p1, v1, v2

    .line 81
    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_7

    .line 83
    :cond_36
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    .line 72
    :cond_3e
    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4c

    .line 89
    :goto_3f
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->waitForRenderingTasks()Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4b
    return-object v0

    :catchall_4c
    move-exception v0

    .line 74
    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    return-object v0
.end method

.method protected varargs onProgressUpdate([Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, [Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->onProgressUpdate([Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    return-void
.end method

.method public removeAllTasks()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 159
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public wakeUp()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;->renderingTasks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 165
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
