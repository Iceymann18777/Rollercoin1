.class public Lcom/yandex/metrica/impl/ob/as;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 3

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/as;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/as;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/as;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->c()V

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method
