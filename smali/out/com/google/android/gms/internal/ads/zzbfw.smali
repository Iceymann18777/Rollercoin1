.class public final Lcom/google/android/gms/internal/ads/zzbfw;
.super Ljava/lang/Object;


# static fields
.field private static zzedy:Ljava/lang/String;


# direct methods
.method public static zzbn(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfw;->zzedy:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "http://www.example.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object v3, v4

    :goto_24
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_31
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_31

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_5c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    sput-object v4, Lcom/google/android/gms/internal/ads/zzbfw;->zzedy:Ljava/lang/String;

    goto :goto_ae

    :cond_65
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_75

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_72
    sput-object p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzedy:Ljava/lang/String;

    goto :goto_ae

    :cond_75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzd(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_8a

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    sput-object v3, Lcom/google/android/gms/internal/ads/zzbfw;->zzedy:Ljava/lang/String;

    goto :goto_ae

    :cond_8a
    const-string p0, "com.android.chrome"

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    :goto_92
    goto :goto_72

    :cond_93
    const-string p0, "com.chrome.beta"

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto :goto_92

    :cond_9c
    const-string p0, "com.chrome.dev"

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    goto :goto_92

    :cond_a5
    const-string p0, "com.google.android.apps.chrome"

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_92

    :cond_ae
    :goto_ae
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzedy:Ljava/lang/String;

    return-object p0
.end method

.method private static zzd(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_3a

    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_36} :catch_3b

    if-eqz p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_3a
    :goto_3a
    return v0

    :catch_3b
    const-string p0, "CustomTabsHelper"

    const-string p1, "Runtime exception while getting specialized handlers"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v0
.end method
