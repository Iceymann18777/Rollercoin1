.class final Lcom/appnext/ads/interstitial/InterstitialActivity$7;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$7;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 260
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$7;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->k(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$7;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->l(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-string v0, "http"

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 255
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
