.class public Lcom/tappx/a/o5;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tappx/a/n5;

.field private final c:Lcom/tappx/a/h5;

.field private final d:Lcom/tappx/a/v5;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/tappx/a/n5;Lcom/tappx/a/h5;Lcom/tappx/a/v5;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;",
            "Lcom/tappx/a/n5;",
            "Lcom/tappx/a/h5;",
            "Lcom/tappx/a/v5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/o5;->e:Z

    .line 18
    iput-object p1, p0, Lcom/tappx/a/o5;->a:Ljava/util/concurrent/BlockingQueue;

    .line 19
    iput-object p2, p0, Lcom/tappx/a/o5;->b:Lcom/tappx/a/n5;

    .line 20
    iput-object p3, p0, Lcom/tappx/a/o5;->c:Lcom/tappx/a/h5;

    .line 21
    iput-object p4, p0, Lcom/tappx/a/o5;->d:Lcom/tappx/a/v5;

    return-void
.end method

.method private a(Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/z5;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-virtual {p1, p2}, Lcom/tappx/a/s5;->b(Lcom/tappx/a/z5;)Lcom/tappx/a/z5;

    move-result-object p2

    .line 135
    iget-object v0, p0, Lcom/tappx/a/o5;->d:Lcom/tappx/a/v5;

    invoke-interface {v0, p1, p2}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    return-void
.end method

.method private b()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/o5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/s5;

    .line 4
    invoke-virtual {p0, v0}, Lcom/tappx/a/o5;->a(Lcom/tappx/a/s5;)V

    return-void
.end method

.method private b(Lcom/tappx/a/s5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/s5;->q()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tappx/a/o5;->e:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method a(Lcom/tappx/a/s5;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(I)V

    const/4 v2, 0x4

    :try_start_9
    const-string v3, "network-queue-take"

    .line 6
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/tappx/a/s5;->t()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "network-discard-cancelled"

    .line 11
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->b(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/tappx/a/s5;->v()V
    :try_end_1c
    .catch Lcom/tappx/a/z5; {:try_start_9 .. :try_end_1c} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_75
    .catchall {:try_start_9 .. :try_end_1c} :catchall_73

    .line 56
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(I)V

    return-void

    .line 57
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/tappx/a/o5;->b(Lcom/tappx/a/s5;)V

    .line 60
    iget-object v3, p0, Lcom/tappx/a/o5;->b:Lcom/tappx/a/n5;

    invoke-interface {v3, p1}, Lcom/tappx/a/n5;->a(Lcom/tappx/a/s5;)Lcom/tappx/a/q5;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 61
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 65
    iget-boolean v4, v3, Lcom/tappx/a/q5;->e:Z

    if-eqz v4, :cond_44

    invoke-virtual {p1}, Lcom/tappx/a/s5;->s()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v3, "not-modified"

    .line 66
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/tappx/a/s5;->v()V
    :try_end_40
    .catch Lcom/tappx/a/z5; {:try_start_20 .. :try_end_40} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_75
    .catchall {:try_start_20 .. :try_end_40} :catchall_73

    .line 97
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(I)V

    return-void

    .line 98
    :cond_44
    :try_start_44
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/q5;)Lcom/tappx/a/u5;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 99
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/tappx/a/s5;->w()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, v3, Lcom/tappx/a/u5;->b:Lcom/tappx/a/h5$a;

    if-eqz v4, :cond_67

    .line 104
    iget-object v4, p0, Lcom/tappx/a/o5;->c:Lcom/tappx/a/h5;

    invoke-virtual {p1}, Lcom/tappx/a/s5;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/tappx/a/u5;->b:Lcom/tappx/a/h5$a;

    invoke-interface {v4, v5, v6}, Lcom/tappx/a/h5;->a(Ljava/lang/String;Lcom/tappx/a/h5$a;)V

    const-string v4, "network-cache-written"

    .line 105
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 109
    :cond_67
    invoke-virtual {p1}, Lcom/tappx/a/s5;->u()V

    .line 110
    iget-object v4, p0, Lcom/tappx/a/o5;->d:Lcom/tappx/a/v5;

    invoke-interface {v4, p1, v3}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V

    .line 111
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/u5;)V
    :try_end_72
    .catch Lcom/tappx/a/z5; {:try_start_44 .. :try_end_72} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_72} :catch_75
    .catchall {:try_start_44 .. :try_end_72} :catchall_73

    goto :goto_aa

    :catchall_73
    move-exception v0

    goto :goto_ae

    :catch_75
    move-exception v3

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    :try_start_79
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 117
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tappx/a/a6;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v4, Lcom/tappx/a/z5;

    invoke-direct {v4, v3}, Lcom/tappx/a/z5;-><init>(Ljava/lang/Throwable;)V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/tappx/a/z5;->a(J)V

    .line 120
    iget-object v0, p0, Lcom/tappx/a/o5;->d:Lcom/tappx/a/v5;

    invoke-interface {v0, p1, v4}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    .line 121
    invoke-virtual {p1}, Lcom/tappx/a/s5;->v()V

    goto :goto_aa

    :catch_9b
    move-exception v3

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/tappx/a/z5;->a(J)V

    .line 123
    invoke-direct {p0, p1, v3}, Lcom/tappx/a/o5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V

    .line 124
    invoke-virtual {p1}, Lcom/tappx/a/s5;->v()V
    :try_end_aa
    .catchall {:try_start_79 .. :try_end_aa} :catchall_73

    .line 132
    :goto_aa
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(I)V

    return-void

    :goto_ae
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(I)V

    .line 133
    throw v0
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/tappx/a/o5;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    .line 7
    :catch_9
    iget-boolean v0, p0, Lcom/tappx/a/o5;->e:Z

    if-eqz v0, :cond_15

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 11
    invoke-static {v1, v0}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
