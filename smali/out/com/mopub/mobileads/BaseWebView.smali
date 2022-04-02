.class public Lcom/mopub/mobileads/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field private static sDeadlockCleared:Z = false


# instance fields
.field protected mIsDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseWebView;->restrictDeviceContentAccess()V

    .line 35
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V

    .line 37
    sget-boolean p1, Lcom/mopub/mobileads/BaseWebView;->sDeadlockCleared:Z

    if-nez p1, :cond_1b

    .line 38
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;->clearWebViewDeadlock(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 39
    sput-boolean p1, Lcom/mopub/mobileads/BaseWebView;->sDeadlockCleared:Z

    :cond_1b
    return-void
.end method

.method private clearWebViewDeadlock(Landroid/content/Context;)V
    .registers 10

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_45

    .line 105
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, v0

    .line 110
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, 0x1

    .line 112
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d5

    .line 115
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x1000018

    .line 116
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 119
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    .line 120
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "window"

    .line 122
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 124
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    return-void
.end method

.method private restrictDeviceContentAccess()V
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->mIsDestroyed:Z

    .line 59
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->removeAllViews()V

    .line 64
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected enableJavascriptCaching()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 46
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->manageThirdPartyCookies(Landroid/webkit/WebView;)V

    return-void
.end method

.method setIsDestroyed(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebView;->mIsDestroyed:Z

    return-void
.end method
