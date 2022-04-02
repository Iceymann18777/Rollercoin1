.class public Lcom/yandex/metrica/impl/ob/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fm;


# instance fields
.field private final a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fn;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fn;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .registers 4

    .line 88
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_e

    .line 93
    :catch_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 95
    :goto_e
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 96
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 97
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/yandex/metrica/impl/ob/fu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->c()[B

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 192
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 193
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 196
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_22
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/fu;)Lorg/apache/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 55
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1118
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->n()I

    move-result v3

    .line 1119
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1120
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    .line 1121
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    .line 1122
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1125
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fn;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_41

    .line 1126
    move-object v5, v0

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 57
    :cond_41
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1135
    :cond_5f
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->d()I

    move-result v1

    const-string v2, "POST"

    packed-switch v1, :pswitch_data_136

    .line 1184
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown method type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_70
    const-string v1, "PATCH"

    .line 1180
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1181
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/net/HttpURLConnection;Lcom/yandex/metrica/impl/ob/fu;)V

    goto :goto_cb

    :pswitch_79
    const-string p1, "TRACE"

    .line 1177
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_cb

    :pswitch_7f
    const-string p1, "OPTIONS"

    .line 1174
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_cb

    :pswitch_85
    const-string p1, "HEAD"

    .line 1171
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_cb

    :pswitch_8b
    const-string p1, "DELETE"

    .line 1160
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_cb

    :pswitch_91
    const-string v1, "PUT"

    .line 1167
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1168
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/net/HttpURLConnection;Lcom/yandex/metrica/impl/ob/fu;)V

    goto :goto_cb

    .line 1163
    :pswitch_9a
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1164
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/net/HttpURLConnection;Lcom/yandex/metrica/impl/ob/fu;)V

    goto :goto_cb

    :pswitch_a1
    const-string p1, "GET"

    .line 1157
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_cb

    .line 1140
    :pswitch_a7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->j()[B

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 1145
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1146
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->i()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Content-Type"

    .line 1147
    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1150
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1151
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 62
    :cond_cb
    :goto_cb
    new-instance p1, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {p1, v1, v4, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12c

    .line 69
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 71
    new-instance p1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p1, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 72
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 73
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_fe
    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 75
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v4, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v2}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_fe

    :cond_12b
    return-object p1

    .line 67
    :cond_12c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_135

    :goto_134
    throw p1

    :goto_135
    goto :goto_134

    :pswitch_data_136
    .packed-switch -0x1
        :pswitch_a7
        :pswitch_a1
        :pswitch_9a
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_70
    .end packed-switch
.end method
