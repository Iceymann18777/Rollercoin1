.class final Lcom/appnext/core/webview/AppnextWebView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/webview/AppnextWebView;->v(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iq:Lcom/appnext/core/webview/AppnextWebView;


# direct methods
.method constructor <init>(Lcom/appnext/core/webview/AppnextWebView;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$1;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-string v0, "http"

    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 184
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
