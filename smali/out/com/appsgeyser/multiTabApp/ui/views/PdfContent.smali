.class public Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;
.super Lcom/appsgeyser/multiTabApp/ui/views/TabContent;
.source "PdfContent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V
    .registers 6

    const v0, 0x7f0a018e

    .line 25
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    .line 26
    new-instance v1, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadPdfFile()V

    return-void
.end method
