.class public final Lcom/yandex/metrica/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1035
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1039
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 29
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_b

    if-nez p0, :cond_b

    :cond_9
    const/4 p0, 0x1

    const/4 v0, 0x1

    :catch_b
    :cond_b
    return v0
.end method
