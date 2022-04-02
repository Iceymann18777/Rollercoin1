.class public final Lcom/truenet/android/a/j;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 4

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 19
    invoke-static {}, Landroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    .line 22
    :cond_e
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truenet/android/a/c;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->measure(II)V

    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/webkit/WebView;->layout(IIII)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->buildDrawingCache(Z)V

    const-wide/16 v0, 0x1f4

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 32
    invoke-virtual {p0}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    const-string p0, "bitmap"

    .line 35
    invoke-static {v0, p0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
