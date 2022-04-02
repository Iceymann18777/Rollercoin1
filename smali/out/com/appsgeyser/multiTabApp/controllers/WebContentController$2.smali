.class Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;
.super Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 106
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "url"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->removeAllViews()V

    .line 112
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$102(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 113
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p3}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    .line 115
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 117
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 119
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_61

    const/4 p3, 0x2

    .line 120
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_61
    const/4 p3, -0x1

    .line 123
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 124
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 126
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p3, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;

    invoke-direct {p3, p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p3}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 138
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 139
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {p3}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 140
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return p2
.end method
