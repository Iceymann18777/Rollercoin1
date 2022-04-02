.class public Lcom/startapp/common/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static volatile a:Lcom/startapp/common/b/a; = null

.field private static volatile b:Lcom/startapp/common/b/a/c; = null

.field private static volatile c:Ljava/lang/Integer; = null

.field private static volatile d:I = 0xea60

.field private static final j:Ljava/util/concurrent/ExecutorService;

.field private static final k:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/common/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/startapp/common/b/a;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 77
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/startapp/common/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/common/b/a;->f:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/common/b/a;->g:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/common/b/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    .line 81
    invoke-direct {p0, p1}, Lcom/startapp/common/b/a;->d(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapp/common/b/a;->i:Z

    return-void
.end method

.method private static a(I)Lcom/startapp/common/b/a/b;
    .registers 4

    .line 428
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/common/b/a/a;

    .line 429
    invoke-interface {v1, p0}, Lcom/startapp/common/b/a/a;->create(I)Lcom/startapp/common/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_9

    :cond_1b
    return-object v1
.end method

.method static synthetic a()Lcom/startapp/common/b/a;
    .registers 1

    .line 48
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/startapp/common/b/a;
    .registers 14

    .line 85
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    if-nez v0, :cond_c9

    .line 86
    const-class v0, Lcom/startapp/common/b/a;

    monitor-enter v0

    .line 87
    :try_start_7
    sget-object v1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    if-nez v1, :cond_c4

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 93
    :cond_15
    new-instance v1, Lcom/startapp/common/b/a;

    invoke-direct {v1, p0}, Lcom/startapp/common/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_c6

    const/4 v1, 0x6

    :try_start_1d
    const-string v2, "RunnerManager"

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "RegisteredClassesNames"

    const/4 v4, 0x0

    .line 97
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c4

    const-string v5, ","

    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    array-length v7, v5

    :goto_3d
    if-ge v3, v7, :cond_9a

    aget-object v8, v5, v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_bc
    .catchall {:try_start_1d .. :try_end_41} :catchall_c6

    const/4 v9, 0x3

    :try_start_42
    const-string v10, "RunnerManager"

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create CLS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 106
    const-class v10, Lcom/startapp/common/b/a/a;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 107
    sget-object v10, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v10, v10, Lcom/startapp/common/b/a;->f:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/startapp/common/b/a/a;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7c

    const/16 v9, 0x2c

    .line 109
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_7c
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_7f} :catch_97
    .catchall {:try_start_42 .. :try_end_7f} :catchall_80

    goto :goto_97

    :catchall_80
    move-exception v9

    :try_start_81
    const-string v10, "RunnerManager"

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v10, v8, v9}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_97
    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 120
    :cond_9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 121
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "RegisteredClassesNames"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b4
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_bb} :catch_bc
    .catchall {:try_start_81 .. :try_end_bb} :catchall_c6

    goto :goto_c4

    :catch_bc
    move-exception p0

    :try_start_bd
    const-string v2, "RunnerManager"

    const-string v3, "create"

    .line 125
    invoke-static {v1, v2, v3, p0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_c4
    :goto_c4
    monitor-exit v0

    goto :goto_c9

    :catchall_c6
    move-exception p0

    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_bd .. :try_end_c8} :catchall_c6

    throw p0

    .line 131
    :cond_c9
    :goto_c9
    sget-object p0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    return-object p0
.end method

