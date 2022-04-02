.class final Lcom/mopub/mobileads/MoPubActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "mopub://finishLoad"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 96
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_1c

    :cond_e
    const-string p1, "mopub://failLoad"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 98
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubActivity$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method
