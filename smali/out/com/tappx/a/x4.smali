.class public Lcom/tappx/a/x4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    return-void

    .line 8
    :cond_a
    :try_start_a
    new-instance v0, Lcom/tappx/a/s4$a;

    const-string v1, "onResume"

    invoke-direct {v0, p0, v1}, Lcom/tappx/a/s4$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tappx/a/s4$a;->b()Lcom/tappx/a/s4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tappx/a/s4$a;->a()Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    const-string p1, ""

    .line 10
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_14

    .line 14
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    return-void

    .line 20
    :cond_14
    :try_start_14
    new-instance p1, Lcom/tappx/a/s4$a;

    const-string v0, "onPause"

    invoke-direct {p1, p0, v0}, Lcom/tappx/a/s4$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tappx/a/s4$a;->b()Lcom/tappx/a/s4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tappx/a/s4$a;->a()Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method
