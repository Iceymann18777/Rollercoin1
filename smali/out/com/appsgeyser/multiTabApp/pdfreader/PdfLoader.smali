.class public Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;
.super Ljava/lang/Object;
.source "PdfLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;,
        Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;
    }
.end annotation


# static fields
.field private static savedPageKey:Ljava/lang/String; = ""


# instance fields
.field private errorTextView:Landroid/widget/TextView;

.field private initialTabId:Ljava/lang/String;

.field private pathFile:Ljava/lang/String;

.field private pdfEventListener:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 51
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pathFile:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->initialTabId:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfEventListener:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfEventListener:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/ProgressBar;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/widget/TextView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->errorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/github/barteksc/pdfviewer/PDFView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->savedPageKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 36
    sput-object p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->savedPageKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Landroid/content/SharedPreferences;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadConfigurator(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V

    return-void
.end method

.method private loadConfigurator(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
    .registers 6

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdf_saved_page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->initialTabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->savedPageKey:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v3, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;

    invoke-direct {v3, p0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V

    invoke-virtual {v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance v1, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$4;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V

    .line 104
    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance v1, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$3;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance v1, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$2;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V

    .line 121
    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance v1, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 130
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    return-void
.end method


# virtual methods
.method public loadPdfFile()V
    .registers 7

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00d5

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->errorTextView:Landroid/widget/TextView;

    const v1, 0x7f0a018f

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdf_saved_page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->initialTabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->savedPageKey:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pathFile:Ljava/lang/String;

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_61

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pathFile:Ljava/lang/String;

    const-string v2, "file:///android_asset/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v3

    goto :goto_79

    .line 70
    :cond_61
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pathFile:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pathFile:Ljava/lang/String;

    .line 72
    new-instance v4, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;

    invoke-direct {v4, p0, v3}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;-><init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;)V

    new-array v5, v1, [Ljava/lang/String;

    aput-object v0, v5, v2

    .line 73
    invoke-virtual {v4, v5}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$LoaderPdf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :cond_79
    :goto_79
    :try_start_79
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->useBestQuality(Z)V

    if-eqz v3, :cond_8f

    .line 79
    invoke-direct {p0, v3}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadConfigurator(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_8f

    :catch_84
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8f
    :goto_8f
    return-void
.end method
