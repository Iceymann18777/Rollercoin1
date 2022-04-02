.class public final Lcom/truenet/android/b$c;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truenet/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/truenet/android/b;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truenet/android/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/truenet/android/b$c;->a:Lcom/truenet/android/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    .line 216
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/truenet/android/b$c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final a()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/truenet/android/b$c;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_8
    const/4 v0, 0x0

    .line 258
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/truenet/android/b$c;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-direct {p0}, Lcom/truenet/android/b$c;->a()V

    if-eqz p2, :cond_13

    if-eqz p1, :cond_a

    .line 222
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 223
    :cond_a
    iget-object p1, p0, Lcom/truenet/android/b$c;->a:Lcom/truenet/android/b;

    invoke-static {p1}, Lcom/truenet/android/b;->a(Lcom/truenet/android/b;)Ljava/util/concurrent/SynchronousQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8

    .line 240
    invoke-direct {p0}, Lcom/truenet/android/b$c;->a()V

    .line 241
    iget-object v0, p0, Lcom/truenet/android/b$c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/truenet/android/b$c$a;

    invoke-direct {v1, p0}, Lcom/truenet/android/b$c$a;-><init>(Lcom/truenet/android/b$c;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 243
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 241
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/truenet/android/b$c;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 245
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    .line 249
    invoke-direct {p0}, Lcom/truenet/android/b$c;->a()V

    if-eqz p1, :cond_8

    .line 250
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/truenet/android/b$c;->a:Lcom/truenet/android/b;

    invoke-static {v0}, Lcom/truenet/android/b;->a(Lcom/truenet/android/b;)Ljava/util/concurrent/SynchronousQueue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    if-eqz p2, :cond_7

    .line 229
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/truenet/android/b$c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/truenet/android/b$c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
