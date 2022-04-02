.class Lcom/yandex/metrica/impl/ob/ci$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ob/ci;

.field private b:Landroid/net/LocalServerSocket;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ci;)V
    .registers 2

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ci$a;->a:Lcom/yandex/metrica/impl/ob/ci;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/ci;B)V
    .registers 3

    .line 318
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ci$a;-><init>(Lcom/yandex/metrica/impl/ob/ci;)V

    return-void
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/ci;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci$a;->a:Lcom/yandex/metrica/impl/ob/ci;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 356
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 360
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ci;->f()Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 362
    new-instance v0, Lcom/yandex/metrica/impl/ob/dn;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dn;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 364
    :cond_17
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->b()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 366
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ci;->f()Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {p0, p1, p2, v2}, Lcom/yandex/metrica/impl/ob/ci$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1344
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ci$a;->b:Landroid/net/LocalServerSocket;

    if-eqz v3, :cond_3f

    .line 1346
    :try_start_31
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    .line 1347
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ci$a;->b:Landroid/net/LocalServerSocket;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    nop

    goto :goto_3f

    .line 373
    :cond_39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dn;->a()V

    .line 374
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dn;->c()V

    .line 376
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dn;->b()Z

    move-result v3

    if-nez v3, :cond_17

    return-object v2
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 383
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 387
    :cond_e
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/ci;->a(Lcom/yandex/metrica/impl/ob/ci;Landroid/content/Context;Ljava/lang/String;)V

    return-object p3

    .line 392
    :cond_16
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    if-eqz v0, :cond_34

    .line 393
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->a(Lcom/yandex/metrica/impl/ob/ci;Landroid/content/Context;Ljava/lang/String;)V

    .line 2022
    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 394
    new-instance v1, Lcom/yandex/metrica/impl/ob/ci$c;

    invoke-direct {v1, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ci$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "update_snapshot"

    .line 395
    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2

    .line 398
    :cond_34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 400
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci;->a(Lcom/yandex/metrica/impl/ob/ci;Landroid/content/Context;Ljava/lang/String;)V

    .line 3022
    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/yandex/metrica/impl/ob/ci$c;

    invoke-direct {v1, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ci$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wtf_situation. App has id and elector hasn\'t"

    .line 403
    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2

    .line 407
    :cond_50
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci$a;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/yandex/metrica/impl/ob/ci;->a(Lcom/yandex/metrica/impl/ob/ci;Landroid/content/Context;Ljava/lang/String;)V

    .line 4022
    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/yandex/metrica/impl/ob/ci$c;

    invoke-direct {v1, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ci$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "overlapping_device_id"

    .line 410
    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-object p3
.end method

.method b()Z
    .registers 3

    .line 336
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "com.yandex.metrica.synchronization.deviceid"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci$a;->b:Landroid/net/LocalServerSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    const/4 v0, 0x0

    return v0
.end method
