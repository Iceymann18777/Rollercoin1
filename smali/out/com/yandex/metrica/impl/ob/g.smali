.class public Lcom/yandex/metrica/impl/ob/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/g$b;,
        Lcom/yandex/metrica/impl/ob/g$a;,
        Lcom/yandex/metrica/impl/ob/g$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private volatile b:Z

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yandex/metrica/impl/ob/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/impl/ob/g$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/g;->b:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->c:Ljava/util/concurrent/BlockingQueue;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->e:Ljava/util/WeakHashMap;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yandex/metrica/impl/ob/g$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/g$1;-><init>(Lcom/yandex/metrica/impl/ob/g;)V

    const-string v2, "Bus Dispatcher"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->a:Ljava/lang/Thread;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static final a()Lcom/yandex/metrica/impl/ob/g;
    .registers 1

    .line 72
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g$b;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/g;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/g;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/g;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/g;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 4

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_23

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/k;

    .line 115
    invoke-virtual {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    goto :goto_13

    .line 118
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    goto :goto_29

    :goto_28
    throw p1

    :goto_29
    goto :goto_28
.end method

.method a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/i;",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/yandex/metrica/impl/ob/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/yandex/metrica/impl/ob/g$a;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 132
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1f

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/g$c;

    .line 164
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/g$c;->a()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    goto :goto_f

    .line 167
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_15

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_15
    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_2c

    .line 149
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/g;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2c
    new-instance p1, Lcom/yandex/metrica/impl/ob/g$c;

    const/4 v2, 0x0

    invoke-direct {p1, v0, p3, v2}, Lcom/yandex/metrica/impl/ob/g$c;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/yandex/metrica/impl/ob/k;B)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/i;

    if-eqz p1, :cond_42

    .line 155
    invoke-virtual {p0, p1, p3}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 157
    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/i;)V

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 128
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
