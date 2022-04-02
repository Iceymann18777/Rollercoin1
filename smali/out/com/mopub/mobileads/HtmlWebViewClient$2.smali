.class Lcom/mopub/mobileads/HtmlWebViewClient$2;
.super Ljava/lang/Object;
.source "HtmlWebViewClient.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/HtmlWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/HtmlWebViewClient;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlWebViewClient;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient$2;->this$0:Lcom/mopub/mobileads/HtmlWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient$2;->this$0:Lcom/mopub/mobileads/HtmlWebViewClient;

    invoke-static {p1}, Lcom/mopub/mobileads/HtmlWebViewClient;->access$000(Lcom/mopub/mobileads/HtmlWebViewClient;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 59
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient$2;->this$0:Lcom/mopub/mobileads/HtmlWebViewClient;

    invoke-static {p1}, Lcom/mopub/mobileads/HtmlWebViewClient;->access$100(Lcom/mopub/mobileads/HtmlWebViewClient;)Lcom/mopub/mobileads/HtmlWebViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/HtmlWebViewListener;->onClicked()V

    .line 60
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient$2;->this$0:Lcom/mopub/mobileads/HtmlWebViewClient;

    invoke-static {p1}, Lcom/mopub/mobileads/HtmlWebViewClient;->access$000(Lcom/mopub/mobileads/HtmlWebViewClient;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V

    :cond_1e
    return-void
.end method
