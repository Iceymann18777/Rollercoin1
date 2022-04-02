.class public Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;
.super Lcom/integralads/avid/library/mopub/weakreference/AvidView;
.source "AvidWebView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/mopub/weakreference/AvidView<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public injectFormattedJavaScript(Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidCommand;->formatJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->injectFormattedJavaScript(Ljava/lang/String;)V

    return-void
.end method
