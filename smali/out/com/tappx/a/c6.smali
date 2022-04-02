.class public Lcom/tappx/a/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n5;


# static fields
.field protected static final c:Z


# instance fields
.field private final a:Lcom/tappx/a/b6;

.field protected final b:Lcom/tappx/a/d6;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/tappx/a/a6;->b:Z

    sput-boolean v0, Lcom/tappx/a/c6;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/b6;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/tappx/a/d6;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/tappx/a/d6;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/c6;-><init>(Lcom/tappx/a/b6;Lcom/tappx/a/d6;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/b6;Lcom/tappx/a/d6;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/c6;->a:Lcom/tappx/a/b6;

    .line 7
    iput-object p2, p0, Lcom/tappx/a/c6;->b:Lcom/tappx/a/d6;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/tappx/a/h5$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;",
            "Lcom/tappx/a/h5$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 212
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tappx/a/m5;

    .line 214
    invoke-virtual {v2}, Lcom/tappx/a/m5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 220
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    iget-object p0, p1, Lcom/tappx/a/h5$a;->h:Ljava/util/List;

    if-eqz p0, :cond_54

    .line 222
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_91

    .line 223
    iget-object p0, p1, Lcom/tappx/a/h5$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tappx/a/m5;

    .line 224
    invoke-virtual {p1}, Lcom/tappx/a/m5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 225
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 231
    :cond_54
    iget-object p0, p1, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_91

    .line 232
    iget-object p0, p1, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_66
    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 234
    new-instance v2, Lcom/tappx/a/m5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/tappx/a/m5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_91
    return-object v1
.end method

.method private a(Lcom/tappx/a/h5$a;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/h5$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 154
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v1, p1, Lcom/tappx/a/h5$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "If-None-Match"

    .line 157
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_15
    iget-wide v1, p1, Lcom/tappx/a/h5$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_26

    .line 162
    invoke-static {v1, v2}, Lcom/tappx/a/f6;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    .line 163
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method private a(JLcom/tappx/a/s5;[BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tappx/a/s5<",
            "*>;[BI)V"
        }
    .end annotation

    .line 125
    sget-boolean v0, Lcom/tappx/a/c6;->c:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    if-eqz p4, :cond_20

    array-length p2, p4

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "null"

    :goto_22
    aput-object p2, v0, p1

    .line 132
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 133
    invoke-virtual {p3}, Lcom/tappx/a/s5;->n()Lcom/tappx/a/w5;

    move-result-object p1

    invoke-interface {p1}, Lcom/tappx/a/w5;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 134
    invoke-static {p1, v0}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/z5;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lcom/tappx/a/s5;->n()Lcom/tappx/a/w5;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/tappx/a/s5;->p()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 139
    :try_start_b
    invoke-interface {v0, p2}, Lcom/tappx/a/w5;->a(Lcom/tappx/a/z5;)V
    :try_end_e
    .catch Lcom/tappx/a/z5; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 150
    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 8

    .line 164
    new-instance v0, Lcom/tappx/a/i6;

    iget-object v1, p0, Lcom/tappx/a/c6;->b:Lcom/tappx/a/d6;

    invoke-direct {v0, v1, p2}, Lcom/tappx/a/i6;-><init>(Lcom/tappx/a/d6;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_38

    .line 170
    :try_start_d
    iget-object v3, p0, Lcom/tappx/a/c6;->b:Lcom/tappx/a/d6;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/tappx/a/d6;->a(I)[B

    move-result-object v2

    .line 172
    :goto_15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 173
    invoke-virtual {v0, v2, v1, v3}, Lcom/tappx/a/i6;->write([BII)V

    goto :goto_15

    .line 175
    :cond_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_3e

    if-eqz p1, :cond_2f

    .line 180
    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    new-array p1, v1, [Ljava/lang/Object;

    .line 185
    invoke-static {p2, p1}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/tappx/a/c6;->b:Lcom/tappx/a/d6;

    invoke-virtual {p1, v2}, Lcom/tappx/a/d6;->a([B)V

    .line 188
    invoke-virtual {v0}, Lcom/tappx/a/i6;->close()V

    return-object v3

    .line 189
    :cond_38
    :try_start_38
    new-instance v3, Lcom/tappx/a/x5;

    invoke-direct {v3}, Lcom/tappx/a/x5;-><init>()V

    throw v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v3

    if-eqz p1, :cond_4a

    .line 201
    :try_start_41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4a

    :catch_45
    new-array p1, v1, [Ljava/lang/Object;

    .line 206
    invoke-static {p2, p1}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/tappx/a/c6;->b:Lcom/tappx/a/d6;

    invoke-virtual {p1, v2}, Lcom/tappx/a/d6;->a([B)V

    .line 209
    invoke-virtual {v0}, Lcom/tappx/a/i6;->close()V

    .line 210
    goto :goto_54

    :goto_53
    throw v3

    :goto_54
    goto :goto_53
.end method


# virtual methods
.method public a(Lcom/tappx/a/s5;)Lcom/tappx/a/q5;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)",
            "Lcom/tappx/a/q5;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 5
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 9
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/tappx/a/s5;->d()Lcom/tappx/a/h5$a;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/tappx/a/c6;->a(Lcom/tappx/a/h5$a;)Ljava/util/Map;

    move-result-object v0

    .line 10
    iget-object v3, v7, Lcom/tappx/a/c6;->a:Lcom/tappx/a/b6;

    invoke-virtual {v3, v8, v0}, Lcom/tappx/a/b6;->a(Lcom/tappx/a/s5;Ljava/util/Map;)Lcom/tappx/a/g6;

    move-result-object v12
    :try_end_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_1c} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_1c} :catch_149
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_bd

    .line 11
    :try_start_1c
    invoke-virtual {v12}, Lcom/tappx/a/g6;->d()I

    move-result v14

    .line 13
    invoke-virtual {v12}, Lcom/tappx/a/g6;->c()Ljava/util/List;

    move-result-object v13
    :try_end_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_24} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_24} :catch_149
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_b7

    const/16 v0, 0x130

    if-ne v14, v0, :cond_64

    .line 16
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Lcom/tappx/a/s5;->d()Lcom/tappx/a/h5$a;

    move-result-object v0

    if-nez v0, :cond_43

    .line 18
    new-instance v0, Lcom/tappx/a/q5;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/tappx/a/q5;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 26
    :cond_43
    invoke-static {v13, v0}, Lcom/tappx/a/c6;->a(Ljava/util/List;Lcom/tappx/a/h5$a;)Ljava/util/List;

    move-result-object v27

    .line 27
    new-instance v1, Lcom/tappx/a/q5;

    const/16 v22, 0x130

    iget-object v0, v0, Lcom/tappx/a/h5$a;->a:[B

    const/16 v24, 0x1

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lcom/tappx/a/q5;-><init>(I[BZJLjava/util/List;)V
    :try_end_5c
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_5c} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_5c} :catch_149
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_5c} :catch_5d

    return-object v1

    :catch_5d
    move-exception v0

    move-object v15, v2

    move-object v2, v12

    move-object/from16 v19, v13

    goto/16 :goto_c1

    .line 36
    :cond_64
    :try_start_64
    invoke-virtual {v12}, Lcom/tappx/a/g6;->a()Ljava/io/InputStream;

    move-result-object v0
    :try_end_68
    .catch Ljava/net/SocketTimeoutException; {:try_start_64 .. :try_end_68} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_64 .. :try_end_68} :catch_149
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_b4

    if-eqz v0, :cond_73

    .line 39
    :try_start_6a
    invoke-virtual {v12}, Lcom/tappx/a/g6;->b()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/tappx/a/c6;->a(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_72
    .catch Ljava/net/SocketTimeoutException; {:try_start_6a .. :try_end_72} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_6a .. :try_end_72} :catch_149
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_72} :catch_5d

    goto :goto_75

    :cond_73
    :try_start_73
    new-array v0, v11, [B
    :try_end_75
    .catch Ljava/net/SocketTimeoutException; {:try_start_73 .. :try_end_75} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_75} :catch_149
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_75} :catch_b4

    :goto_75
    move-object/from16 v20, v0

    .line 47
    :try_start_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v14

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/tappx/a/c6;->a(JLcom/tappx/a/s5;[BI)V

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_a3

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_a3

    .line 53
    new-instance v0, Lcom/tappx/a/q5;

    const/16 v16, 0x0

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_97
    .catch Ljava/net/SocketTimeoutException; {:try_start_77 .. :try_end_97} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_77 .. :try_end_97} :catch_149
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_97} :catch_ac

    sub-long v17, v1, v9

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v15, v20

    move-object/from16 v19, v1

    :try_start_9f
    invoke-direct/range {v13 .. v19}, Lcom/tappx/a/q5;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_a3
    move-object v1, v13

    .line 58
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_aa
    .catch Ljava/net/SocketTimeoutException; {:try_start_9f .. :try_end_aa} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_aa} :catch_149
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_aa} :catch_aa

    :catch_aa
    move-exception v0

    goto :goto_ae

    :catch_ac
    move-exception v0

    move-object v1, v13

    :goto_ae
    move-object/from16 v19, v1

    move-object v2, v12

    move-object/from16 v15, v20

    goto :goto_c1

    :catch_b4
    move-exception v0

    move-object v1, v13

    goto :goto_b8

    :catch_b7
    move-exception v0

    :goto_b8
    move-object/from16 v19, v1

    move-object v15, v2

    move-object v2, v12

    goto :goto_c1

    :catch_bd
    move-exception v0

    move-object/from16 v19, v1

    move-object v15, v2

    :goto_c1
    if-eqz v2, :cond_143

    .line 73
    invoke-virtual {v2}, Lcom/tappx/a/g6;->d()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual/range {p1 .. p1}, Lcom/tappx/a/s5;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v1}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_137

    .line 80
    new-instance v1, Lcom/tappx/a/q5;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v17, v2, v9

    const/16 v16, 0x0

    move-object v13, v1

    move v14, v0

    invoke-direct/range {v13 .. v19}, Lcom/tappx/a/q5;-><init>(I[BZJLjava/util/List;)V

    const/16 v2, 0x191

    if-eq v0, v2, :cond_12b

    const/16 v2, 0x193

    if-ne v0, v2, :cond_f6

    goto :goto_12b

    :cond_f6
    const/16 v2, 0x190

    if-lt v0, v2, :cond_105

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_ff

    goto :goto_105

    .line 93
    :cond_ff
    new-instance v0, Lcom/tappx/a/j5;

    invoke-direct {v0, v1}, Lcom/tappx/a/j5;-><init>(Lcom/tappx/a/q5;)V

    throw v0

    :cond_105
    :goto_105
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_125

    const/16 v2, 0x257

    if-gt v0, v2, :cond_125

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/tappx/a/s5;->x()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 96
    new-instance v0, Lcom/tappx/a/x5;

    invoke-direct {v0, v1}, Lcom/tappx/a/x5;-><init>(Lcom/tappx/a/q5;)V

    const-string v1, "server"

    invoke-static {v1, v8, v0}, Lcom/tappx/a/c6;->a(Ljava/lang/String;Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    goto/16 :goto_8

    .line 99
    :cond_11f
    new-instance v0, Lcom/tappx/a/x5;

    invoke-direct {v0, v1}, Lcom/tappx/a/x5;-><init>(Lcom/tappx/a/q5;)V

    throw v0

    .line 103
    :cond_125
    new-instance v0, Lcom/tappx/a/x5;

    invoke-direct {v0, v1}, Lcom/tappx/a/x5;-><init>(Lcom/tappx/a/q5;)V

    throw v0

    .line 104
    :cond_12b
    :goto_12b
    new-instance v0, Lcom/tappx/a/g5;

    invoke-direct {v0, v1}, Lcom/tappx/a/g5;-><init>(Lcom/tappx/a/q5;)V

    const-string v1, "auth"

    invoke-static {v1, v8, v0}, Lcom/tappx/a/c6;->a(Ljava/lang/String;Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    goto/16 :goto_8

    .line 121
    :cond_137
    new-instance v0, Lcom/tappx/a/p5;

    invoke-direct {v0}, Lcom/tappx/a/p5;-><init>()V

    const-string v1, "network"

    invoke-static {v1, v8, v0}, Lcom/tappx/a/c6;->a(Ljava/lang/String;Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    goto/16 :goto_8

    .line 122
    :cond_143
    new-instance v1, Lcom/tappx/a/r5;

    invoke-direct {v1, v0}, Lcom/tappx/a/r5;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_149
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tappx/a/s5;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :catch_165
    new-instance v0, Lcom/tappx/a/y5;

    invoke-direct {v0}, Lcom/tappx/a/y5;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Lcom/tappx/a/c6;->a(Ljava/lang/String;Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    goto/16 :goto_8
.end method
