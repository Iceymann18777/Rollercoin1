.class public final Lcom/truenet/android/a/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0

    :cond_10
    new-instance p0, La/a/h;

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p0, v0}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    check-cast p0, Landroid/view/WindowManager;

    return-object p0

    :cond_10
    new-instance p0, La/a/h;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method
