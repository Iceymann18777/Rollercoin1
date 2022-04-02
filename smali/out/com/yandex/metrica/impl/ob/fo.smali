.class public Lcom/yandex/metrica/impl/ob/fo;
.super Lcom/yandex/metrica/impl/ob/fp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/fp<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_8

    .line 35
    :cond_4
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_8
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/fp;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/ft;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ft;->a:[B

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ft;->b:Ljava/util/Map;

    const-string v2, "utf-8"

    .line 42
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/ob/fq;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 43
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_14} :catch_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->e:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fr;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1e
    move-exception p1

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->e:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fr;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected synthetic b(Lcom/yandex/metrica/impl/ob/ft;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/fo;->a(Lcom/yandex/metrica/impl/ob/ft;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
