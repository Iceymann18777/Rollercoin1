.class public Lcom/android/volley/toolbox/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .registers 3

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    .line 85
    iput-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 256
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 259
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_22
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .registers 4

    .line 151
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 154
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_e

    .line 156
    :catch_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 158
    :goto_e
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 159
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method private static hasResponseBody(II)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 p0, 0x64

    if-gt p0, p1, :cond_b

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_15

    :cond_b
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_15

    const/16 p0, 0x130

    if-eq p1, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 181
    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result p2

    .line 182
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 184
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 185
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 188
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_2c

    .line 189
    move-object p2, v0

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2c
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_6e

    .line 247
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string v0, "PATCH"

    .line 243
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_6d

    :pswitch_1a
    const-string p1, "TRACE"

    .line 240
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6d

    :pswitch_20
    const-string p1, "OPTIONS"

    .line 237
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6d

    :pswitch_26
    const-string p1, "HEAD"

    .line 234
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6d

    :pswitch_2c
    const-string p1, "DELETE"

    .line 223
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6d

    :pswitch_32
    const-string v0, "PUT"

    .line 230
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_6d

    .line 226
    :pswitch_3b
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_6d

    :pswitch_42
    const-string p1, "GET"

    .line 220
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6d

    .line 203
    :pswitch_48
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    if-eqz v0, :cond_6d

    const/4 v2, 0x1

    .line 208
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 214
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_6d
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch -0x1
        :pswitch_48
        :pswitch_42
        :pswitch_3b
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    iget-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz p2, :cond_36

    .line 96
    invoke-interface {p2, v0}, Lcom/android/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    move-object v0, p2

    goto :goto_36

    .line 98
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL blocked by rewriter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_36
    :goto_36
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p2, p1}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 104
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 107
    :cond_5d
    invoke-static {p2, p1}, Lcom/android/volley/toolbox/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 109
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 110
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d1

    .line 116
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 118
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 119
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result p1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/HurlStack;->hasResponseBody(II)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 120
    invoke-static {p2}, Lcom/android/volley/toolbox/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    :cond_96
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a2
    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 124
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_a2

    :cond_d0
    return-object v0

    .line 114
    :cond_d1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_da

    :goto_d9
    throw p1

    :goto_da
    goto :goto_d9
.end method
