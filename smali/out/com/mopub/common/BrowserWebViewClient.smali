.class Lcom/mopub/common/BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# static fields
.field private static final SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/BrowserWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/BrowserWebViewClient;)Lcom/mopub/common/MoPubBrowser;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 95
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_12

    sget-object p2, Lcom/mopub/common/util/Drawables;->LEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v0, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    .line 98
    invoke-virtual {p2, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1a

    :cond_12
    sget-object p2, Lcom/mopub/common/util/Drawables;->UNLEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v0, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    .line 99
    invoke-virtual {p2, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 100
    :goto_1a
    iget-object v0, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0}, Lcom/mopub/common/MoPubBrowser;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_32

    sget-object p1, Lcom/mopub/common/util/Drawables;->RIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object p2, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    .line 103
    invoke-virtual {p1, p2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3a

    :cond_32
    sget-object p1, Lcom/mopub/common/util/Drawables;->UNRIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object p2, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    .line 104
    invoke-virtual {p1, p2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 105
    :goto_3a
    iget-object p2, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {p2}, Lcom/mopub/common/MoPubBrowser;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 51
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MoPubBrowser error: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6

    .line 111
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_12

    :cond_10
    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_12
    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {p1}, Lcom/mopub/common/MoPubBrowser;->finish()V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_8
    new-instance p1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v0, Lcom/mopub/common/BrowserWebViewClient;->SUPPORTED_URL_ACTIONS:Ljava/util/EnumSet;

    .line 61
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    new-instance v0, Lcom/mopub/common/BrowserWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/mopub/common/BrowserWebViewClient$1;-><init>(Lcom/mopub/common/BrowserWebViewClient;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/mopub/common/BrowserWebViewClient;->mMoPubBrowser:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0}, Lcom/mopub/common/MoPubBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/mopub/common/UrlHandler;->handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    move-result p1

    return p1
.end method
