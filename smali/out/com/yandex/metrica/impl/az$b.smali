.class Lcom/yandex/metrica/impl/az$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lcom/yandex/metrica/impl/az$d;

.field c:Z

.field final synthetic d:Lcom/yandex/metrica/impl/az;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/yandex/metrica/impl/az$b;->b:Lcom/yandex/metrica/impl/az$d;

    .line 69
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class p2, Lcom/yandex/metrica/impl/ao;

    new-instance v0, Lcom/yandex/metrica/impl/az$b$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/az$b$1;-><init>(Lcom/yandex/metrica/impl/az$b;)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v0

    .line 69
    invoke-virtual {p1, p0, p2, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;B)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/az$b;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/az$d;)Z
    .registers 5

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v0}, Lcom/yandex/metrica/impl/az;->b(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/s;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/az$d;->b()Lcom/yandex/metrica/impl/h;

    move-result-object v1

    invoke-static {p2}, Lcom/yandex/metrica/impl/az$d;->a(Lcom/yandex/metrica/impl/az$d;)Lcom/yandex/metrica/impl/aw;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    const/4 p1, 0x1

    return p1

    :catch_13
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    .line 82
    :try_start_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v2}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ad;->e()Lcom/yandex/metrica/IMetricaService;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 83
    iget-object v3, p0, Lcom/yandex/metrica/impl/az$b;->b:Lcom/yandex/metrica/impl/az$d;

    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/az$b;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/az$d;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_2e

    if-eqz v2, :cond_1e

    .line 99
    :cond_16
    :goto_16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;)V

    return-object v1

    .line 87
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/az$b;->b()Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_16

    .line 90
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/az$b;->c:Z
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2e

    if-nez v2, :cond_16

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    goto :goto_16

    .line 99
    :catchall_2e
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method b()Z
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v0}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->a()V

    .line 1121
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v0}, Lcom/yandex/metrica/impl/az;->c(Lcom/yandex/metrica/impl/az;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1122
    :try_start_10
    iget-object v1, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v1}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ad;->d()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_3e

    if-nez v1, :cond_3b

    .line 1124
    :try_start_1c
    iget-object v1, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v1}, Lcom/yandex/metrica/impl/az;->c(Lcom/yandex/metrica/impl/az;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_28} :catch_29
    .catchall {:try_start_1c .. :try_end_28} :catchall_3e

    goto :goto_3b

    .line 1126
    :catch_29
    :try_start_29
    iget-object v1, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v1}, Lcom/yandex/metrica/impl/az;->c(Lcom/yandex/metrica/impl/az;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1127
    iget-object v1, p0, Lcom/yandex/metrica/impl/az$b;->d:Lcom/yandex/metrica/impl/az;

    invoke-static {v1}, Lcom/yandex/metrica/impl/az;->d(Lcom/yandex/metrica/impl/az;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1130
    :cond_3b
    :goto_3b
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/az$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
