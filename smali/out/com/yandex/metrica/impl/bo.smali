.class public final Lcom/yandex/metrica/impl/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/j$a;


# static fields
.field private static a:Lcom/yandex/metrica/impl/bo;

.field private static b:Lcom/yandex/metrica/impl/n;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/metrica/impl/ax;

.field private e:Lcom/yandex/metrica/impl/z;

.field private f:Lcom/yandex/metrica/impl/ah;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/yandex/metrica/impl/ob/dv;

.field private final i:Lcom/yandex/metrica/impl/ar;

.field private j:Lcom/yandex/metrica/impl/g;

.field private k:Lcom/yandex/metrica/impl/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/n;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/n;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bo;->b:Lcom/yandex/metrica/impl/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bo;->g:Ljava/util/concurrent/ExecutorService;

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing of Metrica"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Release type"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Version 2.73"

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", API Level 58"

    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Dated 15.06.2017."

    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/j;->a(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    .line 2049
    sget-object p1, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bo;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ay;-><init>(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bp;->e()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/yandex/metrica/impl/ob/bz;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    .line 74
    new-instance v1, Lcom/yandex/metrica/impl/f;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/f;-><init>(Lcom/yandex/metrica/impl/ob/bz;)V

    iget-object v3, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/f;->a(Landroid/content/Context;)V

    .line 76
    new-instance v1, Lcom/yandex/metrica/impl/ob/dv;

    invoke-direct {v1, v0, p2, v2}, Lcom/yandex/metrica/impl/ob/dv;-><init>(Lcom/yandex/metrica/impl/ay;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bz;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    .line 77
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    .line 79
    new-instance p2, Lcom/yandex/metrica/impl/ar;

    invoke-direct {p2, v0, v2}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/ob/bz;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/bo;->i:Lcom/yandex/metrica/impl/ar;

    .line 81
    new-instance p2, Lcom/yandex/metrica/impl/j;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/j;-><init>(Landroid/os/Handler;)V

    .line 82
    invoke-virtual {p2, p0}, Lcom/yandex/metrica/impl/j;->a(Lcom/yandex/metrica/impl/j$a;)V

    .line 83
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/j;)V

    .line 85
    new-instance v1, Lcom/yandex/metrica/impl/ax$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ax$a;-><init>()V

    iget-object v3, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    .line 86
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ax$a;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    .line 87
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/ob/dw;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ax$a;->a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ax$a;->a()Lcom/yandex/metrica/impl/ax;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bo;->d:Lcom/yandex/metrica/impl/ax;

    .line 93
    invoke-static {}, Lcom/yandex/metrica/impl/bc;->b()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 94
    new-instance p1, Lcom/yandex/metrica/impl/g;

    new-instance p2, Lcom/yandex/metrica/impl/c;

    iget-object v0, p0, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/c;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/bo;->g:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v2, p2, v0}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/ob/bz;Lcom/yandex/metrica/impl/c;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/bo;->j:Lcom/yandex/metrica/impl/g;

    :cond_c3
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bo;)Lcom/yandex/metrica/impl/z;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 119
    :try_start_4
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/bo;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 120
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .registers 6

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/bo;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/n;->i()Z

    move-result v1

    .line 105
    sget-object v2, Lcom/yandex/metrica/impl/bo;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/n;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;

    move-result-object p1

    .line 106
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bo;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 107
    sget-object v2, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    if-nez v2, :cond_45

    .line 108
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 109
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/utils/j;->a()V

    .line 111
    :cond_2b
    sget-object v2, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    .line 3281
    iget-object v3, v2, Lcom/yandex/metrica/impl/bo;->d:Lcom/yandex/metrica/impl/ax;

    invoke-virtual {v3, p1, v1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/z;

    move-result-object p1

    iput-object p1, v2, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    .line 3282
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/z;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/bo;->a(Z)V

    goto :goto_4c

    .line 113
    :cond_45
    sget-object v2, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v2, p1, v1}, Lcom/yandex/metrica/impl/z;->a(Lcom/yandex/metrica/e;Z)V

    :goto_4c
    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {p0, p1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    .line 115
    check-cast p0, Lcom/yandex/metrica/b;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/yandex/metrica/b;->a(I)V
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_5a

    .line 116
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Z)V
    .registers 5

    .line 193
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 194
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->b()Lcom/yandex/metrica/impl/bo;

    move-result-object v0

    if-eqz p0, :cond_26

    .line 4202
    iget-object v1, v0, Lcom/yandex/metrica/impl/bo;->k:Lcom/yandex/metrica/impl/i;

    if-nez v1, :cond_1e

    .line 4203
    new-instance v1, Lcom/yandex/metrica/impl/av;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    new-instance v3, Lcom/yandex/metrica/impl/bo$1;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/bo$1;-><init>(Lcom/yandex/metrica/impl/bo;)V

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/av;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/i$a;)V

    iput-object v1, v0, Lcom/yandex/metrica/impl/bo;->k:Lcom/yandex/metrica/impl/i;

    .line 4209
    :cond_1e
    iget-object v1, v0, Lcom/yandex/metrica/impl/bo;->f:Lcom/yandex/metrica/impl/ah;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bo;->k:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ah;->a(Lcom/yandex/metrica/impl/i;)V

    goto :goto_2d

    .line 4211
    :cond_26
    iget-object v1, v0, Lcom/yandex/metrica/impl/bo;->f:Lcom/yandex/metrica/impl/ah;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bo;->k:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ah;->b(Lcom/yandex/metrica/impl/i;)V

    .line 4213
    :goto_2d
    iget-object v0, v0, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->c(Z)V

    return-void

    .line 196
    :cond_33
    sget-object v0, Lcom/yandex/metrica/impl/bo;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/n;->c(Z)V

    return-void
