.class Lcom/tappx/a/i5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/s5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/i5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tappx/a/s5<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tappx/a/i5;


# direct methods
.method constructor <init>(Lcom/tappx/a/i5;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/tappx/a/i5$b;->b:Lcom/tappx/a/i5;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/i5$b;Lcom/tappx/a/s5;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/i5$b;->b(Lcom/tappx/a/s5;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Lcom/tappx/a/s5;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/tappx/a/s5;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 6
    iget-object v1, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    .line 10
    invoke-virtual {p1, v4}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-boolean p1, Lcom/tappx/a/a6;->b:Z

    if-eqz p1, :cond_38

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    .line 14
    invoke-static {v0, p1}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    :cond_38
    monitor-exit p0

    return v2

    .line 20
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, p0}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/s5$b;)V

    .line 22
    sget-boolean p1, Lcom/tappx/a/a6;->b:Z

    if-eqz p1, :cond_50

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string v0, "new request, sending to network %s"

    .line 23
    invoke-static {v0, p1}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tappx/a/s5;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_1
    invoke-virtual {p1}, Lcom/tappx/a/s5;->e()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_61

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 28
    sget-boolean v1, Lcom/tappx/a/a6;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string v4, "%d waiting requests for cacheKey=%s; resend to network"

    .line 32
    invoke-static {v4, v1}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/s5;

    .line 37
    iget-object v4, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, p0}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/s5$b;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_63

    .line 40
    :try_start_3d
    iget-object p1, p0, Lcom/tappx/a/i5$b;->b:Lcom/tappx/a/i5;

    invoke-static {p1}, Lcom/tappx/a/i5;->a(Lcom/tappx/a/i5;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_63

    goto :goto_61

    :catch_47
    move-exception p1

    :try_start_48
    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Couldn\'t add request to queue. %s"

    invoke-static {p1, v0}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 46
    iget-object p1, p0, Lcom/tappx/a/i5$b;->b:Lcom/tappx/a/i5;

    invoke-virtual {p1}, Lcom/tappx/a/i5;->a()V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/u5<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p2, Lcom/tappx/a/u5;->b:Lcom/tappx/a/h5$a;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/tappx/a/h5$a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_53

    .line 6
    :cond_b
    invoke-virtual {p1}, Lcom/tappx/a/s5;->e()Ljava/lang/String;

    move-result-object p1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_10
    iget-object v0, p0, Lcom/tappx/a/i5$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 10
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_50

    if-eqz v0, :cond_4f

    .line 12
    sget-boolean v1, Lcom/tappx/a/a6;->b:Z

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Releasing %d waiting requests for cacheKey=%s."

    .line 16
    invoke-static {p1, v1}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/s5;

    .line 22
    iget-object v1, p0, Lcom/tappx/a/i5$b;->b:Lcom/tappx/a/i5;

    invoke-static {v1}, Lcom/tappx/a/i5;->b(Lcom/tappx/a/i5;)Lcom/tappx/a/v5;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/tappx/a/v5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V

    goto :goto_39

    :cond_4f
    return-void

    :catchall_50
    move-exception p1

    .line 23
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1

    .line 24
    :cond_53
    :goto_53
    invoke-virtual {p0, p1}, Lcom/tappx/a/i5$b;->a(Lcom/tappx/a/s5;)V

    return-void
.end method
