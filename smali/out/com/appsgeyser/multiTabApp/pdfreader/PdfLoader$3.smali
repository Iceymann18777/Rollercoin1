.class Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;
.super Ljava/lang/Object;
.source "PdfLoader.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;


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

    .line 110
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .registers 5

    .line 113
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object p2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdf_saved_page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$600(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$100(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 117
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$100(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;->handleEvent()V

    :cond_4e
    return-void
.end method
