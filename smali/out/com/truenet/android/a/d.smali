.class public final Lcom/truenet/android/a/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0

    :cond_10
    new-instance p0, La/a/h;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p0, v0}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroid/content/Context;)Lcom/truenet/android/a/e;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/truenet/android/a/e;

    invoke-direct {v0, p0}, Lcom/truenet/android/a/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
