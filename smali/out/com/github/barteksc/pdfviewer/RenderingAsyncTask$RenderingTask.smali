.class Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;
.super Ljava/lang/Object;
.source "RenderingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingTask"
.end annotation


# instance fields
.field annotationRendering:Z

.field bestQuality:Z

.field bounds:Landroid/graphics/RectF;

.field cacheOrder:I

.field height:F

.field page:I

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

.field thumbnail:Z

.field userPage:I

.field width:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;FFLandroid/graphics/RectF;IIZIZZ)V
    .registers 11

    .line 186
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->this$0:Lcom/github/barteksc/pdfviewer/RenderingAsyncTask;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p6, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->page:I

    .line 189
    iput p2, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->width:F

    .line 190
    iput p3, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->height:F

    .line 191
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->bounds:Landroid/graphics/RectF;

    .line 192
    iput p5, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->userPage:I

    .line 193
    iput-boolean p7, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->thumbnail:Z

    .line 194
    iput p8, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->cacheOrder:I

    .line 195
    iput-boolean p9, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->bestQuality:Z

    .line 196
    iput-boolean p10, p0, Lcom/github/barteksc/pdfviewer/RenderingAsyncTask$RenderingTask;->annotationRendering:Z

    return-void
.end method
