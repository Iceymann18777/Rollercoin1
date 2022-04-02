.class public Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;


# static fields
.field private static lastTimeFirtsBannerWasShown:J = -0x1L

.field private static lastTimeFullScreenBannerWasShown:J = -0x1L


# instance fields
.field private _bannerJsInjection:Ljava/lang/String;

.field private _browser:Landroid/webkit/WebView;

.field private _mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabsPadding:I

.field private _webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

.field private _widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

.field private firstBannerWasShown:Z

.field private mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

.field private popupView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    const-string v1, ""

    .line 61
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 63
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    .line 64
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    .line 69
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->firstBannerWasShown:Z

    .line 77
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Lcom/appsgeyser/multiTabApp/ui/views/WebContent;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .registers 2

    .line 54
    sput-wide p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->lastTimeFullScreenBannerWasShown:J

    return-wide p0
.end method

.method private calculateScale()I
    .registers 6

    .line 321
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const-string v1, "window"

    .line 323
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_18

    const/16 v1, 0xa

    goto :goto_1a

    :cond_18
    const/16 v1, 0x14

    .line 331
    :goto_1a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dBrowserWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    .line 334
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 337
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 338
    iget v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 339
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6c

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6c

    .line 344
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_70

    .line 346
    :cond_6c
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_70
    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private calculateScale(II)I
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 360
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V
    .registers 9

    .line 81
    sget-object v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    if-eq p1, v0, :cond_f

    goto :goto_2b

    .line 86
    :cond_f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 91
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1, v0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;->init(Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_26
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->init(Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;)V

    .line 95
    :goto_2b
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V

    .line 96
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getBrowser()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    .line 98
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    .line 99
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    new-instance p1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;

    invoke-direct {p1, p0, p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    .line 145
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 147
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    const-string v3, "AppsgeyserJSInterface"

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    invoke-direct {v2, p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;-><init>(Landroid/webkit/WebView;)V

    sget-object v3, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-static {p1, v2}, Lcom/appsgeyser/multiTabApp/plugins/PluginsLoader;->loadPlugins(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 154
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 157
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 161
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_b6

    .line 162
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 165
    :cond_b6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-lt v2, v3, :cond_c0

    .line 166
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 169
    :cond_c0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_c9

    .line 170
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 173
    :cond_c9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const-wide/32 v5, 0xc800000

    .line 177
    invoke-virtual {p1, v5, v6}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 180
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 183
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appcache"

    .line 185
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "databases"

    .line 186
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "geolocation"

    .line 187
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 192
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 193
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 194
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v0, -0x1

    .line 195
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 196
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 197
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file:///android_asset/content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_146

    .line 203
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->calculateScale()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_151

    .line 205
    :cond_146
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 207
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 210
    :goto_151
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->widgetsCount()I

    move-result p1

    if-le p1, v1, :cond_163

    const/16 p1, 0x3d

    .line 211
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    .line 214
    :cond_163
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    const-string v0, "AppsgeyserPrefs"

    invoke-virtual {p1, v0, v4}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "bannerJs"

    const-string v2, ""

    .line 215
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->navigate(Ljava/lang/String;)V

    .line 220
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_194

    .line 221
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_19b

    .line 223
    :cond_194
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    :goto_19b
    return-void
.end method


# virtual methods
.method public createTabContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabContent(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 243
    sget-object p2, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_22

    const/4 p3, 0x2

    if-eq p2, p3, :cond_17

    goto :goto_2c

    .line 249
    :cond_17
    move-object p2, p1

    check-cast p2, Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    .line 250
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V

    goto :goto_2c

    .line 245
    :cond_22
    move-object p2, p1

    check-cast p2, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    .line 246
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V

    :goto_2c
    return-object p1
.end method

.method public getBannerInjectionJs()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 371
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 372
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 371
    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectScripts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 376
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;

    .line 377
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getRegex()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getPattern()Ljava/lang/String;

    move-result-object v4

    const-string v5, " \n "

    if-eqz v3, :cond_65

    .line 379
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_65

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0, v2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_65
    if-eqz v4, :cond_18

    .line 382
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    invoke-static {p1, v4}, Lcom/appsgeyser/multiTabApp/utils/WildcardMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0, v2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    :cond_9d
    return-object v0
.end method

.method public getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    return-object v0
.end method

.method public onBackKeyDown()Z
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v1

    .line 261
    :cond_11
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_26

    .line 262
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return v1

    .line 265
    :cond_26
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 266
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 462
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_c

    .line 463
    sget-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setBannerInjectionJs(Ljava/lang/String;)V
    .registers 5

    .line 396
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3f

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 398
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function(){ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " })()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 401
    :cond_3f
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AppsgeyserPrefs"

    invoke-virtual {v0, v2, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bannerJs"

    .line 403
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMainNavigationActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-void
.end method

.method public setPageRefreshJsCode(Ljava/lang/String;)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->setPageRefreshJsCode(Ljava/lang/String;)V

    return-void
.end method

.method public setProgressBarState(I)V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 297
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1f

    .line 299
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;

    const-string v1, "progressFinishDelay"

    invoke-direct {v0, p0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method public setScaleForPageWithSize(II)V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->calculateScale(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showNavigationBars()V
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->showNavigationBars()V

    return-void
.end method

.method public showProgressBarPanel()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->showProgressBarPanel()V

    return-void
.end method

.method public zoomIn()V
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    return-void
.end method
