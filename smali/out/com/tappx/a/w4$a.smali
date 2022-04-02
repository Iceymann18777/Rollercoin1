.class final Lcom/tappx/a/w4$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w4;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p1}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p1}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p1}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p1}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method
