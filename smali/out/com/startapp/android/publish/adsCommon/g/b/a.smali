.class public final Lcom/startapp/android/publish/adsCommon/g/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/startapp/android/publish/adsCommon/g/b/b;)V
    .registers 4

    if-nez p2, :cond_7

    .line 21
    new-instance p2, Lcom/startapp/android/publish/adsCommon/g/b/b;

    invoke-direct {p2, p0}, Lcom/startapp/android/publish/adsCommon/g/b/b;-><init>(Landroid/content/Context;)V

    .line 24
    :cond_7
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/g/b/b;->a()Z

    move-result p0

    const-string v0, "mraid.SUPPORTED_FEATURES.CALENDAR"

    invoke-static {p1, v0, p0}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/g/b/b;->b()Z

    move-result p0

    const-string v0, "mraid.SUPPORTED_FEATURES.INLINEVIDEO"

    invoke-static {p1, v0, p0}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/g/b/b;->c()Z

    move-result p0

    const-string v0, "mraid.SUPPORTED_FEATURES.SMS"

    invoke-static {p1, v0, p0}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/g/b/b;->d()Z

    move-result p0

    const-string v0, "mraid.SUPPORTED_FEATURES.STOREPICTURE"

    invoke-static {p1, v0, p0}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/g/b/b;->e()Z

    move-result p0

    const-string p2, "mraid.SUPPORTED_FEATURES.TEL"

    invoke-static {p1, p2, p0}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
