.class Lcom/mopub/common/privacy/ConsentDialogLayout;
.super Lcom/mopub/common/CloseableLayout;
.source "ConsentDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;,
        Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
    }
.end annotation


# static fields
.field static FINISHED_LOADING:I = 0x65

.field static final URL_CLOSE:Ljava/lang/String; = "mopub://close"

.field static final URL_CONSENT_NO:Ljava/lang/String; = "mopub://consent?no"

.field static final URL_CONSENT_YES:Ljava/lang/String; = "mopub://consent?yes"


# instance fields
.field private mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

.field private mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

.field private final mWebView:Landroid/webkit/WebView;

.field private final webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 62
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 67
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 72
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    return-object p0
.end method

.method private initWebView()Landroid/webkit/WebView;
    .registers 5

    .line 92
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 102
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 110
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setCloseVisible(Z)V

    .line 114
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private setupEventsListeners(Landroid/webkit/WebView;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$1;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    return-void
.end method


# virtual methods
.method setConsentClickListener(Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;)V
    .registers 2

    .line 86
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    return-void
.end method

.method startLoading(Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;)V
    .registers 9

    .line 76
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    iput-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    .line 79
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setupEventsListeners(Landroid/webkit/WebView;)V

    .line 81
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
