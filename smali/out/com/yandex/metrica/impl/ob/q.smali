.class public Lcom/yandex/metrica/impl/ob/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/q;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ca;)Lcom/yandex/metrica/impl/a;
    .registers 7

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/a;

    if-nez v0, :cond_2d

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ca;->a()Lcom/yandex/metrica/impl/a$a;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/a;

    iget-object v1, p2, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/yandex/metrica/impl/a$a;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/a;-><init>(Ljava/lang/String;J)V

    .line 32
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/q;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 35
    :cond_2d
    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/ca;)Z
    .registers 8

    .line 39
    iget-wide v0, p1, Lcom/yandex/metrica/impl/a$a;->b:J

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ca;->a()Lcom/yandex/metrica/impl/a$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/a$a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 40
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/ca;)V
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ca;->h()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 49
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
