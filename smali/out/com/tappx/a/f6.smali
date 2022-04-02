.class public Lcom/tappx/a/f6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tappx/a/q5;)Lcom/tappx/a/h5$a;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lcom/tappx/a/q5;->c:Ljava/util/Map;

    const-string v4, "Date"

    .line 18
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 20
    invoke-static {v4}, Lcom/tappx/a/f6;->b(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    :goto_19
    const-string v4, "Cache-Control"

    .line 23
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v4, :cond_88

    const-string v11, ","

    .line 26
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 27
    :goto_2f
    array-length v9, v4

    if-ge v10, v9, :cond_85

    .line 28
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v5, "no-cache"

    .line 29
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "no-store"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_83

    :cond_49
    const-string v5, "max-age="

    .line 31
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v5, 0x8

    .line 33
    :try_start_53
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_80

    goto :goto_80

    :cond_5c
    const-string v5, "stale-while-revalidate="

    .line 36
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const/16 v5, 0x17

    .line 38
    :try_start_66
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_80

    goto :goto_80

    :cond_6f
    const-string v5, "must-revalidate"

    .line 41
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string v5, "proxy-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_7f
    const/4 v11, 0x1

    :catch_80
    :cond_80
    :goto_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_83
    :goto_83
    const/4 v0, 0x0

    return-object v0

    :cond_85
    move v10, v11

    const/4 v9, 0x1

    goto :goto_8d

    :cond_88
    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_8d
    const-string v4, "Expires"

    .line 47
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9c

    .line 49
    invoke-static {v4}, Lcom/tappx/a/f6;->b(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_9e

    :cond_9c
    const-wide/16 v4, 0x0

    :goto_9e
    const-string v6, "Last-Modified"

    .line 52
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_af

    .line 54
    invoke-static {v6}, Lcom/tappx/a/f6;->b(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v18, v16

    goto :goto_b1

    :cond_af
    const-wide/16 v18, 0x0

    :goto_b1
    const-string v6, "ETag"

    .line 57
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v9, :cond_cd

    const-wide/16 v4, 0x3e8

    mul-long v12, v12, v4

    add-long/2addr v1, v12

    if-eqz v10, :cond_c4

    move-wide v14, v1

    goto :goto_ca

    :cond_c4
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long v14, v14, v4

    add-long/2addr v14, v1

    :goto_ca
    move-wide v9, v1

    move-wide v1, v14

    goto :goto_dc

    :cond_cd
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_db

    cmp-long v11, v4, v7

    if-ltz v11, :cond_db

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    move-wide v9, v1

    goto :goto_dc

    :cond_db
    move-wide v1, v9

    .line 70
    :goto_dc
    new-instance v4, Lcom/tappx/a/h5$a;

    invoke-direct {v4}, Lcom/tappx/a/h5$a;-><init>()V

    .line 71
    iget-object v5, v0, Lcom/tappx/a/q5;->b:[B

    iput-object v5, v4, Lcom/tappx/a/h5$a;->a:[B

    .line 72
    iput-object v6, v4, Lcom/tappx/a/h5$a;->b:Ljava/lang/String;

    .line 73
    iput-wide v9, v4, Lcom/tappx/a/h5$a;->f:J

    .line 74
    iput-wide v1, v4, Lcom/tappx/a/h5$a;->e:J

    .line 75
    iput-wide v7, v4, Lcom/tappx/a/h5$a;->c:J

    move-wide/from16 v1, v18

    .line 76
    iput-wide v1, v4, Lcom/tappx/a/h5$a;->d:J

    .line 77
    iput-object v3, v4, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    .line 78
    iget-object v0, v0, Lcom/tappx/a/q5;->d:Ljava/util/List;

    iput-object v0, v4, Lcom/tappx/a/h5$a;->h:Ljava/util/List;

    return-object v4
.end method

.method static a(J)Ljava/lang/String;
    .registers 4

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 79
    invoke-static {v0}, Lcom/tappx/a/f6;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p0, "GMT"

    .line 81
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    new-instance v2, Lcom/tappx/a/m5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/tappx/a/m5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_32
    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/m5;

    .line 85
    invoke-virtual {v1}, Lcom/tappx/a/m5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tappx/a/m5;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public static b(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f6;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const-string v2, "0"

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2d

    const-string v2, "-1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_2d

    :cond_25
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 10
    invoke-static {v0, v1, v2}, Lcom/tappx/a/a6;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_2d
    :goto_2d
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 11
    invoke-static {v1, v0}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_34
    const-wide/16 v0, 0x0

    return-wide v0
.end method
