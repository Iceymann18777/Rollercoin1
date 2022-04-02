.class public Lcom/yandex/metrica/impl/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ag$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/ExecutorService;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/yandex/metrica/impl/ob/q;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/MetricaService$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/cp;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cp;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ag;->d:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/q;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/q;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ag;->f:Lcom/yandex/metrica/impl/ob/q;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$b;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/yandex/metrica/impl/ag;->b:Lcom/yandex/metrica/MetricaService$b;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;
    .registers 11

    if-eqz p1, :cond_34

    .line 6246
    sget-object v0, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/t;

    if-nez v0, :cond_30

    .line 6249
    new-instance v0, Lcom/yandex/metrica/impl/ob/t;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    sget-object v3, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/Executor;

    sget-object v6, Lcom/yandex/metrica/impl/ag;->f:Lcom/yandex/metrica/impl/ob/q;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V

    if-eqz p3, :cond_26

    .line 6252
    invoke-static {p3}, Lcom/yandex/metrica/impl/p;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 6253
    :cond_26
    sget-object p0, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 6258
    :cond_30
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(ILcom/yandex/metrica/impl/h;Landroid/os/Bundle;)V
    .registers 11

    .line 479
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/h;->n()Z

    move-result v0

    if-nez v0, :cond_17

    .line 480
    new-instance v0, Lcom/yandex/metrica/impl/ag$a;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ag$a;-><init>(Lcom/yandex/metrica/impl/ag;Landroid/content/Context;Lcom/yandex/metrica/impl/h;Landroid/os/Bundle;I)V

    .line 481
    sget-object p1, Lcom/yandex/metrica/impl/ag;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ag;->b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ag;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ag;ZZ)V
    .registers 4

    .line 7229
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/CounterConfiguration;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/t;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 7390
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->o()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Z
    .registers 5

    .line 7415
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    .line 7416
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->e()V

    return v2

    .line 7418
    :cond_11
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 7419
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;)V

    return v2

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/content/Intent;I)V
    .registers 13

    if-eqz p1, :cond_a1

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1c

    .line 4386
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v2, 0x1

    :goto_1d
    if-nez v2, :cond_a1

    .line 3430
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/h;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    .line 3433
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/h;->n()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3434
    sget-object v3, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    .line 3435
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v3

    const-string v4, "EXTRA_KEY_KEY_START_TYPE"

    .line 3434
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "EXTRA_KEY_KEY_START_EVENT"

    .line 3436
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3437
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 3440
    :cond_4c
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/h;->m()Z

    move-result v3

    .line 3441
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/h;->n()Z

    move-result v4

    or-int/2addr v3, v4

    if-nez v3, :cond_a1

    const-string v3, "EXTRA_KEY_LIB_CFG"

    .line 3448
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_60

    goto :goto_64

    .line 3449
    :cond_60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 3450
    :goto_64
    invoke-static {v3}, Lcom/yandex/metrica/CounterConfiguration;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v8

    if-nez v8, :cond_6b

    const/4 v0, 0x1

    :cond_6b
    if-nez v0, :cond_a1

    .line 3455
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p1

    .line 3457
    invoke-static {v8, p1}, Lcom/yandex/metrica/impl/ag;->b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 3459
    invoke-direct {p0, v8}, Lcom/yandex/metrica/impl/ag;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 3462
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/h;->e()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;)V

    .line 3467
    :try_start_88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1, p1}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v7

    .line 3468
    new-instance p1, Lcom/yandex/metrica/impl/ob/t;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    sget-object v6, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/Executor;

    sget-object v9, Lcom/yandex/metrica/impl/ag;->f:Lcom/yandex/metrica/impl/ob/q;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V

    .line 3469
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    .line 3471
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->d()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a1} :catch_a1

    .line 189
    :catch_a1
    :cond_a1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->b:Lcom/yandex/metrica/MetricaService$b;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/MetricaService$b;->a(I)V

    return-void
.end method

.method private b(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 4

    .line 362
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 363
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ag;->c(Lcom/yandex/metrica/CounterConfiguration;)V

    return-void

    .line 365
    :cond_e
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ci;->d()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    if-nez v0, :cond_2f

    .line 367
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ag;->c(Lcom/yandex/metrica/CounterConfiguration;)V

    :cond_2f
    return-void
.end method

.method private static b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V
    .registers 3

    .line 380
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 381
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .registers 1

    .line 48
    sget-object v0, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ci;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 375
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/r;
    .registers 6

    .line 402
    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 403
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->l()Ljava/lang/String;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    .line 5327
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p3, 0x0

    .line 5328
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p2

    .line 5329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5330
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p3, 0x1

    :cond_2f
    if-eqz p3, :cond_40

    .line 406
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/r;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    goto :goto_40

    .line 409
    :cond_36
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3, v1}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    :cond_40
    :goto_40
    return-object v1
.end method

.method public a()V
    .registers 6

    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/bd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bd;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bd;->a(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/yandex/metrica/impl/utils/k;->a()Lcom/yandex/metrica/impl/utils/k;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/k;->a(Landroid/content/Context;)V

    .line 1049
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 78
    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 1151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->d()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v0

    .line 1152
    new-instance v1, Lcom/yandex/metrica/impl/ob/cd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    .line 1153
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/co;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    const/4 v3, 0x0

    .line 1162
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/cd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/cd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/yandex/metrica/impl/ob/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ob/cd;)V

    .line 82
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 147
    invoke-static {p2}, Lcom/yandex/metrica/impl/h;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/metrica/impl/ag;->a(ILcom/yandex/metrica/impl/h;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 139
    new-instance v0, Lcom/yandex/metrica/impl/h;

    invoke-direct {v0, p4, p2, p3}, Lcom/yandex/metrica/impl/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p5}, Lcom/yandex/metrica/impl/ag;->a(ILcom/yandex/metrica/impl/h;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 2

    .line 100
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dr;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dr;->a()V

    .line 1221
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;)V

    .line 1225
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ef;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ef;->a()V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 3

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ag;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 4

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/yandex/metrica/impl/ag;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/cd;)V
    .registers 5

    .line 166
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->l()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 168
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;)V

    return-void

    .line 171
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/o;

    new-instance v2, Lcom/yandex/metrica/impl/ob/ds;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/ds;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/o;-><init>(Lcom/yandex/metrica/impl/ob/ds;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method public b()V
    .registers 2

    .line 3210
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/y;->b(Ljava/lang/Object;)V

    .line 3211
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ef;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ef;->b()V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 2

    .line 108
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dr;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dr;->a()V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .registers 7

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    monitor-enter v0

    .line 2193
    :try_start_b
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2195
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2196
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/t;

    if-eqz v3, :cond_3f

    if-eqz v2, :cond_3f

    .line 2239
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v4, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v4, 0x1

    :goto_40
    if-eqz v4, :cond_1a

    .line 2200
    sget-object v4, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1a

    .line 2202
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->c()V

    goto :goto_1a

    .line 121
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_60

    .line 123
    sget-object p1, Lcom/yandex/metrica/impl/ag;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 124
    iget-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dr;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dr;->b()V

    :cond_5f
    return-void

    :catchall_60
    move-exception p1

    .line 121
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw p1

    :goto_64
    goto :goto_63
.end method
