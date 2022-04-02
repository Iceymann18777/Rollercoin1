.class public Lcom/yandex/metrica/impl/ob/an;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 5

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 18
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->b()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 20
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->c()V

    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/h;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    const-string p1, ""

    .line 22
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    .line 24
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->u()V

    return-void
.end method
