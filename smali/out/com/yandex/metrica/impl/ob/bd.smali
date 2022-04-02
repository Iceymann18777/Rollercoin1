.class public Lcom/yandex/metrica/impl/ob/bd;
.super Lcom/yandex/metrica/impl/ob/bk;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ca;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bk;-><init>(Lcom/yandex/metrica/impl/ob/ca;)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->f(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/bk;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->d(Z)Lcom/yandex/metrica/impl/ob/ca;

    return-object p0
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/bd;
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->p(J)Lcom/yandex/metrica/impl/ob/ca;

    return-object p0
.end method

.method public b(Z)Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->c(Z)Z

    move-result p1

    return p1
.end method

.method public c(J)J
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/bk;
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->l(J)Lcom/yandex/metrica/impl/ob/ca;

    return-object p0
.end method

.method public e(J)J
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->h(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f(J)Lcom/yandex/metrica/impl/ob/bk;
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->r(J)Lcom/yandex/metrica/impl/ob/ca;

    return-object p0
.end method

.method public g(J)J
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->j(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(J)Lcom/yandex/metrica/impl/ob/bk;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->t(J)Lcom/yandex/metrica/impl/ob/ca;

    return-object p0
.end method

.method public synthetic i(J)Lcom/yandex/metrica/impl/ob/bk;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bd;->b(J)Lcom/yandex/metrica/impl/ob/bd;

    move-result-object p1

    return-object p1
.end method
