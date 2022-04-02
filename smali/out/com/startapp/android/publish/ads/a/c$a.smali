.class Lcom/startapp/android/publish/ads/a/c$a;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/a/c;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 257
    iget-object p2, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/ads/a/c;->c(Landroid/webkit/WebView;)V

    .line 258
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/a/c;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "gClientInterface.setMode"

    invoke-virtual {p1, v1, v0}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "externalLinks"

    aput-object v0, p2, v2

    const-string v0, "enableScheme"

    invoke-virtual {p1, v0, p2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/a/c;->A()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MyWebViewClient::shouldOverrideUrlLoading - ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/a/c;->a(Lcom/startapp/android/publish/ads/a/c;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/a/c;->b(Lcom/startapp/android/publish/ads/a/c;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v0

    .line 272
    :cond_2c
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$a;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-virtual {p1, p2, v0}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
