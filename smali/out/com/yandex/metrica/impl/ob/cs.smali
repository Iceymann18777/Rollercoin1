.class public Lcom/yandex/metrica/impl/ob/cs;
.super Lcom/yandex/metrica/impl/ob/cr;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/cr;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 30
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/co;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/co;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 37
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/co;->c()Z

    move-result v0

    return v0
.end method
