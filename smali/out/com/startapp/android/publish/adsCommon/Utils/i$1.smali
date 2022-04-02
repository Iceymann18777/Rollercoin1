.class final Lcom/startapp/android/publish/adsCommon/Utils/i$1;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/startapp/android/publish/adsCommon/Utils/i$a;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/webkit/WebView;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V
    .registers 4

    .line 348
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->c:Lcom/startapp/android/publish/adsCommon/Utils/i$a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 351
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageFinished url=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StartAppWall.Util"

    const/4 v0, 0x4

    invoke-static {p2, v0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->a:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->a:Landroid/os/Handler;

    new-instance p2, Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;

    invoke-direct {p2, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;-><init>(Lcom/startapp/android/publish/adsCommon/Utils/i$1;)V

    sget v0, Lcom/startapp/android/publish/adsCommon/Utils/i;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError failingUrl=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "], description=["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "StartAppWall.Util"

    const/4 v0, 0x6

    invoke-static {p4, v0, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->a:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->a:Landroid/os/Handler;

    new-instance p4, Lcom/startapp/android/publish/adsCommon/Utils/i$1$2;

    invoke-direct {p4, p0, p1, p3}, Lcom/startapp/android/publish/adsCommon/Utils/i$1$2;-><init>(Lcom/startapp/android/publish/adsCommon/Utils/i$1;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading url=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartAppWall.Util"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
