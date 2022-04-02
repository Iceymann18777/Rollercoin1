.class public Lcom/mopub/volley/toolbox/HurlStack;
.super Lcom/mopub/volley/toolbox/BaseHttpStack;
.source "HurlStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/toolbox/HurlStack$UrlConnectionInputStream;,
        Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# static fields
.field private static final HTTP_CONTINUE:I = 0x64


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/mopub/volley/toolbox/HurlStack;-><init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/HurlStack;-><init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/BaseHttpStack;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mopub/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    .line 69
    iput-object p2, p0, Lcom/mopub/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic access$000(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/mopub/volley/toolbox/HurlStack;->inputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static addBody(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mopub/volley/Request<",
            "*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 290
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_17
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 294
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 277
    invoke-static {p0, p1, v0}, Lcom/mopub/volley/toolbox/HurlStack;->addBody(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;[B)V

    :cond_9
    return-void
.end method

.method static convertHeaders(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    new-instance v4, Lcom/mopub/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/mopub/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
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

.method private static inputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    .line 182
    :catch_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private openConnection(Ljava/net/URL;Lcom/mopub/volley/Request;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/mopub/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 209
    invoke-virtual {p2}, Lcom/mopub/volley/Request;->getTimeoutMs()I

    move-result p2

    .line 210
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 212
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 213
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 216
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/mopub/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_2c

    .line 217
    move-object p2, v0

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2c
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getMethod()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_56

    .line 269
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string v0, "PATCH"

    .line 265
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 266
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_54

    :pswitch_1a
    const-string p1, "TRACE"

    .line 262
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_20
    const-string p1, "OPTIONS"

    .line 259
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_26
    const-string p1, "HEAD"

    .line 256
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_2c
    const-string p1, "DELETE"

    .line 245
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_32
    const-string v0, "PUT"

    .line 252
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 253
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_54

    .line 248
    :pswitch_3b
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 249
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_54

    :pswitch_42
    const-string p1, "GET"

    .line 242
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    .line 233
    :pswitch_48
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getPostBody()[B

    move-result-object v0

    if-eqz v0, :cond_54

    .line 235
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 236
    invoke-static {p0, p1, v0}, Lcom/mopub/volley/toolbox/HurlStack;->addBody(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;[B)V

    :cond_54
    :goto_54
    return-void

    nop

    :pswitch_data_56
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 194
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method

.method public executeRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lcom/mopub/volley/toolbox/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 79
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    iget-object p2, p0, Lcom/mopub/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz p2, :cond_36

    .line 81
    invoke-interface {p2, v0}, Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    move-object v0, p2

    goto :goto_36

    .line 83
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

    .line 87
    :cond_36
    :goto_36
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p2, p1}, Lcom/mopub/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/mopub/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p2

    const/4 v0, 0x0

    .line 91
    :try_start_40
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 94
    :cond_5e
    invoke-static {p2, p1}, Lcom/mopub/volley/toolbox/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    .line 96
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9b

    .line 103
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getMethod()I

    move-result p1

    invoke-static {p1, v1}, Lcom/mopub/volley/toolbox/HurlStack;->hasResponseBody(II)Z

    move-result p1

    if-nez p1, :cond_83

    .line 104
    new-instance p1, Lcom/mopub/volley/toolbox/HttpResponse;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/volley/toolbox/HurlStack;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/mopub/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_7f
    .catchall {:try_start_40 .. :try_end_7f} :catchall_a3

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_83
    const/4 v0, 0x1

    .line 110
    :try_start_84
    new-instance p1, Lcom/mopub/volley/toolbox/HttpResponse;

    .line 112
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/volley/toolbox/HurlStack;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v4, Lcom/mopub/volley/toolbox/HurlStack$UrlConnectionInputStream;

    invoke-direct {v4, p2}, Lcom/mopub/volley/toolbox/HurlStack$UrlConnectionInputStream;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/mopub/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    .line 100
    :cond_9b
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a3
    .catchall {:try_start_84 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    if-nez v0, :cond_a9

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a9
    goto :goto_ab

    :goto_aa
    throw p1

    :goto_ab
    goto :goto_aa
.end method
