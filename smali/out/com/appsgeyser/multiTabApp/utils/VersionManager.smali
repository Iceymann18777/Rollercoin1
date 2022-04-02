.class public Lcom/appsgeyser/multiTabApp/utils/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# direct methods
.method public static getCurrentVersion(Landroid/content/Context;)I
    .registers 3

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 32
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_15
    return p0
.end method

.method public static getPreviousVersion(Landroid/content/Context;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "app_version_prefix"

    .line 18
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return v0
.end method
