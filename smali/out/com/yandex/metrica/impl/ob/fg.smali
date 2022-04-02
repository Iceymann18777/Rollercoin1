.class Lcom/yandex/metrica/impl/ob/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/fs;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/fs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 66
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 67
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const/4 v2, 0x0

    .line 71
    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ca"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 75
    :cond_35
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 78
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    goto :goto_46

    :cond_45
    move-object p0, v0

    :goto_46
    const-string v1, "TLS"

    .line 81
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0, p0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 85
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_5f

    .line 86
    new-instance p0, Lcom/yandex/metrica/impl/ob/fn;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fn;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_99

    .line 1146
    :cond_5f
    new-instance p0, Lcom/yandex/metrica/impl/ob/ex$a;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/ex$a;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 1147
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v0

    .line 1150
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1152
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1153
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v3, v5, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1154
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v3, 0x1bb

    const-string v4, "https"

    invoke-direct {v0, v4, p0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1155
    new-instance p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1156
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 91
    new-instance p0, Lcom/yandex/metrica/impl/ob/fl;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fl;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 94
    :goto_99
    new-instance v0, Lcom/yandex/metrica/impl/ob/fs;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fq;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/fq;-><init>(Lcom/yandex/metrica/impl/ob/fm;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/fs;-><init>(Lcom/yandex/metrica/impl/ob/fq;)V

    return-object v0
.end method

.method static a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 43
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 46
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/fd;)Z
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fd;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://certificate.mobile.yandex.net/api/v1/pins"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
