.class Lcom/tappx/a/c4$e;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/c4;
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
    iput-object p1, p0, Lcom/tappx/a/c4$e;->a:Lcom/tappx/a/c4;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/c4$e;->a:Lcom/tappx/a/c4;

    invoke-static {p1}, Lcom/tappx/a/c4;->b(Lcom/tappx/a/c4;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/c4$e;->a:Lcom/tappx/a/c4;

    invoke-virtual {p1, p2}, Lcom/tappx/a/c4;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
