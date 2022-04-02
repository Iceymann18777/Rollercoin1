.class public final Lcom/google/android/youtube/player/YouTubeIntents;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_package"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/player/internal/z;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/youtube/player/internal/z;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_library_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
