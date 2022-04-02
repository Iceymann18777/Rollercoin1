.class public final Lcom/truenet/android/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_17

    :cond_15
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_17
    return-object p0
.end method
