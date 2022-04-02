.class Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$4;
.super Ljava/lang/Object;
.source "PdfLoader.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;


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

    .line 104
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$4;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(I)V
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$4;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$200(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
