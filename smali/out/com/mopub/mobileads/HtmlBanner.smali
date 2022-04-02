.class public Lcom/mopub/mobileads/HtmlBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "HtmlBanner.java"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/mopub/mobileads/HtmlBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "html-response-body"

    .line 126
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/HtmlBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_9c

    const-string v0, "html-response-body"

    .line 48
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "clickthrough-url"

    .line 49
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :try_start_25
    const-string v5, "mopub-intent-ad-report"

    .line 52
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mopub/common/AdReport;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2d} :catch_7b

    .line 68
    invoke-static {p1, p3, p2, p4}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlBannerWebView;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    .line 69
    invoke-static {p2}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 75
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 76
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_5b

    .line 77
    check-cast p1, Landroid/app/Activity;

    .line 78
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/HtmlBanner;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 79
    new-instance p2, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {p2, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 80
    iget-object p3, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto :goto_6a

    .line 82
    :cond_5b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v3, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p3, p2, v4

    const-string p3, "Unable to start viewability session for HTML banner: Context provided was not an Activity."

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 85
    :goto_6a
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/HtmlBannerWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p3, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 54
    :catch_7b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 55
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v3

    .line 54
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 57
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 61
    :cond_9c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 62
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v3

    .line 61
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 64
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 92
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 93
    iput-object v1, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlBannerWebView;->destroy()V

    .line 98
    iput-object v1, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    :cond_13
    return-void
.end method

.method protected trackMpxAndThirdPartyImpressions()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlBannerWebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mWeakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_36

    .line 116
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 118
    iget-object v1, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    goto :goto_36

    .line 120
    :cond_24
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mobileads/HtmlBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Lost the activity for deferred Viewability tracking. Dropping session."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_36
    :goto_36
    return-void
.end method
