.class public Lcom/yandex/metrica/impl/ob/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fk;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fk;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ez;->a:Lcom/yandex/metrica/impl/ob/fk;

    return-void
.end method


# virtual methods
.method public a()Ljavax/net/ssl/SSLContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "TLS"

    .line 22
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ez;->a:Lcom/yandex/metrica/impl/ob/fk;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method
