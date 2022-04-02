.class public final Lcom/google/android/youtube/player/YouTubeStandalonePlayer;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;IZZ)Landroid/content/Intent;
    .registers 8

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->a(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "developer_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "autoplay"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "lightbox_mode"

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "start_time_millis"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    const-string p3, "window_has_status_bar"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public static createVideoIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/content/Intent;
    .registers 14

    if-eqz p2, :cond_23

    if-eqz p1, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.api.StandalonePlayerActivity.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/youtube/player/YouTubeStandalonePlayer;->a(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;IZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The developerKey cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The videoId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
