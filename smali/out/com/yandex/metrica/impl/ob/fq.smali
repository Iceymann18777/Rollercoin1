.class public Lcom/yandex/metrica/impl/ob/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/fm;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fm;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fq;->a:Lcom/yandex/metrica/impl/ob/fm;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 144
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_36

    const-string v0, ";"

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 147
    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_36

    .line 148
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    const/4 v3, 0x0

    .line 150
    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 151
    aget-object p0, v2, v0

    return-object p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_36
    return-object p1
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fr;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;",
            "Lcom/yandex/metrica/impl/ob/fr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->o()Lcom/yandex/metrica/impl/ob/fw;

    move-result-object p0

    .line 102
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/fw;->a(Lcom/yandex/metrica/impl/ob/fr;)V
    :try_end_7
    .catch Lcom/yandex/metrica/impl/ob/fr; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 104
    throw p0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 110
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x100

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 113
    :try_start_10
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_31

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 119
    :goto_1a
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    .line 122
    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_39

    .line 126
    :try_start_2a
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2d

    .line 131
    :catch_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    .line 115
    :cond_31
    :try_start_31
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->f:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fr;-><init>()V

    throw v0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    .line 126
    :try_start_3a
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3d

    .line 131
    :catch_3d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_42

    :goto_41
    throw v0

    :goto_42
    goto :goto_41
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fu;)Lcom/yandex/metrica/impl/ob/ft;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;)",
            "Lcom/yandex/metrica/impl/ob/ft;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 39
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    :try_start_6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/fq;->a:Lcom/yandex/metrica/impl/ob/fm;

    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/fm;->a(Lcom/yandex/metrica/impl/ob/fu;)Lorg/apache/http/HttpResponse;

    move-result-object v3
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_c} :catch_c8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_c} :catch_bc
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_c} :catch_a3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_63

    .line 42
    :try_start_c
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 43
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 45
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 1172
    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v7, 0x0

    .line 1173
    :goto_20
    array-length v8, v5

    if-ge v7, v8, :cond_35

    .line 1174
    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v7

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_32} :catch_c8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_32} :catch_bc
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_32} :catch_a3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_5e

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 48
    :cond_35
    :try_start_35
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 49
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fq;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    goto :goto_46

    :cond_44
    new-array v0, v2, [B

    :goto_46
    move-object v1, v0

    const/16 v0, 0xc8

    if-lt v4, v0, :cond_55

    const/16 v0, 0x12b

    if-gt v4, v0, :cond_55

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/ft;

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/metrica/impl/ob/ft;-><init>([BLjava/util/Map;B)V

    return-object v0

    .line 57
    :cond_55
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_5b
    .catch Ljava/net/SocketTimeoutException; {:try_start_35 .. :try_end_5b} :catch_c8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_35 .. :try_end_5b} :catch_bc
    .catch Ljava/net/MalformedURLException; {:try_start_35 .. :try_end_5b} :catch_a3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v4

    move-object v0, v6

    goto :goto_5f

    :catch_5e
    move-exception v4

    :goto_5f
    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_65

    :catch_63
    move-exception v4

    move-object v3, v1

    :goto_65
    if-eqz v1, :cond_9b

    .line 70
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-eqz v3, :cond_93

    .line 75
    new-instance v4, Lcom/yandex/metrica/impl/ob/ft;

    invoke-direct {v4, v3, v0, v2}, Lcom/yandex/metrica/impl/ob/ft;-><init>([BLjava/util/Map;B)V

    const/16 v0, 0x191

    if-eq v1, v0, :cond_87

    const/16 v0, 0x193

    if-ne v1, v0, :cond_7f

    goto :goto_87

    .line 83
    :cond_7f
    new-instance p1, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->f:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {p1, v2}, Lcom/yandex/metrica/impl/ob/fr;-><init>(B)V

    throw p1

    .line 79
    :cond_87
    :goto_87
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->b:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/fr;-><init>(B)V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fq;->a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fr;)V

    goto/16 :goto_0

    .line 86
    :cond_93
    new-instance p1, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->c:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {p1, v2}, Lcom/yandex/metrica/impl/ob/fr;-><init>(B)V

    throw p1

    .line 72
    :cond_9b
    new-instance p1, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->a:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {p1, v4}, Lcom/yandex/metrica/impl/ob/fr;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_a3
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_bc
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fr;-><init>()V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fq;->a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fr;)V

    goto/16 :goto_0

    .line 61
    :catch_c8
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->g:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fr;-><init>()V

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fq;->a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fr;)V

    goto/16 :goto_0
.end method
