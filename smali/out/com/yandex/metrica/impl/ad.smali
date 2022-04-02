.class public Lcom/yandex/metrica/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ad$a;
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/yandex/metrica/IMetricaService;

.field private final f:Ljava/lang/Runnable;

.field private final g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/ad;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    .line 84
    new-instance v0, Lcom/yandex/metrica/impl/ad$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ad$1;-><init>(Lcom/yandex/metrica/impl/ad;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->f:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/yandex/metrica/impl/ad$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ad$2;-><init>(Lcom/yandex/metrica/impl/ad;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->g:Landroid/content/ServiceConnection;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ad;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ad;->f()V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ad;)V
    .registers 2

    .line 1130
    iget-object p0, p0, Lcom/yandex/metrica/impl/ad;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ad$a;

    .line 1131
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ad;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ad;->g()V

    return-void
.end method

.method private declared-synchronized f()V
    .registers 4

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->d()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    if-eqz v0, :cond_15

    .line 98
    :try_start_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ad;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iput-object v1, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1c

    .line 105
    :catch_15
    :cond_15
    :try_start_15
    iput-object v1, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    .line 106
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ad;->g()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    .line 107
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    if-nez v0, :cond_15

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    .line 60
    :try_start_b
    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ad;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_15
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :catch_15
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/ad$a;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->f:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ad;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method c()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/yandex/metrica/IMetricaService;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/IMetricaService;

    return-object v0
.end method
