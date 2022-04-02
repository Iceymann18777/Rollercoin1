.class public Lcom/yandex/metrica/impl/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 314
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->D()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1318
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "metrica:api:key"

    invoke-static {p0, p2, v0, p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 71
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_e

    :catch_c
    const-string p0, "0.0"

    :goto_e
    return-object p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x80

    .line 273
    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_f

    .line 274
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_17

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    :cond_17
    return-object p3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 95
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method

.method static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_17

    .line 108
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 109
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_19

    :cond_17
    const-string p0, ""

    :goto_19
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_17

    :catch_17
    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 171
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 172
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    if-eqz p0, :cond_6

    .line 288
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    nop

    :catch_6
    :cond_6
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_6

    .line 145
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    nop

    :catch_6
    :cond_6
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 185
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid %s. %s should not be null."

    .line 186
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "API Key"

    .line 217
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_5
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    .line 222
    :catch_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 p0, 0x2

    const-string v0, "https://tech.yandex.com/metrica-mobile-sdk/doc/mobile-sdk-dg/concepts/android-initialize-docpage/"

    aput-object v0, v3, p0

    const-string p0, "Invalid %s = %s. Please, read official documentation how to obtain one: %s"

    .line 223
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 200
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid %s. %s should not be null/empty."

    .line 201
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 1

    if-eqz p0, :cond_6

    .line 159
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    nop

    :catch_6
    :cond_6
    return-void
.end method

.method public static a(I)Z
    .registers 2

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_10

    if-nez p1, :cond_b

    goto :goto_10

    .line 213
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Collection;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 310
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Map;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 306
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static a([J)[Ljava/lang/String;
    .registers 5

    .line 355
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 356
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 357
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 84
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_b

    :catch_b
    return v0
.end method

.method public static b(I)Z
    .registers 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    .line 346
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-1"

    .line 347
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method
