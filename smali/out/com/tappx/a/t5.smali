.class public Lcom/tappx/a/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/t5$c;,
        Lcom/tappx/a/t5$b;,
        Lcom/tappx/a/t5$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tappx/a/s5<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/tappx/a/s5<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/tappx/a/h5;

.field private final f:Lcom/tappx/a/n5;

.field private final g:Lcom/tappx/a/v5;

.field private final h:[Lcom/tappx/a/o5;

.field private i:Lcom/tappx/a/i5;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/t5$d;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/t5$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;)V
    .registers 4

    const/4 v0, 0x4

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/tappx/a/t5;-><init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;I)V
    .registers 7

    .line 53
    new-instance v0, Lcom/tappx/a/l5;

    new-instance v1, Landroid/os/Handler;

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/tappx/a/l5;-><init>(Landroid/os/Handler;)V

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tappx/a/t5;-><init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;ILcom/tappx/a/v5;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;ILcom/tappx/a/v5;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 14
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->j:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/t5;->k:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/tappx/a/t5;->e:Lcom/tappx/a/h5;

    .line 50
    iput-object p2, p0, Lcom/tappx/a/t5;->f:Lcom/tappx/a/n5;

    .line 51
    new-array p1, p3, [Lcom/tappx/a/o5;

    iput-object p1, p0, Lcom/tappx/a/t5;->h:[Lcom/tappx/a/o5;

    .line 52
    iput-object p4, p0, Lcom/tappx/a/t5;->g:Lcom/tappx/a/v5;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/t5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public a(Lcom/tappx/a/s5;)Lcom/tappx/a/s5;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tappx/a/s5<",
            "TT;>;)",
            "Lcom/tappx/a/s5<",
            "TT;>;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p0}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/t5;)Lcom/tappx/a/s5;

    .line 12
    iget-object v0, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    monitor-enter v0

    .line 13
    :try_start_6
    iget-object v1, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2e

    .line 17
    invoke-virtual {p0}, Lcom/tappx/a/t5;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->b(I)Lcom/tappx/a/s5;

    const-string v0, "add-to-queue"

    .line 18
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/tappx/a/t5;->a(Lcom/tappx/a/s5;I)V

    .line 22
    invoke-virtual {p1}, Lcom/tappx/a/s5;->w()Z

    move-result v0

    if-nez v0, :cond_28

    .line 23
    iget-object v0, p0, Lcom/tappx/a/t5;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 26
    :cond_28
    iget-object v0, p0, Lcom/tappx/a/t5;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_2e
    move-exception p1

    .line 27
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method a(Lcom/tappx/a/s5;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;I)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/tappx/a/t5;->k:Ljava/util/List;

    monitor-enter v0

    .line 29
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/t5;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tappx/a/t5$b;

    .line 30
    invoke-interface {v2, p1, p2}, Lcom/tappx/a/t5$b;->a(Lcom/tappx/a/s5;I)V

    goto :goto_9

    .line 32
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e
.end method

.method public a(Lcom/tappx/a/t5$c;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tappx/a/s5;

    .line 4
    invoke-interface {p1, v2}, Lcom/tappx/a/t5$c;->a(Lcom/tappx/a/s5;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5
    invoke-virtual {v2}, Lcom/tappx/a/s5;->a()V

    goto :goto_9

    .line 8
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 9
    new-instance v0, Lcom/tappx/a/t5$a;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/t5$a;-><init>(Lcom/tappx/a/t5;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tappx/a/t5;->a(Lcom/tappx/a/t5$c;)V

    return-void

    .line 10
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/t5;->c()V

    .line 3
    new-instance v0, Lcom/tappx/a/i5;

    iget-object v1, p0, Lcom/tappx/a/t5;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/tappx/a/t5;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/tappx/a/t5;->e:Lcom/tappx/a/h5;

    iget-object v4, p0, Lcom/tappx/a/t5;->g:Lcom/tappx/a/v5;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tappx/a/i5;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/tappx/a/h5;Lcom/tappx/a/v5;)V

    iput-object v0, p0, Lcom/tappx/a/t5;->i:Lcom/tappx/a/i5;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 7
    :goto_16
    iget-object v1, p0, Lcom/tappx/a/t5;->h:[Lcom/tappx/a/o5;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 8
    new-instance v1, Lcom/tappx/a/o5;

    iget-object v2, p0, Lcom/tappx/a/t5;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/tappx/a/t5;->f:Lcom/tappx/a/n5;

    iget-object v4, p0, Lcom/tappx/a/t5;->e:Lcom/tappx/a/h5;

    iget-object v5, p0, Lcom/tappx/a/t5;->g:Lcom/tappx/a/v5;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tappx/a/o5;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/tappx/a/n5;Lcom/tappx/a/h5;Lcom/tappx/a/v5;)V

    .line 10
    iget-object v2, p0, Lcom/tappx/a/t5;->h:[Lcom/tappx/a/o5;

    aput-object v1, v2, v0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_32
    return-void
.end method

.method b(Lcom/tappx/a/s5;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tappx/a/s5<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    monitor-enter v0

    .line 13
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/t5;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    .line 15
    iget-object v1, p0, Lcom/tappx/a/t5;->j:Ljava/util/List;

    monitor-enter v1

    .line 16
    :try_start_c
    iget-object v0, p0, Lcom/tappx/a/t5;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tappx/a/t5$d;

    .line 17
    invoke-interface {v2, p1}, Lcom/tappx/a/t5$d;->a(Lcom/tappx/a/s5;)V

    goto :goto_12

    .line 19
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    const/4 v0, 0x5

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/tappx/a/t5;->a(Lcom/tappx/a/s5;I)V

    return-void

    :catchall_28
    move-exception p1

    .line 21
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    .line 22
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method public c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/t5;->i:Lcom/tappx/a/i5;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/i5;->a()V

    .line 4
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/t5;->h:[Lcom/tappx/a/o5;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    .line 6
    invoke-virtual {v3}, Lcom/tappx/a/o5;->a()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
