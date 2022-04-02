.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/BaseInterstitialActivity;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;
    }
.end annotation


# instance fields
.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object p0
.end method

.method static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;
    .registers 8

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "clickthrough-url"

    .line 72
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    .line 73
    invoke-virtual {v0, p0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "mopub-intent-ad-report"

    .line 74
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com_mopub_orientation"

    .line 75
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 76
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;J)V
    .registers 9

    .line 86
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-static {v0, p2, p3, p4}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object p4

    .line 90
    invoke-virtual {p4}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enableJavascriptCaching()V

    .line 92
    new-instance v0, Lcom/mopub/mobileads/MoPubActivity$1;

    invoke-direct {v0, p3}, Lcom/mopub/mobileads/MoPubActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {p4, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    new-instance p3, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {p3, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p3, p1, p4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 109
    invoke-static {p2}, Lcom/mopub/mobileads/MoPubActivity;->getResponseString(Lcom/mopub/common/AdReport;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 110
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p4, p3, p2}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;Lcom/mopub/mraid/MraidController;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)V
    .registers 8

    .line 58
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 59
    invoke-static/range {p0 .. p5}, Lcom/mopub/mobileads/MoPubActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;

    move-result-object p1

    .line 62
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string p0, "MoPubActivity"

    const-string p1, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .registers 7

    .line 116
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clickthrough-url"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 126
    invoke-static {v2}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 127
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v3

    instance-of v3, v3, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v3, :cond_52

    .line 128
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 129
    new-instance v3, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    .line 130
    invoke-virtual {v4}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    .line 129
    :goto_3b
    invoke-virtual {v1, v3, v0, v4}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0

    .line 139
    :cond_52
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "WebView cache miss. Recreating the WebView."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    new-instance v4, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    invoke-static {v2, v3, v4, v0}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 143
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 144
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, p0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 151
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com_mopub_orientation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 156
    instance-of v0, p1, Lcom/mopub/common/CreativeOrientation;

    if-nez v0, :cond_14

    goto :goto_17

    .line 159
    :cond_14
    check-cast p1, Lcom/mopub/common/CreativeOrientation;

    goto :goto_19

    .line 157
    :cond_17
    :goto_17
    sget-object p1, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    .line 161
    :goto_19
    invoke-static {p0, p1}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 163
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz p1, :cond_23

    .line 164
    invoke-virtual {p1, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    .line 166
    :cond_23
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, p1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_a

    .line 172
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v0, :cond_1c

    .line 176
    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 179
    :cond_1c
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onDestroy()V

    return-void
.end method
