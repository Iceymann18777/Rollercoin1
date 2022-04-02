.class Lcom/mopub/common/BrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "BrowserWebViewClient.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/BrowserWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/BrowserWebViewClient;


# direct methods
.method constructor <init>(Lcom/mopub/common/BrowserWebViewClient;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/mopub/common/BrowserWebViewClient$1;->this$0:Lcom/mopub/common/BrowserWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 4

    .line 67
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 68
    iget-object p2, p0, Lcom/mopub/common/BrowserWebViewClient$1;->this$0:Lcom/mopub/common/BrowserWebViewClient;

    invoke-static {p2}, Lcom/mopub/common/BrowserWebViewClient;->access$000(Lcom/mopub/common/BrowserWebViewClient;)Lcom/mopub/common/MoPubBrowser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/common/MoPubBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1f

    .line 71
    :cond_16
    iget-object p1, p0, Lcom/mopub/common/BrowserWebViewClient$1;->this$0:Lcom/mopub/common/BrowserWebViewClient;

    invoke-static {p1}, Lcom/mopub/common/BrowserWebViewClient;->access$000(Lcom/mopub/common/BrowserWebViewClient;)Lcom/mopub/common/MoPubBrowser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/MoPubBrowser;->finish()V

    :goto_1f
    return-void
.end method
