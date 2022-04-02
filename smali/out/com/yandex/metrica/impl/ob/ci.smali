.class public Lcom/yandex/metrica/impl/ob/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ci$c;,
        Lcom/yandex/metrica/impl/ob/ci$a;,
        Lcom/yandex/metrica/impl/ob/ci$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yandex/metrica/impl/ob/ci$a;

.field private final c:Lcom/yandex/metrica/impl/ob/ck;

.field private d:Lcom/yandex/metrica/impl/ob/ch;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ob/ci$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/ci$a;-><init>(Lcom/yandex/metrica/impl/ob/ci;B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->b:Lcom/yandex/metrica/impl/ob/ci$a;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/ob/ck;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ck;-><init>(Lcom/yandex/metrica/impl/ob/ci;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->c:Lcom/yandex/metrica/impl/ob/ck;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ci;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/ch;
    .registers 6

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1166
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object p1
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/ci;
    .registers 1

    .line 64
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci$b;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ci;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 3211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {p1, p0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    .line 3212
    new-instance v0, Lcom/yandex/metrica/impl/ob/ci$c;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "saving_empty_device_id"

    .line 3213
    invoke-interface {p0, p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 3215
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 2064
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci$b;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 289
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 292
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v2}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v2

    if-lez v2, :cond_1d

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_1d

    .line 2305
    :try_start_35
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "DEVICE_ID"

    .line 2306
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2310
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "content://%s.MetricaContentProvider/DEVICE_ID"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5f} :catch_60

    goto :goto_1d

    :catch_60
    nop

    goto :goto_1d

    :cond_62
    return-object v0
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;
    .registers 8

    const/4 v0, 0x0

    .line 149
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 151
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    monitor-enter p2
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_f} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_29

    .line 152
    :try_start_f
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/r;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 153
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_26

    if-nez p1, :cond_17

    return-object v0

    .line 154
    :cond_17
    :try_start_17
    new-instance p2, Lcom/yandex/metrica/impl/ob/ch;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {p2, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Lorg/json/JSONObject;J)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_25} :catch_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_29

    return-object p2

    :catchall_26
    move-exception p1

    .line 153
    :try_start_27
    monitor-exit p2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p1
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_29} :catch_29
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    return-object v0
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->c()Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v1

    if-nez v1, :cond_69

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 228
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->e()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object p2

    .line 230
    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/ch;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ch;->e()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 231
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ch;

    .line 232
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 234
    :cond_35
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->b()Lcom/yandex/metrica/impl/ob/ci$a;

    move-result-object p2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/yandex/metrica/impl/ob/ci$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 237
    :cond_43
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ch;->e()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 238
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ch;

    .line 239
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 241
    :cond_51
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->b()Lcom/yandex/metrica/impl/ob/ci$a;

    move-result-object p2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/yandex/metrica/impl/ob/ci$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 245
    :cond_5f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->b()Lcom/yandex/metrica/impl/ob/ci$a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/ci$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 248
    :cond_69
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->c()Lcom/yandex/metrica/impl/ob/ch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_73
    move-exception p1

    .line 250
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw p1
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;
    .registers 4

    const-string v0, "credentials.dat"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ci;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;
    .registers 6

    .line 127
    new-instance v0, Ljava/io/File;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "credentials.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/yandex/metrica/impl/ob/ci$a;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->b:Lcom/yandex/metrica/impl/ob/ci$a;

    return-object v0
.end method

.method c()Lcom/yandex/metrica/impl/ob/ch;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ch;

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->c()Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_8
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_31

    .line 190
    :try_start_3
    new-instance v1, Lcom/yandex/metrica/impl/ob/ch;

    new-instance v2, Lcom/yandex/metrica/impl/ob/cj;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/cj;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cj;J)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ch;

    .line 191
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ch;->a()Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->e()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_20
    const-string v1, "credentials.dat"

    .line 1172
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2e

    .line 1173
    :try_start_25
    invoke-static {p1, v1, p2}, Lcom/yandex/metrica/impl/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2b

    .line 196
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2e

    return-void

    :catchall_2b
    move-exception p1

    .line 1174
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p1

    :catchall_2e
    move-exception p1

    .line 196
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method

.method e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "credentials.dat"

    .line 206
    invoke-static {p1, v1, p2}, Lcom/yandex/metrica/impl/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method e()Z
    .registers 2

    const/16 v0, 0x15

    .line 183
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    return v0
.end method

.method f()Lcom/yandex/metrica/impl/ob/ck;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->c:Lcom/yandex/metrica/impl/ob/ck;

    return-object v0
.end method

.method f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MetricaContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 258
    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v0, :cond_22

    goto :goto_5e

    .line 262
    :cond_22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string p2, "content://%s.MetricaContentProvider/DEVICE_ID"

    invoke-static {v0, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 267
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_5a
    .catchall {:try_start_2f .. :try_end_3f} :catchall_55

    if-eqz p1, :cond_5b

    .line 268
    :try_start_41
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5b

    const-string p2, "DEVICE_ID"

    .line 269
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_51} :catch_5b
    .catchall {:try_start_41 .. :try_end_51} :catchall_52

    goto :goto_5b

    :catchall_52
    move-exception p2

    move-object v1, p1

    goto :goto_56

    :catchall_55
    move-exception p2

    .line 276
    :goto_56
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw p2

    :catch_5a
    move-object p1, v1

    :catch_5b
    :cond_5b
    :goto_5b
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    :cond_5e
    :goto_5e
    return-object v1
.end method
