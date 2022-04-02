.class Lcom/tappx/a/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/f5;I)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/tappx/a/f5;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/tappx/a/z4;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    const-class v0, Lcom/tappx/sdk/android/InterstitialAdActivity;

    goto :goto_11

    .line 4
    :cond_f
    const-class v0, Lcom/tappx/sdk/android/AdActivity;

    .line 6
    :goto_11
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-static {v1, p1}, Lcom/tappx/a/y3;->a(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "aavc_fagZVUC6pOQOxawVwpVy"

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "aavc_otZMuRlffpTHI9DsaLyI"

    .line 9
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :try_start_28
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_46

    .line 14
    :catch_2c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dfKcWOaG8KPoMfm5zts08Qlu05+R8BIzO3YcOMbimy7M7b66oYD1J20myZSpOoOWRYcUsjDmTjtwSPWh2TgTXA"

    .line 16
    invoke-static {p2}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    aput-object p1, p3, p0

    invoke-static {p2, p3}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_46
    return-void
.end method

.method private static a()Z
    .registers 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
