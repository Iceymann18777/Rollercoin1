.class public Lcom/yandex/metrica/impl/ob/cg;
.super Lcom/yandex/metrica/impl/ob/ce;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;Lcom/yandex/metrica/impl/ob/ch;)V
    .registers 4

    if-nez p2, :cond_3

    move-object p2, p3

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cj;)Lcom/yandex/metrica/impl/ob/ce$a;
    .registers 4

    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cg;->b()Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ch;->d()Lcom/yandex/metrica/impl/ob/cj;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/cj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 15
    sget-object p1, Lcom/yandex/metrica/impl/ob/ce$a;->a:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object p1

    .line 16
    :cond_11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ch;->d()Lcom/yandex/metrica/impl/ob/cj;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 17
    sget-object p1, Lcom/yandex/metrica/impl/ob/ce$a;->b:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object p1

    .line 19
    :cond_1a
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ch;->b()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 20
    sget-object p1, Lcom/yandex/metrica/impl/ob/ce$a;->b:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object p1

    .line 22
    :cond_23
    sget-object p1, Lcom/yandex/metrica/impl/ob/ce$a;->c:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object p1
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .registers 2

    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ce;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/yandex/metrica/impl/ob/ch;
    .registers 2

    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ce;->b()Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yandex/metrica/impl/be$a;
    .registers 2

    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/be$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ce;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
