.class public Lcom/mopub/mobileads/HtmlInterstitialWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "HtmlInterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 24
    invoke-super {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->init()V

    .line 26
    new-instance v0, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 27
    new-instance p1, Lcom/mopub/mobileads/HtmlWebViewClient;

    invoke-direct {p1, v0, p0, p2, p3}, Lcom/mopub/mobileads/HtmlWebViewClient;-><init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
