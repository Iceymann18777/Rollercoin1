.class final Lcom/mopub/mobileads/MraidActivity$1;
.super Lcom/mopub/mraid/MraidWebViewClient;
.source "MraidActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Lcom/mopub/mobileads/BaseWebView;Ljava/lang/Long;Lcom/mopub/mraid/MraidController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field final synthetic val$mraidController:Lcom/mopub/mraid/MraidController;

.field final synthetic val$mraidWebView:Lcom/mopub/mobileads/BaseWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lcom/mopub/mraid/MraidController;Lcom/mopub/mobileads/BaseWebView;)V
    .registers 4

    .line 98
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    iput-object p2, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$mraidController:Lcom/mopub/mraid/MraidController;

    iput-object p3, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$mraidWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 112
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 114
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$mraidController:Lcom/mopub/mraid/MraidController;

    iget-object p2, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$mraidWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidController;->onPreloadFinished(Lcom/mopub/mobileads/BaseWebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mraid/MraidWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string p1, "mopub://failLoad"

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_29

    .line 102
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_29
    return p2
.end method
