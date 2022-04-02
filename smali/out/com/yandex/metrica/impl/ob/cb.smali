.class public abstract Lcom/yandex/metrica/impl/ob/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bq;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cb;->f()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/cb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bq;

    .line 62
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bq;

    .line 55
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bq;

    .line 48
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/cb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bq;

    .line 69
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 70
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method b(Ljava/lang/String;I)I
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;J)J
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;Z)Z
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected f()V
    .registers 1

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 2

    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bq;->b()V

    .line 83
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dk;
    .registers 4

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bq;

    .line 76
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 77
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method
