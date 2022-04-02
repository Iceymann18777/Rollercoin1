.class Lcom/tappx/a/l2$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/l2;


# direct methods
.method constructor <init>(Lcom/tappx/a/l2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l2$c;->a:Lcom/tappx/a/l2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "tappx://consent?yes"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 2
    iget-object p1, p0, Lcom/tappx/a/l2$c;->a:Lcom/tappx/a/l2;

    invoke-static {p1}, Lcom/tappx/a/l2;->c(Lcom/tappx/a/l2;)Lcom/tappx/a/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/n2;->g()V

    return v1

    :cond_13
    const-string v0, "tappx://consent?no"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5
    iget-object p1, p0, Lcom/tappx/a/l2$c;->a:Lcom/tappx/a/l2;

    invoke-static {p1}, Lcom/tappx/a/l2;->c(Lcom/tappx/a/l2;)Lcom/tappx/a/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/n2;->f()V

    return v1

    :cond_25
    const-string v0, "tappx://close"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8
    iget-object p1, p0, Lcom/tappx/a/l2$c;->a:Lcom/tappx/a/l2;

    invoke-static {p1}, Lcom/tappx/a/l2;->b(Lcom/tappx/a/l2;)V

    return v1

    .line 10
    :cond_33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    iget-object v1, p0, Lcom/tappx/a/l2$c;->a:Lcom/tappx/a/l2;

    invoke-static {v1}, Lcom/tappx/a/l2;->d(Lcom/tappx/a/l2;)Lcom/tappx/sdk/android/PrivacyConsentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 14
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
