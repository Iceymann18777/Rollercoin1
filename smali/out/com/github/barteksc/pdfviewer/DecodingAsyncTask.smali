.class Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private context:Landroid/content/Context;

.field private docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private password:Ljava/lang/String;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    .line 40
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 41
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 43
    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 5

    .line 49
    :try_start_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/source/DocumentSource;->createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    const/4 p1, 0x0

    return-object p1

    :catchall_10
    move-exception p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 25
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 59
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadError(Ljava/lang/Throwable;)V

    return-void

    .line 62
    :cond_8
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    if-nez p1, :cond_13

    .line 63
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadComplete(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_13
    return-void
.end method