.end method

.method public static declared-synchronized b()Lcom/yandex/metrica/impl/bo;
    .registers 2

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    .line 133
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    if-eqz v1, :cond_b

    .line 136
    sget-object v1, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v0

    return-object v1

    .line 134
    :cond_b
    :try_start_b
    sget-object v1, Lcom/yandex/metrica/impl/bl;->a:Ljava/lang/IllegalStateException;

    throw v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Landroid/content/Context;)Lcom/yandex/metrica/impl/bo;
    .registers 1

    .line 142
    invoke-static {p0}, Lcom/yandex/metrica/impl/bo;->a(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->b()Lcom/yandex/metrica/impl/bo;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .registers 5

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    :try_start_3
    const-string v1, "App Context"

    .line 123
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    if-nez v1, :cond_57

    if-eqz p1, :cond_13

    .line 125
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 126
    :goto_14
    new-instance v2, Lcom/yandex/metrica/impl/bo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/yandex/metrica/impl/bo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    sput-object v2, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    .line 4160
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/metrica/impl/v;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_41

    .line 4167
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/dv;->a(Ljava/util/List;)V

    .line 4168
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/dv;->a(Ljava/util/Map;)V

    .line 4169
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dv;->a(Ljava/lang/String;)V

    .line 4171
    :cond_41
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dv;->d()V

    .line 4162
    iget-object p0, v2, Lcom/yandex/metrica/impl/bo;->g:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/yandex/metrica/impl/utils/h$a;

    iget-object v1, v2, Lcom/yandex/metrica/impl/bo;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/yandex/metrica/impl/utils/h$a;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 128
    sget-object p0, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bo;->a()V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_59

    .line 130
    :cond_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Lcom/yandex/metrica/impl/z;
    .registers 3

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->b()Lcom/yandex/metrica/impl/bo;

    move-result-object v1

    .line 149
    iget-object v2, v1, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;

    if-eqz v2, :cond_f

    .line 152
    iget-object v1, v1, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v0

    return-object v1

    .line 150
    :cond_f
    :try_start_f
    sget-object v1, Lcom/yandex/metrica/impl/bl;->a:Ljava/lang/IllegalStateException;

    throw v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized d()Z
    .registers 2

    const-class v0, Lcom/yandex/metrica/impl/bo;

    monitor-enter v0

    .line 156
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/yandex/metrica/impl/bo;->a:Lcom/yandex/metrica/impl/bo;

    iget-object v1, v1, Lcom/yandex/metrica/impl/bo;->e:Lcom/yandex/metrica/impl/z;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_e
    monitor-exit v0

    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    :catchall_12
    move-exception v1

    monitor-exit v0

    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/bo;->d:Lcom/yandex/metrica/impl/ax;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 5

    .line 99
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2312
    new-instance v1, Lcom/yandex/metrica/impl/ah;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ah;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 2314
    new-instance v0, Lcom/yandex/metrica/impl/av;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bo;->d:Lcom/yandex/metrica/impl/ax;

    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ax;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/bo$2;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/bo$2;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/av;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/i$a;)V

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ah;->a(Lcom/yandex/metrica/impl/i;)V

    .line 99
    iput-object v1, p0, Lcom/yandex/metrica/impl/bo;->f:Lcom/yandex/metrica/impl/ah;

    .line 100
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_19

    .line 297
    :cond_7
    iget-object p1, p0, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/dv;->b(Landroid/os/Bundle;)V

    goto :goto_19

    .line 291
    :cond_d
    iget-object p1, p0, Lcom/yandex/metrica/impl/bo;->h:Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/dv;->a(Landroid/os/Bundle;)V

    .line 292
    iget-object p1, p0, Lcom/yandex/metrica/impl/bo;->j:Lcom/yandex/metrica/impl/g;

    if-eqz p1, :cond_19

    .line 293
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->a()V

    :cond_19
    :goto_19
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/bo;->i:Lcom/yandex/metrica/impl/ar;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ar;->a(Ljava/lang/String;)V

    return-void
.end method
