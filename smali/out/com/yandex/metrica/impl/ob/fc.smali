.class Lcom/yandex/metrica/impl/ob/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Ljava/util/Collection;

    .line 24
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 27
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 28
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 29
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_2b

    .line 30
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Ljava/util/Collection;

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .registers 5

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "RSA"

    .line 38
    invoke-interface {v1, p1, v2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_17} :catch_1a

    goto :goto_6

    :cond_18
    const/4 p1, 0x1

    return p1

    :catch_1a
    const/4 p1, 0x0

    return p1
.end method

.method public a()[Ljava/security/cert/X509Certificate;
    .registers 4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 49
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 51
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
