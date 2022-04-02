.class public Lcom/yandex/metrica/impl/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ad$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/az$c;,
        Lcom/yandex/metrica/impl/az$d;,
        Lcom/yandex/metrica/impl/az$a;,
        Lcom/yandex/metrica/impl/az$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/s;

.field private final b:Lcom/yandex/metrica/impl/ad;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/s;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/az;->c:Ljava/lang/Object;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/az;->d:Ljava/util/concurrent/ExecutorService;

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/az;->a:Lcom/yandex/metrica/impl/s;

    .line 43
    invoke-interface {p1}, Lcom/yandex/metrica/impl/s;->a()Lcom/yandex/metrica/impl/ad;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/az;->b:Lcom/yandex/metrica/impl/ad;

    .line 44
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad$a;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/ad;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/yandex/metrica/impl/az;->b:Lcom/yandex/metrica/impl/ad;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/s;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/yandex/metrica/impl/az;->a:Lcom/yandex/metrica/impl/s;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/az;)Ljava/lang/Object;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/yandex/metrica/impl/az;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/az;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/yandex/metrica/impl/az;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/az$d;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/az$d;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/az;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az$d;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    new-instance v1, Lcom/yandex/metrica/impl/az$a;

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/metrica/impl/az$a;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;B)V

    goto :goto_14

    :cond_f
    new-instance v1, Lcom/yandex/metrica/impl/az$b;

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/metrica/impl/az$b;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;B)V

    :goto_14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/az;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/az;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
