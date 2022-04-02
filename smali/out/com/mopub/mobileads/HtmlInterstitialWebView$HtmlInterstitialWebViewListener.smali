.class Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"

# interfaces
.implements Lcom/mopub/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HtmlInterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlInterstitialWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-void
.end method


# virtual methods
.method public onClicked()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    return-void
.end method

.method public onCollapsed()V
    .registers 1

    return-void
.end method

.method public onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .registers 2

    .line 44
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method
