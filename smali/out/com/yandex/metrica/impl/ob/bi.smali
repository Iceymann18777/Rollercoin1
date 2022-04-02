.class public Lcom/yandex/metrica/impl/ob/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/be;

.field private b:Lcom/yandex/metrica/impl/ob/bc;

.field private c:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ca;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/be;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bf;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/bf;-><init>(Lcom/yandex/metrica/impl/ob/ca;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/be;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bf;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/bc;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bd;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/bd;-><init>(Lcom/yandex/metrica/impl/ob/ca;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/bc;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bd;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;Lcom/yandex/metrica/impl/ob/bg;)Z
    .registers 7

    .line 54
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 55
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 1329
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/ob/bg;)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    .line 57
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/bg;->a(Z)V

    goto :goto_38

    .line 58
    :cond_20
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 2329
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p3}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/ob/bg;)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    .line 60
    invoke-virtual {p3, v1}, Lcom/yandex/metrica/impl/ob/bg;->a(Z)V

    .line 62
    :cond_38
    :goto_38
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bg;->h()V

    .line 63
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->d()V

    const/4 p1, 0x1

    return p1

    .line 66
    :cond_40
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->i()V

    return v1
.end method

.method private f()Lcom/yandex/metrica/impl/ob/bg;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/be;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    return-object v0
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/bg;)Lcom/yandex/metrica/impl/ob/bj;
    .registers 5

    .line 114
    new-instance v0, Lcom/yandex/metrica/impl/ob/bj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bj;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bg;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bj;->a(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bg;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bj;->a(Lcom/yandex/metrica/impl/ob/bl;)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bg;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bj;->b(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bg;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bj;->c(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/be;->i()V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bi;->f()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bg;->a(Z)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;Lcom/yandex/metrica/impl/ob/bg;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/be;->h()V

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bc;->h()V

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/be;->f()Z

    move-result v0

    if-nez v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;Lcom/yandex/metrica/impl/ob/bg;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public c()[J
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bc;->c()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/be;->c()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/bj;
    .registers 5

    .line 88
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bi;->f()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/yandex/metrica/impl/ob/bj;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/bj;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bg;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bj;->a(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bg;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bj;->b(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bg;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bj;->c(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bg;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bj;->a(Lcom/yandex/metrica/impl/ob/bl;)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/bj;
    .registers 5

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 104
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v2

    sget-object v3, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2, v0, v1, v3}, Lcom/yandex/metrica/impl/ob/bn;->a(JLcom/yandex/metrica/impl/ob/bl;)V

    .line 105
    new-instance v2, Lcom/yandex/metrica/impl/ob/bj;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bj;-><init>()V

    .line 106
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bj;->a(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    .line 107
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bj;->a(Lcom/yandex/metrica/impl/ob/bl;)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bj;->b(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bj;->c(J)Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    return-object v0
.end method
