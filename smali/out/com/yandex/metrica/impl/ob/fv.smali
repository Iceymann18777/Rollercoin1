.class public Lcom/yandex/metrica/impl/ob/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fu$a;
.implements Lcom/yandex/metrica/impl/ob/fu$b;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/fu$a;",
        "Lcom/yandex/metrica/impl/ob/fu$b<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/fr;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fv;->a:Z

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/fv;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yandex/metrica/impl/ob/fv<",
            "TE;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/fv;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fv;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    if-nez v0, :cond_3e

    .line 69
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fv;->a:Z

    if-eqz v0, :cond_d

    .line 70
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fv;->b:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_46

    monitor-exit p0

    return-object p1

    :cond_d
    const-wide/16 v0, 0x0

    if-nez p1, :cond_15

    .line 74
    :try_start_11
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_24

    .line 75
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_24

    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 79
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    if-nez p1, :cond_36

    .line 83
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/fv;->a:Z

    if-eqz p1, :cond_30

    .line 87
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fv;->b:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_46

    monitor-exit p0

    return-object p1

    .line 84
    :cond_30
    :try_start_30
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 80
    :cond_36
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 66
    :cond_3e
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/fr;)V
    .registers 2

    monitor-enter p0

    .line 109
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 111
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 102
    :try_start_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fv;->a:Z

    .line 103
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fv;->b:Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 105
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 2

    monitor-enter p0

    .line 45
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    :try_start_1
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fv;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fv;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fv;->a:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fv;->c:Lcom/yandex/metrica/impl/ob/fr;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fv;->isCancelled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_10

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18
.end method
