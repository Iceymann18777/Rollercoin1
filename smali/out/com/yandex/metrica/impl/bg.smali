.class Lcom/yandex/metrica/impl/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bg$a;
    }
.end annotation


# direct methods
.method public static a([B)Lcom/yandex/metrica/impl/bg$a;
    .registers 11

    const-string v0, "features_collecting"

    const-string v1, "permissions_collecting"

    const-string v2, "socket"

    const-string v3, "package_info"

    const-string v4, "easy_collecting"

    const-string v5, "list"

    .line 281
    new-instance v6, Lcom/yandex/metrica/impl/bg$a;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/bg$a;-><init>()V

    .line 284
    :try_start_11
    new-instance v7, Lcom/yandex/metrica/impl/utils/g$a;

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, p0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/yandex/metrica/impl/utils/g$a;-><init>(Ljava/lang/String;)V

    const-string p0, "device_id"

    .line 287
    invoke-static {v7, p0}, Lcom/yandex/metrica/impl/bg;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/yandex/metrica/impl/bg$a;->e(Ljava/lang/String;)V

    const-string p0, "uuid"

    .line 290
    invoke-static {v7, p0}, Lcom/yandex/metrica/impl/bg;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/yandex/metrica/impl/bg$a;->f(Ljava/lang/String;)V

    const-string p0, "query_hosts"

    .line 1380
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, p0, v8}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 1381
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 1382
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v8, "get_ad"

    .line 1384
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1385
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 1386
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->a(Ljava/lang/String;)V

    :cond_55
    const-string v8, "report"

    .line 1389
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1390
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 1391
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->b(Ljava/lang/String;)V

    :cond_64
    const-string v8, "report_ad"

    .line 1394
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1395
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 1396
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->c(Ljava/lang/String;)V

    :cond_73
    const-string v8, "ssl_pinning"

    .line 1399
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1400
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 1401
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->d(Ljava/lang/String;)V

    :cond_82
    const-string v8, "bind_id"

    .line 1404
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1405
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1406
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->h(Ljava/lang/String;)V

    :cond_91
    const-string v8, "startup"

    .line 1408
    invoke-static {p0, v8}, Lcom/yandex/metrica/impl/bg;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1420
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a2

    .line 1410
    invoke-virtual {v6, p0}, Lcom/yandex/metrica/impl/bg$a;->a(Ljava/util/List;)V

    :cond_a2
    const-string p0, "distribution_customization"

    .line 1424
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, p0, v8}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const-string v8, "clids"

    .line 1426
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_ba

    .line 1428
    invoke-static {v6, p0}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/impl/bg$a;Lorg/json/JSONObject;)V

    :cond_ba
    const-string p0, "features"

    .line 2310
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, p0, v8}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v8, 0x0

    .line 2311
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->a(Z)V

    .line 2312
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/bg$a;->b(Z)V

    .line 2313
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 2314
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2315
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_dc} :catch_141

    const-string v9, "enabled"

    if-eqz v5, :cond_eb

    .line 2316
    :try_start_e0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2317
    invoke-virtual {v4, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/yandex/metrica/impl/bg$a;->a(Z)V

    .line 2319
    :cond_eb
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 2320
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2321
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/yandex/metrica/impl/bg$a;->b(Z)V

    .line 2323
    :cond_fc
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 2324
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2325
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/bg$a;->c(Z)V

    .line 2327
    :cond_10d
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 2328
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2329
    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/yandex/metrica/impl/bg$a;->d(Z)V

    .line 2331
    :cond_11e
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 2332
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2333
    invoke-virtual {p0, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v6, p0}, Lcom/yandex/metrica/impl/bg$a;->e(Z)V

    .line 295
    :cond_12f
    invoke-static {v6, v7}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/impl/bg$a;Lcom/yandex/metrica/impl/utils/g$a;)V

    .line 296
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/bg$a;->n()Z

    move-result p0

    if-eqz p0, :cond_13b

    .line 297
    invoke-static {v6, v7}, Lcom/yandex/metrica/impl/bg;->b(Lcom/yandex/metrica/impl/bg$a;Lcom/yandex/metrica/impl/utils/g$a;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_13b} :catch_141

    .line 305
    :cond_13b
    sget-object p0, Lcom/yandex/metrica/impl/bg$a$a;->b:Lcom/yandex/metrica/impl/bg$a$a;

    invoke-virtual {v6, p0}, Lcom/yandex/metrica/impl/bg$a;->a(Lcom/yandex/metrica/impl/bg$a$a;)V

    return-object v6

    .line 301
    :catch_141
    new-instance p0, Lcom/yandex/metrica/impl/bg$a;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/bg$a;-><init>()V

    .line 302
    sget-object v0, Lcom/yandex/metrica/impl/bg$a$a;->a:Lcom/yandex/metrica/impl/bg$a$a;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bg$a;->a(Lcom/yandex/metrica/impl/bg$a$a;)V

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 450
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "Date"

    .line 451
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 453
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    .line 455
    :try_start_15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 458
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    :cond_31
    const/4 p0, 0x0

    :goto_32
    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/yandex/metrica/impl/bg$a;Lcom/yandex/metrica/impl/utils/g$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "browsers"

    .line 339
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/g$a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3b

    const-string v0, "list"

    .line 341
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 343
    new-instance v0, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dt;-><init>()V

    const/4 v1, 0x0

    .line 344
    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 345
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "package_id"

    .line 346
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "min_interval_seconds"

    .line 348
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 349
    invoke-virtual {v0, v3, v2}, Lcom/yandex/metrica/impl/ob/dt;->a(Ljava/lang/String;I)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 352
    :cond_38
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bg$a;->a(Lcom/yandex/metrica/impl/ob/dt;)V

    :cond_3b
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/bg$a;Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 435
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 436
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v4, "value"

    .line 440
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 441
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 444
    :cond_2b
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bg$a;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 1

    .line 416
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "urls"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const-string p0, ""

    return-object p0
.end method

.method private static b(Lcom/yandex/metrica/impl/bg$a;Lcom/yandex/metrica/impl/utils/g$a;)V
    .registers 8

    const-string v0, "socket"

    .line 358
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/g$a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5c

    const-string v0, "seconds_to_live"

    .line 360
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "token"

    .line 361
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ports"

    .line 362
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_5c

    .line 363
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5c

    .line 364
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 365
    :goto_38
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 366
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    if-eqz v5, :cond_4b

    .line 368
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 371
    :cond_4e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 372
    new-instance p1, Lcom/yandex/metrica/impl/ob/ds;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ds;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bg$a;->a(Lcom/yandex/metrica/impl/ob/ds;)V

    :cond_5c
    return-void
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "urls"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 1186
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2e

    .line 1187
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1188
    :goto_1d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 1189
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    move-object v0, p1

    :catch_2e
    :cond_2e
    return-object v0
.end method
