.class public abstract Lcom/yandex/metrica/impl/ob/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bg$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/yandex/metrica/impl/ob/t;

.field protected b:Lcom/yandex/metrica/impl/ob/bk;

.field protected c:J

.field protected d:J

.field protected e:Ljava/util/concurrent/atomic/AtomicLong;

.field private f:Z

.field private volatile g:Lcom/yandex/metrica/impl/ob/bg$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bk;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bg;->a:Lcom/yandex/metrica/impl/ob/t;

    .line 42
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    .line 45
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->e(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bg;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bk;->b(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/bg;->f:Z

    .line 49
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->d(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    return-void
.end method

.method private l()Lcom/yandex/metrica/impl/ob/bg$a;
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;

    if-nez v0, :cond_38

    .line 144
    monitor-enter p0

    .line 145
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_35

    if-nez v0, :cond_33

    .line 147
    :try_start_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->c()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bn;->c(JLcom/yandex/metrica/impl/ob/bl;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "report_request_parameters"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/yandex/metrica/impl/ob/bg$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bg$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_35

    .line 158
    :catch_33
    :cond_33
    :try_start_33
    monitor-exit p0

    goto :goto_38

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v0

    .line 160
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/yandex/metrica/impl/ob/bl;
.end method

.method a(Z)V
    .registers 3

    .line 136
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bg;->f:Z

    if-eq v0, p1, :cond_f

    .line 137
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/bg;->f:Z

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bk;->a(Z)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    :cond_f
    return-void
.end method

.method protected abstract b()I
.end method

.method c()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    return-wide v0
.end method

.method declared-synchronized d()V
    .registers 7

    monitor-enter p0

    .line 1029
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 63
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    .line 69
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/bk;->i(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 70
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/bk;->h(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bk;->d(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bk;->f(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bn;->a(JLcom/yandex/metrica/impl/ob/bl;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bg;->a(Z)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 80
    monitor-exit p0

    return-void

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()J
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bk;->g(J)J

    move-result-wide v0

    .line 84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method f()Z
    .registers 11

    .line 88
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bg;->c:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_4f

    .line 1105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bk;->g(J)J

    move-result-wide v0

    .line 2051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v6, v0

    .line 1107
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->g()J

    move-result-wide v0

    cmp-long v8, v6, v2

    if-ltz v8, :cond_32

    .line 1113
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v8, v6, v2

    if-gez v8, :cond_32

    sget-wide v2, Lcom/yandex/metrica/impl/ob/bh;->c:J

    cmp-long v6, v0, v2

    if-ltz v6, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    if-nez v0, :cond_4f

    .line 2092
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bg;->l()Lcom/yandex/metrica/impl/ob/bg$a;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2094
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bg;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v1

    .line 2095
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bg$a;->a(Lcom/yandex/metrica/impl/ba;)Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-eqz v0, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v0, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    :goto_50
    if-nez v0, :cond_53

    return v4

    :cond_53
    return v5
.end method

.method g()J
    .registers 6

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/bg;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized h()V
    .registers 4

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    const-wide/32 v1, -0x80000000

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bk;->h(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->g:Lcom/yandex/metrica/impl/ob/bg$a;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 119
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()V
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    .line 3051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bk;->h(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    return-void
.end method

.method j()J
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bg;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bg;->b:Lcom/yandex/metrica/impl/ob/bk;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bg;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/bk;->f(J)Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    return-wide v0
.end method

.method k()Z
    .registers 6

    .line 132
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bg;->f:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bg;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
