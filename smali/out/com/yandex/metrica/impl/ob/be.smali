.class public Lcom/yandex/metrica/impl/ob/be;
.super Lcom/yandex/metrica/impl/ob/bg;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bf;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bg;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bk;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/bl;
    .registers 2

    .line 22
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    return-object v0
.end method

.method protected b()I
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->d()I

    move-result v0

    return v0
.end method