.method private static a(Landroid/app/job/JobParameters;)Lcom/startapp/common/b/b;
    .registers 10

    .line 466
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "__RUNNER_RECURRING_ID__"

    .line 468
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-wide/16 v3, 0x0

    const-string v1, "__RUNNER_TRIGGER_ID__"

    .line 469
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 471
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 472
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 474
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2c

    .line 475
    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 479
    :cond_46
    new-instance v0, Lcom/startapp/common/b/b$a;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/startapp/common/b/b$a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/startapp/common/b/b$a;->a(Ljava/util/Map;)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/startapp/common/b/b$a;->a(Z)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/startapp/common/b/b$a;->a(J)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/common/b/b$a;->a()Lcom/startapp/common/b/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Intent;)Lcom/startapp/common/b/b;
    .registers 10

    const-string v0, "__RUNNER_TASK_ID__"

    const/4 v1, -0x1

    .line 447
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "__RUNNER_RECURRING_ID__"

    const/4 v2, 0x0

    .line 448
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "__RUNNER_TRIGGER_ID__"

    const-wide/16 v3, 0x0

    .line 449
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 451
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 452
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 453
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 454
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 455
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_39

    .line 456
    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_57
    const/4 v4, 0x0

    .line 461
    :cond_58
    new-instance p0, Lcom/startapp/common/b/b$a;

    invoke-direct {p0, v0}, Lcom/startapp/common/b/b$a;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/startapp/common/b/b$a;->a(Ljava/util/Map;)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/startapp/common/b/b$a;->a(Z)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/startapp/common/b/b$a;->a(J)Lcom/startapp/common/b/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/common/b/b$a;->a()Lcom/startapp/common/b/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/startapp/common/b/a;)Ljava/util/Map;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/startapp/common/b/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 374
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 378
    sget-object v0, Lcom/startapp/common/b/a;->b:Lcom/startapp/common/b/a/c;

    if-eqz v0, :cond_9

    .line 379
    sget-object v0, Lcom/startapp/common/b/a;->b:Lcom/startapp/common/b/a/c;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/startapp/common/b/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static a(IZ)V
    .registers 7

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "RunnerManager"

    invoke-static {v2, v3, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_17
    invoke-static {p0, p1}, Lcom/startapp/common/b/a;->b(IZ)I

    move-result p0

    .line 350
    sget-object p1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-boolean p1, p1, Lcom/startapp/common/b/a;->i:Z

    if-eqz p1, :cond_54

    .line 351
    invoke-static {}, Lcom/startapp/common/b/a;->b()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 352
    sget-object p1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object p1, p1, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/common/b/a;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p1

    if-nez p1, :cond_32

    return-void

    .line 356
    :cond_32
    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_74

    .line 358
    :cond_36
    sget-object p1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object p1, p1, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/common/b/a;->b(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    if-nez p1, :cond_41

    return-void

    .line 362
    :cond_41
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v2, v2, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    const-class v4, Lcom/startapp/android/publish/common/metaData/InfoEventService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    sget-object v2, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v2, v2, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    invoke-static {v2, v0, p1, p0}, Lcom/startapp/common/b/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/app/AlarmManager;I)V

    goto :goto_74

    .line 366
    :cond_54
    sget-object p1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object p1, p1, Lcom/startapp/common/b/a;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5f} :catch_60

    goto :goto_74

    :catch_60
    move-exception p1

    const/4 v0, 0x6

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v3, p0, p1}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_74
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Landroid/app/AlarmManager;I)V
    .registers 6

    const/high16 v0, 0x8000000

    .line 439
    invoke-static {p0, p3, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    .line 440
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 441
    invoke-virtual {p2, p3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 442
    invoke-virtual {p3}, Landroid/app/PendingIntent;->cancel()V

    :cond_15
    return-void
.end method

.method public static a(Lcom/startapp/common/b/a/a;)V
    .registers 5

    .line 135
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 138
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    const-string v1, "RunnerManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RegisteredClassesNames"

    const/4 v2, 0x0

    .line 139
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_54

    .line 142
    :cond_2f
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_54
    :goto_54
    return-void
.end method

.method public static a(Lcom/startapp/common/b/a/c;)V
    .registers 1

    .line 148
    sput-object p0, Lcom/startapp/common/b/a;->b:Lcom/startapp/common/b/a/c;

    return-void
.end method

.method private static a(ILcom/startapp/common/b/b;)Z
    .registers 10

    .line 260
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/common/b/a;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 265
    :cond_c
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 266
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->b()Ljava/util/Map;

    move-result-object v3

    .line 267
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 268
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 270
    :cond_33
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->e()Z

    move-result v3

    const-string v4, "__RUNNER_RECURRING_ID__"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 271
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v3

    const-string v5, "__RUNNER_TRIGGER_ID__"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 273
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    sget-object v5, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v5, v5, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    const-class v6, Lcom/startapp/android/publish/common/metaData/PeriodicJobService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, p0, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 274
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 275
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->e()Z

    move-result p0

    if-eqz p0, :cond_66

    .line 276
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_79

    .line 278
    :cond_66
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v4

    sget v2, Lcom/startapp/common/b/a;->d:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 281
    :goto_79
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->f()Z

    move-result p0

    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 283
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jobScheduler.schedule "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RunnerManager"

    invoke-static {p1, v2, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_a3

    const/4 v1, 0x1

    :cond_a3
    return v1
.end method

.method public static a(Landroid/app/job/JobParameters;Lcom/startapp/common/b/a/b$b;)Z
    .registers 5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "RunnerManager"

    invoke-static {v1, v2, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p0}, Lcom/startapp/common/b/a;->a(Landroid/app/job/JobParameters;)Lcom/startapp/common/b/b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/startapp/common/b/a;->b(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Intent;Lcom/startapp/common/b/a/b$b;)Z
    .registers 5

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e

    move-object v1, p0

    goto :goto_10

    :cond_e
    const-string v1, "NULL"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "RunnerManager"

    invoke-static {v1, v2, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2b

    .line 386
    invoke-static {p0}, Lcom/startapp/common/b/a;->a(Landroid/content/Intent;)Lcom/startapp/common/b/b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/startapp/common/b/a;->b(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public static a(Lcom/startapp/common/b/b;)Z
    .registers 6

    const-string v0, "RunnerManager"

    .line 186
    :try_start_2
    invoke-virtual {p0}, Lcom/startapp/common/b/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/common/b/b;->e()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/common/b/a;->b(IZ)I

    move-result v1

    const/4 v2, 0x3

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "schedule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/startapp/common/b/a;->c()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 191
    invoke-static {}, Lcom/startapp/common/b/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 192
    invoke-static {v1, p0}, Lcom/startapp/common/b/a;->a(ILcom/startapp/common/b/b;)Z

    move-result p0

    return p0

    .line 194
    :cond_3c
    invoke-static {v1, p0}, Lcom/startapp/common/b/a;->b(ILcom/startapp/common/b/b;)Z

    move-result p0

    return p0

    .line 197
    :cond_41
    invoke-static {v1, p0}, Lcom/startapp/common/b/a;->c(ILcom/startapp/common/b/b;)Z

    move-result p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_46

    return p0

    :catch_46
    move-exception p0

    const/4 v1, 0x6

    const-string v2, "schedule error"

    .line 200
    invoke-static {v1, v0, v2, p0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/startapp/common/b/a;->b(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z

    move-result p0

    return p0
.end method

.method private static b(I)I
    .registers 2

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static b(IZ)I
    .registers 2

    if-eqz p1, :cond_5

    const/high16 p1, -0x80000000

    or-int/2addr p0, p1

    :cond_5
    return p0
.end method

.method private static b(Landroid/content/Context;)Landroid/app/AlarmManager;
    .registers 4

    const-string v0, "alarm"

    .line 484
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-nez p0, :cond_12

    const/4 v0, 0x6

    const-string v1, "RunnerManager"

    const-string v2, "failed to get AlarmManager"

    .line 486
    invoke-static {v0, v1, v2}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object p0
.end method

.method static synthetic b(Lcom/startapp/common/b/a;)Landroid/content/Context;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method private static b()Z
    .registers 2

    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 514
    sget-object v1, Lcom/startapp/common/b/a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 515
    sget-object v0, Lcom/startapp/common/b/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_c
    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static b(ILcom/startapp/common/b/b;)Z
    .registers 10

    .line 289
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/common/b/a;->b(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_c
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v2, v2, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    const-class v3, Lcom/startapp/android/publish/common/metaData/InfoEventService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->b()Ljava/util/Map;

    move-result-object v2

    .line 295
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    :cond_39
    const-string v2, "__RUNNER_TASK_ID__"

    .line 298
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->e()Z

    move-result v2

    const-string v3, "__RUNNER_RECURRING_ID__"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v2

    const-string v4, "__RUNNER_TRIGGER_ID__"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    sget-object v2, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v2, v2, Lcom/startapp/common/b/a;->e:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p0, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 303
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->e()Z

    move-result p0

    if-eqz p0, :cond_75

    const/4 v2, 0x0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_82

    :cond_75
    const/4 p0, 0x3

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, p0, v2, v3, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_82
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z
    .registers 6

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunnerJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/common/b/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/common/b/b;->a()I

    move-result v1

    invoke-static {v1}, Lcom/startapp/common/b/a;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "RunnerManager"

    invoke-static {v1, v2, v0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/startapp/common/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/startapp/common/b/a;->b(I)I

    move-result v0

    .line 400
    invoke-static {v0}, Lcom/startapp/common/b/a;->a(I)Lcom/startapp/common/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 402
    sget-object v2, Lcom/startapp/common/b/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/startapp/common/b/a$2;

    invoke-direct {v3, v1, v0, p0, p1}, Lcom/startapp/common/b/a$2;-><init>(Lcom/startapp/common/b/a/b;ILcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_45
    const/4 v0, 0x5

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runJob: failed to get job for ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/common/b/b;->a()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object p0, Lcom/startapp/common/b/a/b$a;->b:Lcom/startapp/common/b/a/b$a;

    invoke-interface {p1, p0}, Lcom/startapp/common/b/a/b$b;->a(Lcom/startapp/common/b/a/b$a;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .registers 4

    const-string v0, "jobscheduler"

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_12

    const/4 v0, 0x6

    const-string v1, "RunnerManager"

    const-string v2, "failed to get JobScheduler"

    .line 496
    invoke-static {v0, v1, v2}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object p0
.end method

.method private static c()Z
    .registers 1

    .line 538
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-boolean v0, v0, Lcom/startapp/common/b/a;->i:Z

    return v0
.end method

.method private static c(ILcom/startapp/common/b/b;)Z
    .registers 10

    .line 315
    sget-object v0, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object v0, v0, Lcom/startapp/common/b/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 316
    new-instance v2, Lcom/startapp/common/b/a$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/startapp/common/b/a$1;-><init>(IILcom/startapp/common/b/b;)V

    .line 333
    invoke-virtual {p1}, Lcom/startapp/common/b/b;->e()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 334
    sget-object v1, Lcom/startapp/common/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->d()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2e

    .line 336
    :cond_23
    sget-object v1, Lcom/startapp/common/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/startapp/common/b/b;->c()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 338
    :goto_2e
    sget-object p1, Lcom/startapp/common/b/a;->a:Lcom/startapp/common/b/a;

    iget-object p1, p1, Lcom/startapp/common/b/a;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private d(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    .line 523
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 525
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_32

    aget-object v3, p1, v2

    .line 526
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-class v4, Lcom/startapp/android/publish/common/metaData/InfoEventService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_29

    if-eqz v3, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_29
    move-exception p1

    const/4 v1, 0x6

    const-string v2, "RunnerManager"

    const-string v3, "servicesDefined"

    .line 531
    invoke-static {v1, v2, v3, p1}, Lcom/startapp/common/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    return v0
.end method
