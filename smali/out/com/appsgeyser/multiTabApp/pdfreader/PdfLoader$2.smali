.class Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;
.super Ljava/lang/Object;
.source "PdfLoader.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadConfigurator(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$200(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$300(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$400(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
