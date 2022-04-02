.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    const/16 v0, 0xbb8

    .line 60
    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    .line 62
    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 4

    .line 74
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 83
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 227
    :cond_3
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_e
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    .line 232
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 233
    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 212
    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 216
    throw p2
.end method

.method protected static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 277
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 278
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    const-string v0, "Error occured when calling consumingContent"

    .line 244
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {v1, v2, v4}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 248
    :try_start_10
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 252
    iget-object v5, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 254
    :goto_1e
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_29

    .line 255
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 257
    :cond_29
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_45

    .line 261
    :try_start_2d
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    new-array p1, v2, [Ljava/lang/Object;

    .line 265
    invoke-static {v0, p1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_36
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v3}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 268
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v4

    .line 250
    :cond_3f
    :try_start_3f
    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    throw v4
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v4

    .line 261
    :try_start_46
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4f

    :catch_4a
    new-array p1, v2, [Ljava/lang/Object;

    .line 265
    invoke-static {v0, p1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_4f
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v3}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 268
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    goto :goto_59

    :goto_58
    throw v4

    :goto_59
    goto :goto_58
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .line 193
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_44

    :cond_b
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

    if-eqz p4, :cond_21

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_23

    :cond_21
    const-string p2, "null"

    :goto_23
    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 92
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v11, 0x12e

    const/4 v12, 0x0

    const/16 v13, 0x12d

    .line 95
    :try_start_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {v7, v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    .line 97
    iget-object v3, v7, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v3, v8, v0}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v14
    :try_end_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_24} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_24} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_24} :catch_16f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_e8

    .line 98
    :try_start_24
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 99
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 101
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v5
    :try_end_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_24 .. :try_end_34} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_24 .. :try_end_34} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_34} :catch_16f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_e1

    const/16 v1, 0x130

    if-ne v0, v1, :cond_78

    .line 105
    :try_start_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_53

    .line 107
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v20, v3, v9

    move-object v15, v0

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    .line 116
    :cond_53
    iget-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x130

    iget-object v3, v0, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v0, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const/16 v19, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v20, v17, v9

    move-object v15, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_70
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_70} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_38 .. :try_end_70} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_38 .. :try_end_70} :catch_16f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_70} :catch_71

    return-object v1

    :catch_71
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    goto/16 :goto_e6

    :cond_78
    if-eq v0, v13, :cond_7c

    if-ne v0, v11, :cond_87

    :cond_7c
    :try_start_7c
    const-string v1, "Location"

    .line 124
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    invoke-virtual {v8, v1}, Lcom/android/volley/Request;->setRedirectUrl(Ljava/lang/String;)V

    .line 129
    :cond_87
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1
    :try_end_8b
    .catch Ljava/net/SocketTimeoutException; {:try_start_7c .. :try_end_8b} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7c .. :try_end_8b} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_8b} :catch_16f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8b} :catch_d8

    if-eqz v1, :cond_96

    .line 130
    :try_start_8d
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1
    :try_end_95
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_95} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8d .. :try_end_95} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_8d .. :try_end_95} :catch_16f
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_71

    goto :goto_98

    :cond_96
    :try_start_96
    new-array v1, v12, [B
    :try_end_98
    .catch Ljava/net/SocketTimeoutException; {:try_start_96 .. :try_end_98} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_96 .. :try_end_98} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_96 .. :try_end_98} :catch_16f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_98} :catch_d8

    :goto_98
    move-object/from16 v22, v1

    .line 138
    :try_start_9a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_9e
    .catch Ljava/net/SocketTimeoutException; {:try_start_9a .. :try_end_9e} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9a .. :try_end_9e} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_9a .. :try_end_9e} :catch_16f
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_d1

    sub-long v3, v1, v9

    move-object/from16 v1, p0

    move-wide v2, v3

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v5, v22

    .line 139
    :try_start_a9
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c9

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_c9

    .line 144
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v20, v2, v9

    move-object v15, v1

    move/from16 v16, v0

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v1

    .line 142
    :cond_c9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_cf
    .catch Ljava/net/SocketTimeoutException; {:try_start_a9 .. :try_end_cf} :catch_197
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a9 .. :try_end_cf} :catch_18b
    .catch Ljava/net/MalformedURLException; {:try_start_a9 .. :try_end_cf} :catch_16f
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_cf} :catch_cf

    :catch_cf
    move-exception v0

    goto :goto_d4

    :catch_d1
    move-exception v0

    move-object/from16 v23, v5

    :goto_d4
    move-object v2, v14

    move-object/from16 v17, v22

    goto :goto_de

    :catch_d8
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v17, v2

    move-object v2, v14

    :goto_de
    move-object/from16 v18, v23

    goto :goto_ed

    :catch_e1
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    :goto_e6
    move-object v2, v14

    goto :goto_ed

    :catch_e8
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    :goto_ed
    if-eqz v2, :cond_169

    .line 156
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v13, :cond_112

    if-ne v1, v11, :cond_fe

    goto :goto_112

    :cond_fe
    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_125

    :cond_112
    :goto_112
    new-array v3, v3, [Ljava/lang/Object;

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getOriginUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Request at %s has been redirected to %s"

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_125
    if-eqz v17, :cond_163

    .line 167
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v20, v2, v9

    move-object v15, v0

    move/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v2, 0x191

    if-eq v1, v2, :cond_157

    const/16 v2, 0x193

    if-ne v1, v2, :cond_140

    goto :goto_157

    :cond_140
    if-eq v1, v13, :cond_14b

    if-ne v1, v11, :cond_145

    goto :goto_14b

    .line 179
    :cond_145
    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v0}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1

    .line 175
    :cond_14b
    :goto_14b
    new-instance v1, Lcom/android/volley/RedirectError;

    invoke-direct {v1, v0}, Lcom/android/volley/RedirectError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string v0, "redirect"

    invoke-static {v0, v8, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    .line 171
    :cond_157
    :goto_157
    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v0}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string v0, "auth"

    invoke-static {v0, v8, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    .line 182
    :cond_163
    new-instance v1, Lcom/android/volley/NetworkError;

    invoke-direct {v1, v0}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :cond_169
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_16f
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_18b
    new-instance v0, Lcom/android/volley/TimeoutError;

    invoke-direct {v0}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v1, "connection"

    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    .line 147
    :catch_197
    new-instance v0, Lcom/android/volley/TimeoutError;

    invoke-direct {v0}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8
.end method
