.class public Lcom/tappx/a/i5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/i5$b;
    }
.end annotation


# static fields
.field private static final g:Z


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

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/tappx/a/h5;

.field private final d:Lcom/tappx/a/v5;

.field private volatile e:Z

.field private final f:Lcom/tappx/a/i5$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/tappx/a/a6;->b:Z

    sput-boolean v0, Lcom/tappx/a/i5;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/tappx/a/h5;Lcom/tappx/a/v5;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;",
            "Lcom/tappx/a/h5;",
            "Lcom/tappx/a/v5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/i5;->e:Z

    .line 21
    iput-object p1, p0, Lcom/tappx/a/i5;->a:Ljava/util/concurrent/BlockingQueue;

    .line 22
    iput-object p2, p0, Lcom/tappx/a/i5;->b:Ljava/util/concurrent/BlockingQueue;

    .line 23
    iput-object p3, p0, Lcom/tappx/a/i5;->c:Lcom/tappx/a/h5;

    .line 24
    iput-object p4, p0, Lcom/tappx/a/i5;->d:Lcom/tappx/a/v5;

    .line 25
    new-instance p1, Lcom/tappx/a/i5$b;

    invoke-direct {p1, p0}, Lcom/tappx/a/i5$b;-><init>(Lcom/tappx/a/i5;)V

    iput-object p1, p0, Lcom/tappx/a/i5;->f:Lcom/tappx/a/i5$b;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/i5;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/i5;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/i5;)Lcom/tappx/a/v5;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/i5;->d:Lcom/tappx/a/v5;

    return-object p0
.end method

.method private b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/i5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/s5;

    .line 3
    invoke-virtual {p0, v0}, Lcom/tappx/a/i5;->a(Lcom/tappx/a/s5;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/i5;->e:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method a(Lcom/tappx/a/s5;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 4
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(I)V

    const/4 v1, 0x2

    .line 9
    :try_start_a
    invoke-virtual {p1}, Lcom/tappx/a/s5;->t()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "cache-discard-canceled"

    .line 10
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->b(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_a3

    .line 78
    invoke-virtual {p1, v1}, Lcom/tappx/a/s5;->a(I)V

    return-void

    .line 79
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/tappx/a/i5;->c:Lcom/tappx/a/h5;

    invoke-virtual {p1}, Lcom/tappx/a/s5;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tappx/a/h5;->a(Ljava/lang/String;)Lcom/tappx/a/h5$a;

    move-result-object v2

    if-nez v2, :cond_3b

    const-string v0, "cache-miss"

    .line 81
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/tappx/a/i5;->f:Lcom/tappx/a/i5$b;

    invoke-static {v0, p1}, Lcom/tappx/a/i5$b;->a(Lcom/tappx/a/i5$b;Lcom/tappx/a/s5;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 84
    iget-object v0, p0, Lcom/tappx/a/i5;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_a3

    .line 142
    :cond_37
    invoke-virtual {p1, v1}, Lcom/tappx/a/s5;->a(I)V

    return-void

    .line 143
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Lcom/tappx/a/h5$a;->a()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v0, "cache-hit-expired"

    .line 144
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/h5$a;)Lcom/tappx/a/s5;

    .line 146
    iget-object v0, p0, Lcom/tappx/a/i5;->f:Lcom/tappx/a/i5$b;

    invoke-static {v0, p1}, Lcom/tappx/a/i5$b;->a(Lcom/tappx/a/i5$b;Lcom/tappx/a/s5;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 147
    iget-object v0, p0, Lcom/tappx/a/i5;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_a3

    .line 195
    :cond_56
    invoke-virtual {p1, v1}, Lcom/tappx/a/s5;->a(I)V

    return-void

    :cond_5a
    :try_start_5a
    const-string v3, "cache-hit"

    .line 196
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 197
    new-instance v3, Lcom/tappx/a/q5;

    iget-object v4, v2, Lcom/tappx/a/h5$a;->a:[B

    iget-object v5, v2, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/tappx/a/q5;-><init>([BLjava/util/Map;)V

    .line 198
    invoke-virtual {p1, v3}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/q5;)Lcom/tappx/a/u5;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    .line 200
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Lcom/tappx/a/h5$a;->b()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 204
    iget-object v0, p0, Lcom/tappx/a/i5;->d:Lcom/tappx/a/v5;

    invoke-interface {v0, p1, v3}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V

    goto :goto_9f

    :cond_7d
    const-string v4, "cache-hit-refresh-needed"

    .line 209
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v2}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/h5$a;)Lcom/tappx/a/s5;

    .line 212
    iput-boolean v0, v3, Lcom/tappx/a/u5;->d:Z

    .line 214
    iget-object v0, p0, Lcom/tappx/a/i5;->f:Lcom/tappx/a/i5$b;

    invoke-static {v0, p1}, Lcom/tappx/a/i5$b;->a(Lcom/tappx/a/i5$b;Lcom/tappx/a/s5;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 217
    iget-object v0, p0, Lcom/tappx/a/i5;->d:Lcom/tappx/a/v5;

    new-instance v2, Lcom/tappx/a/i5$a;

    invoke-direct {v2, p0, p1}, Lcom/tappx/a/i5$a;-><init>(Lcom/tappx/a/i5;Lcom/tappx/a/s5;)V

    invoke-interface {v0, p1, v3, v2}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V

    goto :goto_9f

    .line 234
    :cond_9a
    iget-object v0, p0, Lcom/tappx/a/i5;->d:Lcom/tappx/a/v5;

    invoke-interface {v0, p1, v3}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V
    :try_end_9f
    .catchall {:try_start_5a .. :try_end_9f} :catchall_a3

    .line 238
    :goto_9f
    invoke-virtual {p1, v1}, Lcom/tappx/a/s5;->a(I)V

    return-void

    :catchall_a3
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/tappx/a/s5;->a(I)V

    .line 239
    throw v0
.end method

.method public run()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/tappx/a/i5;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    iget-object v0, p0, Lcom/tappx/a/i5;->c:Lcom/tappx/a/h5;

    invoke-interface {v0}, Lcom/tappx/a/h5;->a()V

    .line 9
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/tappx/a/i5;->b()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    .line 12
    :catch_1a
    iget-boolean v0, p0, Lcom/tappx/a/i5;->e:Z

    if-eqz v0, :cond_26

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 16
    invoke-static {v2, v0}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
