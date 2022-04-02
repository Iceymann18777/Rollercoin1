.class public Lcom/mopub/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/mopub/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final DEFAULT_POOL_SIZE:I = 0x1000

.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final mBaseHttpStack:Lcom/mopub/volley/toolbox/BaseHttpStack;

.field protected final mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/BaseHttpStack;)V
    .registers 4

    .line 65
    new-instance v0, Lcom/mopub/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/mopub/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/BaseHttpStack;Lcom/mopub/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/BaseHttpStack;Lcom/mopub/volley/toolbox/ByteArrayPool;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/mopub/volley/toolbox/BaseHttpStack;

    .line 77
    iput-object p2, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getRetryPolicy()Lcom/mopub/volley/RetryPolicy;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 213
    :try_start_b
    invoke-interface {v0, p2}, Lcom/mopub/volley/RetryPolicy;->retry(Lcom/mopub/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/mopub/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-virtual {p1, p0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 217
    throw p2
.end method

.method private static combineHeaders(Ljava/util/List;Lcom/mopub/volley/Cache$Entry;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;",
            "Lcom/mopub/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 308
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 309
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/Header;

    .line 310
    invoke-virtual {v2}, Lcom/mopub/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 316
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    iget-object p0, p1, Lcom/mopub/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz p0, :cond_56

    .line 318
    iget-object p0, p1, Lcom/mopub/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 319
    iget-object p0, p1, Lcom/mopub/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/volley/Header;

    .line 320
    invoke-virtual {p1}, Lcom/mopub/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 321
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 327
    :cond_56
    iget-object p0, p1, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 328
    iget-object p0, p1, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_68
    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 330
    new-instance v2, Lcom/mopub/volley/Header;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/mopub/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_93
    return-object v1
.end method

.method protected static convertHeaders([Lcom/mopub/volley/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mopub/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 287
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 288
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/mopub/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/mopub/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method private getCacheHeaders(Lcom/mopub/volley/Cache$Entry;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 228
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    iget-object v1, p1, Lcom/mopub/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 231
    iget-object v1, p1, Lcom/mopub/volley/Cache$Entry;->etag:Ljava/lang/String;

    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_17
    iget-wide v1, p1, Lcom/mopub/volley/Cache$Entry;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 235
    iget-wide v1, p1, Lcom/mopub/volley/Cache$Entry;->lastModified:J

    .line 236
    invoke-static {v1, v2}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->formatEpochAsRfc1123(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    .line 235
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method private inputStreamToBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/ServerError;
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;

    invoke-direct {v0, v1, p2}, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/mopub/volley/toolbox/ByteArrayPool;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 256
    :try_start_d
    iget-object v3, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/mopub/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 258
    :goto_15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 259
    invoke-virtual {v0, v2, v1, v3}, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_15

    .line 261
    :cond_20
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_38

    if-eqz p1, :cond_2f

    .line 266
    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    new-array p1, v1, [Ljava/lang/Object;

    .line 271
    invoke-static {p2, p1}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v2}, Lcom/mopub/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 274
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v3

    :catchall_38
    move-exception v3

    goto :goto_40

    .line 254
    :cond_3a
    :try_start_3a
    new-instance v3, Lcom/mopub/volley/ServerError;

    invoke-direct {v3}, Lcom/mopub/volley/ServerError;-><init>()V

    throw v3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_38

    :goto_40
    if-eqz p1, :cond_4b

    .line 266
    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4b

    :catch_46
    new-array p1, v1, [Ljava/lang/Object;

    .line 271
    invoke-static {p2, p1}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/mopub/volley/toolbox/BasicNetwork;->mPool:Lcom/mopub/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v2}, Lcom/mopub/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 274
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    goto :goto_55

    :goto_54
    throw v3

    :goto_55
    goto :goto_54
.end method

.method private logSlowRequests(JLcom/mopub/volley/Request;[BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mopub/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 189
    sget-boolean v0, Lcom/mopub/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_20

    array-length p2, p4

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "null"

    :goto_22
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 196
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 197
    invoke-virtual {p3}, Lcom/mopub/volley/Request;->getRetryPolicy()Lcom/mopub/volley/RetryPolicy;

    move-result-object p2

    invoke-interface {p2}, Lcom/mopub/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 190
    invoke-static {p1, v0}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sub-long/2addr v0, p3

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "HTTP ERROR(%s) %d ms to fetch %s"

    invoke-static {p1, v2}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)",
            "Lcom/mopub/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 86
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 90
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getCacheEntry()Lcom/mopub/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->getCacheHeaders(Lcom/mopub/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 91
    iget-object v3, v7, Lcom/mopub/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/mopub/volley/toolbox/BaseHttpStack;

    invoke-virtual {v3, v8, v0}, Lcom/mopub/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lcom/mopub/volley/toolbox/HttpResponse;

    move-result-object v12
    :try_end_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_1c} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_1c} :catch_149
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_bd

    .line 92
    :try_start_1c
    invoke-virtual {v12}, Lcom/mopub/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v14

    .line 94
    invoke-virtual {v12}, Lcom/mopub/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v13
    :try_end_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_24} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_24} :catch_149
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_b7

    const/16 v0, 0x130

    if-ne v14, v0, :cond_64

    .line 97
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getCacheEntry()Lcom/mopub/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_43

    .line 99
    new-instance v0, Lcom/mopub/volley/NetworkResponse;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/mopub/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 107
    :cond_43
    invoke-static {v13, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->combineHeaders(Ljava/util/List;Lcom/mopub/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v27

    .line 108
    new-instance v1, Lcom/mopub/volley/NetworkResponse;

    const/16 v22, 0x130

    iget-object v0, v0, Lcom/mopub/volley/Cache$Entry;->data:[B

    const/16 v24, 0x1

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lcom/mopub/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
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

    .line 117
    :cond_64
    :try_start_64
    invoke-virtual {v12}, Lcom/mopub/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_68
    .catch Ljava/net/SocketTimeoutException; {:try_start_64 .. :try_end_68} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_64 .. :try_end_68} :catch_149
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_b4

    if-eqz v0, :cond_73

    .line 120
    :try_start_6a
    invoke-virtual {v12}, Lcom/mopub/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/mopub/volley/toolbox/BasicNetwork;->inputStreamToBytes(Ljava/io/InputStream;I)[B

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

    .line 128
    :try_start_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v14

    .line 129
    invoke-direct/range {v1 .. v6}, Lcom/mopub/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/mopub/volley/Request;[BI)V

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_a3

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_a3

    .line 134
    new-instance v0, Lcom/mopub/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 138
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
    invoke-direct/range {v13 .. v19}, Lcom/mopub/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_a3
    move-object v1, v13

    .line 132
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

    .line 147
    invoke-virtual {v2}, Lcom/mopub/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v1}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_137

    .line 154
    new-instance v1, Lcom/mopub/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v17, v2, v9

    move-object v13, v1

    move v14, v0

    invoke-direct/range {v13 .. v19}, Lcom/mopub/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

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

    .line 167
    :cond_ff
    new-instance v0, Lcom/mopub/volley/ClientError;

    invoke-direct {v0, v1}, Lcom/mopub/volley/ClientError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    throw v0

    :cond_105
    :goto_105
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_125

    const/16 v2, 0x257

    if-gt v0, v2, :cond_125

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 170
    new-instance v0, Lcom/mopub/volley/ServerError;

    invoke-direct {v0, v1}, Lcom/mopub/volley/ServerError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    const-string v1, "server"

    invoke-static {v1, v8, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto/16 :goto_8

    .line 173
    :cond_11f
    new-instance v0, Lcom/mopub/volley/ServerError;

    invoke-direct {v0, v1}, Lcom/mopub/volley/ServerError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    throw v0

    .line 177
    :cond_125
    new-instance v0, Lcom/mopub/volley/ServerError;

    invoke-direct {v0, v1}, Lcom/mopub/volley/ServerError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    throw v0

    .line 163
    :cond_12b
    :goto_12b
    new-instance v0, Lcom/mopub/volley/AuthFailureError;

    invoke-direct {v0, v1}, Lcom/mopub/volley/AuthFailureError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    const-string v1, "auth"

    invoke-static {v1, v8, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto/16 :goto_8

    .line 180
    :cond_137
    new-instance v0, Lcom/mopub/volley/NetworkError;

    invoke-direct {v0}, Lcom/mopub/volley/NetworkError;-><init>()V

    const-string v1, "network"

    invoke-static {v1, v8, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto/16 :goto_8

    .line 149
    :cond_143
    new-instance v1, Lcom/mopub/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/mopub/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_149
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catch_165
    new-instance v0, Lcom/mopub/volley/TimeoutError;

    invoke-direct {v0}, Lcom/mopub/volley/TimeoutError;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Lcom/mopub/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    goto/16 :goto_8
.end method
