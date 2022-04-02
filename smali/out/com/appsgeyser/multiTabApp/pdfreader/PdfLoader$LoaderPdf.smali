.class Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;
.super Landroid/os/AsyncTask;
.source "PdfLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderPdf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;)V
    .registers 3

    .line 136
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 148
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 136
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->doInBackground([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/InputStream;)V
    .registers 3

    .line 158
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$400(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0, p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$700(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 136
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->onPostExecute(Ljava/io/InputStream;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 140
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$200(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
