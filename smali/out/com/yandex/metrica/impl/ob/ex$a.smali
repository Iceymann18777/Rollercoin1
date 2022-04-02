.class Lcom/yandex/metrica/impl/ob/ex$a;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 169
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ex$a;->a:Ljavax/net/ssl/SSLContext;

    .line 170
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ex$a;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ex$a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ex$a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
