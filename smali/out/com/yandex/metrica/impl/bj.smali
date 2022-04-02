.class public Lcom/yandex/metrica/impl/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/t;

.field private final b:Lcom/yandex/metrica/impl/ba;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/yandex/metrica/impl/aj;

.field private e:Lcom/yandex/metrica/impl/bh;

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/bj$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/bj$1;-><init>(Lcom/yandex/metrica/impl/bj;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    .line 50
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/ba;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/ob/t;Ljava/util/concurrent/Executor;)Lcom/yandex/metrica/impl/aj;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aj;->start()V

    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/bh;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/at$a;Ljava/lang/Long;)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p2

    .line 123
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 124
    sget-object v0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/ContentValues;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 131
    :try_start_25
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/at;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_35

    .line 136
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/at;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/ak;)V

    goto :goto_19

    :catch_35
    :cond_35
    return-void
.end method

.method private d()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/t;Ljava/util/concurrent/Executor;)Lcom/yandex/metrica/impl/aj;
    .registers 5

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/aj;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/yandex/metrica/impl/aj;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;)V

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "NetworkCore ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aj;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/bh;
    .registers 3

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/bh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/bh;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-object v0
.end method

.method public a()V
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v1, :cond_4d

    .line 1096
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4f

    .line 1097
    :try_start_a
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v2, :cond_45

    .line 1099
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bh;->s()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1100
    new-instance v2, Lcom/yandex/metrica/impl/bh;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/bh;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    .line 1101
    iget-object v3, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/ak;)V

    .line 1106
    :cond_24
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1109
    invoke-static {}, Lcom/yandex/metrica/impl/as;->u()Lcom/yandex/metrica/impl/at$a;

    move-result-object v2

    const-wide/16 v3, -0x2

    .line 1110
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1108
    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/at$a;Ljava/lang/Long;)V

    .line 1114
    invoke-static {}, Lcom/yandex/metrica/impl/at;->A()Lcom/yandex/metrica/impl/at$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/at$a;Ljava/lang/Long;)V

    .line 1117
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_4a

    .line 90
    :try_start_46
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4f

    goto :goto_4d

    :catchall_4a
    move-exception v2

    .line 1117
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2

    .line 92
    :cond_4d
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public b()V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v1, :cond_32

    .line 154
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V

    .line 1145
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->b()I

    move-result v1

    if-lez v1, :cond_32

    .line 1146
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1147
    iget-object v3, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->n()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public c()V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v1, :cond_2c

    .line 163
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/aj;->b(Lcom/yandex/metrica/impl/ak;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 165
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bh;->a(Z)V

    .line 166
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/bh;->a(J)V

    .line 167
    new-instance v1, Lcom/yandex/metrica/impl/bh;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/bh;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    .line 168
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/ak;)V

    .line 171
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public close()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v1, :cond_1a

    .line 73
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V

    .line 75
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aj;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 76
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/aj;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aj;->a()V

    :cond_17
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    .line 83
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
