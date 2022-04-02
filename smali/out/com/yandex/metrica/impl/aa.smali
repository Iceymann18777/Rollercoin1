.class Lcom/yandex/metrica/impl/aa;
.super Lcom/yandex/metrica/impl/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;)V
    .registers 6

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/bf;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/bf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/yandex/metrica/impl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/aw;)V

    .line 19
    iget-object p1, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/CounterConfiguration;->h(Z)V

    return-void
.end method
