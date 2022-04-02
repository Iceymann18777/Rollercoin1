.class public Lcom/mopub/mobileads/BaseHtmlWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "BaseHtmlWebView.java"


# instance fields
.field private final mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->disableScrollingAndZoom()V

    .line 31
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    new-instance p2, Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/BaseHtmlWebView;)Lcom/mopub/mobileads/ViewGestureDetector;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    return-object p0
.end method

.method private disableScrollingAndZoom()V
    .registers 3

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setVerticalScrollbarOverlay(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->initializeOnTouchListener()V

    return-void
.end method

.method initializeOnTouchListener()V
    .registers 2

    .line 88
    new-instance v0, Lcom/mopub/mobileads/BaseHtmlWebView$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/BaseHtmlWebView$1;-><init>(Lcom/mopub/mobileads/BaseHtmlWebView;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method loadHtmlResponse(Ljava/lang/String;)V
    .registers 10

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/mobileads/BaseHtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "javascript:"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_f
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResetUserClick()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector;->onResetUserClick()V

    :cond_7
    return-void
.end method

.method public stopLoading()V
    .registers 6

    .line 58
    const-class v0, Lcom/mopub/mobileads/BaseHtmlWebView;

    iget-boolean v1, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mIsDestroyed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    .line 59
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#stopLoading() called after destroy()"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_27
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 65
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#getSettings() returned null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_4c
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->stopLoading()V

    .line 71
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public wasClicked()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    if-eqz v0, :cond_c

    .line 107
    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
