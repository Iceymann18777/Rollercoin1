.class Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PausedContentInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/PausedContentInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/PausedContentInfoActivity;

.field final synthetic val$customHtmlAbout:Z

.field final synthetic val$customHtmlAboutUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/PausedContentInfoActivity;ZLjava/lang/String;)V
    .registers 4

    .line 62
    iput-object p1, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->this$0:Lcom/appsgeyser/sdk/PausedContentInfoActivity;

    iput-boolean p2, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->val$customHtmlAbout:Z

    iput-object p3, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->val$customHtmlAboutUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5

    .line 94
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->val$customHtmlAbout:Z

    if-eqz v0, :cond_14

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->val$customHtmlAboutUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 95
    :cond_14
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 65
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 67
    :try_start_13
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 68
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 72
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_2e} :catch_2f

    return v2

    .line 76
    :catch_2f
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://play.google.com/store/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    .line 81
    :cond_58
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->val$customHtmlAbout:Z

    if-eqz v0, :cond_74

    const-string v0, "appsgeyser.com/branding/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 82
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    iget-object p2, p0, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;->this$0:Lcom/appsgeyser/sdk/PausedContentInfoActivity;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_74
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2
.end method
