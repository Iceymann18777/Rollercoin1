.class public Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "connectTimeoutMillis",
            "readTimeoutMillis",
            "allowCrossProtocolRedirects",
            "defaultRequestProperties"
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 138
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 139
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 140
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 141
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 142
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 143
    iput-object p5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method private closeConnectionQuietly()V
    .registers 4

    .line 746
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 748
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 750
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    const-string v0, "Content-Length"

    .line 585
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_36

    .line 588
    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_38

    .line 590
    :catch_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const-wide/16 v4, -0x1

    :goto_38
    const-string v1, "Content-Range"

    .line 593
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 595
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_cb

    const/4 v6, 0x2

    .line 599
    :try_start_51
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_6e

    move-wide v4, v6

    goto :goto_cb

    :cond_6e
    cmp-long v1, v4, v6

    if-eqz v1, :cond_cb

    .line 609
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_a8} :catch_aa

    move-wide v4, v0

    goto :goto_cb

    .line 614
    :catch_aa
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-wide v4
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalUrl",
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_38

    .line 561
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 564
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 565
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    return-object v0

    .line 558
    :cond_38
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeConnection(Landroidx/media2/exoplayer/external/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 419
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 420
    iget v2, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpMethod:I

    .line 421
    iget-object v3, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpBody:[B

    .line 422
    iget-wide v14, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    .line 423
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const/4 v10, 0x1

    .line 424
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    const/4 v11, 0x2

    .line 425
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v17

    move-object/from16 v9, p0

    .line 427
    iget-boolean v0, v9, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_33

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    move/from16 v9, v17

    .line 430
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_33
    const/4 v0, 0x0

    :goto_34
    add-int/lit8 v8, v0, 0x1

    const/16 v4, 0x14

    if-gt v0, v4, :cond_a3

    const/4 v0, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move/from16 v18, v8

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v19, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v21, v14

    move v14, v0

    .line 445
    invoke-direct/range {v4 .. v14}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "Location"

    .line 455
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12f

    const/16 v7, 0x12e

    const/16 v8, 0x12d

    const/16 v9, 0x12c

    const/4 v10, 0x1

    if-eq v2, v10, :cond_6c

    const/4 v11, 0x3

    if-ne v2, v11, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v11, 0x2

    goto :goto_7d

    :cond_6c
    :goto_6c
    if-eq v4, v9, :cond_93

    if-eq v4, v8, :cond_93

    if-eq v4, v7, :cond_93

    if-eq v4, v6, :cond_93

    const/16 v11, 0x133

    if-eq v4, v11, :cond_93

    const/16 v11, 0x134

    if-ne v4, v11, :cond_6a

    goto :goto_93

    :goto_7d
    if-ne v2, v11, :cond_92

    if-eq v4, v9, :cond_87

    if-eq v4, v8, :cond_87

    if-eq v4, v7, :cond_87

    if-ne v4, v6, :cond_92

    .line 471
    :cond_87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 474
    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v3, v0

    const/4 v2, 0x1

    goto :goto_9c

    :cond_92
    return-object v0

    :cond_93
    :goto_93
    const/4 v11, 0x2

    .line 463
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 464
    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    :goto_9c
    move/from16 v0, v18

    move-wide/from16 v12, v19

    move-wide/from16 v14, v21

    goto :goto_34

    :cond_a3
    move/from16 v18, v8

    .line 481
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    goto :goto_c1

    :goto_c0
    throw v0

    :goto_c1
    goto :goto_c0
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "httpMethod",
            "httpBody",
            "position",
            "length",
            "allowGzip",
            "allowIcyMetadata",
            "followRedirects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 507
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 508
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 509
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    if-eqz v0, :cond_3c

    .line 510
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 514
    :cond_3c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_66
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p4, v0

    if-nez v4, :cond_72

    cmp-long v0, p6, v2

    if-eqz v0, :cond_b4

    :cond_72
    const/16 v0, 0x1b

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p6, v2

    if-eqz v1, :cond_af

    .line 520
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, 0x14

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_af
    const-string p4, "Range"

    .line 522
    invoke-virtual {p1, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_b4
    iget-object p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_c4

    const-string p4, "Accept-Encoding"

    const-string p5, "identity"

    .line 526
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    if-eqz p9, :cond_cd

    const-string p4, "Icy-MetaData"

    const-string p5, "1"

    .line 529
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_cd
    invoke-virtual {p1, p10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_d4

    const/4 p4, 0x1

    goto :goto_d5

    :cond_d4
    const/4 p4, 0x0

    .line 534
    :goto_d5
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 535
    invoke-static {p2}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_f3

    .line 537
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 538
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 539
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 540
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 541
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_f6

    .line 543
    :cond_f3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_f6
    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "connection",
            "bytesRemaining"
        }
    .end annotation

    .line 709
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_d

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_d

    return-void

    .line 714
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1f

    .line 717
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_26

    return-void

    :cond_1f
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_26

    return-void

    .line 725
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 726
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 728
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 729
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 730
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 731
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 732
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_58} :catch_58

    :catch_58
    :cond_58
    return-void
.end method

.method private readInternal([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "readLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 675
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1d

    .line 676
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_17

    return v4

    :cond_17
    int-to-long v5, p3

    .line 680
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 683
    :cond_1d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_32

    .line 685
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_2c

    return v4

    .line 687
    :cond_2c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 692
    :cond_32
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 693
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipInternal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    .line 635
    :cond_9
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_18

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 640
    :cond_18
    :goto_18
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_52

    sub-long/2addr v3, v1

    .line 641
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 642
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 643
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    .line 649
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 650
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    goto :goto_18

    .line 647
    :cond_46
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 644
    :cond_4c
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 654
    :cond_52
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bytesRemaining()J
    .registers 6

    .line 412
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_c

    :cond_9
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    :goto_c
    return-wide v0
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 356
    :try_start_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1f

    .line 357
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_2e

    .line 359
    :try_start_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_2e

    goto :goto_1f

    :catch_15
    move-exception v2

    .line 361
    :try_start_16
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2e

    .line 365
    :cond_1f
    :goto_1f
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 366
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 367
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_2d

    .line 368
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 369
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferEnded()V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    .line 365
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 366
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 367
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_3d

    .line 368
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 369
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferEnded()V

    :cond_3d
    throw v2
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 267
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const-wide/16 v1, 0x0

    .line 268
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 269
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 270
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    const/4 v3, 0x1

    .line 272
    :try_start_e
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Landroidx/media2/exoplayer/external/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_d0

    .line 281
    :try_start_14
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 282
    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_ab

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_8f

    const/16 v6, 0x12b

    if-le v4, v6, :cond_27

    goto :goto_8f

    .line 302
    :cond_27
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;

    if-eqz v6, :cond_41

    invoke-interface {v6, v0}, Landroidx/media2/exoplayer/external/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_41

    .line 304
    :cond_38
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 305
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    throw v1

    :cond_41
    :goto_41
    if-ne v4, v5, :cond_4b

    .line 311
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4b

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    :cond_4b
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 314
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 315
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_60

    .line 316
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_75

    .line 318
    :cond_60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6e

    .line 319
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long v4, v0, v4

    .line 320
    :cond_6e
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_75

    .line 327
    :cond_71
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 331
    :goto_75
    :try_start_75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_85

    .line 337
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 338
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 340
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_85
    move-exception v0

    .line 333
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 334
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v1

    .line 291
    :cond_8f
    :goto_8f
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 292
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 293
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v2, v4, v0, v1, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    const/16 p1, 0x1a0

    if-ne v4, p1, :cond_aa

    .line 296
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/DataSourceException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 298
    :cond_aa
    throw v2

    :catch_ab
    move-exception v1

    .line 284
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 285
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c6

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_c6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_cc
    invoke-direct {v2, v0, v1, p1, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v2

    :catch_d0
    move-exception v1

    .line 274
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e8

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ee

    :cond_e8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_ee
    invoke-direct {v2, v0, v1, p1, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v2
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "readLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 347
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    :catch_8
    move-exception p1

    .line 349
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw p2
.end method
