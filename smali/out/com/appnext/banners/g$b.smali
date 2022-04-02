.class public final Lcom/appnext/banners/g$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic di:Lcom/appnext/banners/g;


# direct methods
.method public constructor <init>(Lcom/appnext/banners/g;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/appnext/banners/g$b;->di:Lcom/appnext/banners/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 343
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/appnext/banners/g$b;->di:Lcom/appnext/banners/g;

    invoke-static {p1}, Lcom/appnext/banners/g;->access$400(Lcom/appnext/banners/g;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-string v0, "http"

    .line 333
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 334
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
