.class Lcom/tappx/a/c4$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c4;->a(Lcom/tappx/a/q4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c4;


# direct methods
.method constructor <init>(Lcom/tappx/a/c4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c4$a;->a:Lcom/tappx/a/c4;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4$a;->a:Lcom/tappx/a/c4;

    invoke-static {v0}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;)Lcom/tappx/a/c4$h;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c4$a;->a:Lcom/tappx/a/c4;

    invoke-static {v0}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;)Lcom/tappx/a/c4$h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tappx/a/c4$h;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 4
    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4$a;->a:Lcom/tappx/a/c4;

    invoke-static {v0}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;)Lcom/tappx/a/c4$h;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object p1, p0, Lcom/tappx/a/c4$a;->a:Lcom/tappx/a/c4;

    invoke-static {p1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;)Lcom/tappx/a/c4$h;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/tappx/a/c4$h;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 4
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
