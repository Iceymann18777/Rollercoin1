.class public Lcom/yandex/metrica/impl/ob/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/u;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/yandex/metrica/impl/ob/r;

.field private g:Lcom/yandex/metrica/impl/ob/ca;

.field private h:Lcom/yandex/metrica/impl/ob/cc;

.field private i:Lcom/yandex/metrica/impl/ob/by;

.field private j:Lcom/yandex/metrica/impl/ob/cd;

.field private k:Lcom/yandex/metrica/CounterConfiguration;

.field private final l:Lcom/yandex/metrica/impl/ba;

.field private m:Lcom/yandex/metrica/impl/bj;

.field private n:Lcom/yandex/metrica/impl/ob/bn;

.field private o:Lcom/yandex/metrica/impl/ob/v;

.field private p:Lcom/yandex/metrica/impl/a;

.field private q:Lcom/yandex/metrica/impl/ob/q;

.field private r:J

.field private s:J

.field private t:I

.field private u:I

.field private volatile v:Lcom/yandex/metrica/impl/ob/bi;

.field private final w:Lcom/yandex/metrica/impl/utils/j;

.field private x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V
    .registers 13

    .line 100
    new-instance v6, Lcom/yandex/metrica/impl/ba;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ba;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/ba;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/ba;)V
    .registers 12

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    .line 60
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z

    .line 89
    new-instance v1, Lcom/yandex/metrica/impl/utils/j;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/utils/j;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->w:Lcom/yandex/metrica/impl/utils/j;

    .line 498
    new-instance v1, Lcom/yandex/metrica/impl/ob/t$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/t$1;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->x:Ljava/lang/Runnable;

    .line 111
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    .line 114
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 1180
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->J()Z

    move-result p4

    if-eqz p4, :cond_44

    .line 1197
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {p4}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p4

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/yandex/metrica/impl/ob/bp;->b(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p4

    .line 1198
    new-instance p6, Lcom/yandex/metrica/impl/ob/ca;

    invoke-direct {p6, p4}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    .line 1199
    new-instance p6, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {p6, p4}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/by;

    .line 1184
    :cond_44
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {p4}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p4

    .line 1185
    new-instance p6, Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v1

    invoke-direct {p6, v1}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    .line 1187
    new-instance p6, Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/bp;->d()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p4

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, p4, v1}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/cd;

    .line 1510
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result p4

    .line 1511
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->J()Z

    move-result p6

    if-eqz p6, :cond_97

    iget-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/ca;->d()J

    move-result-wide v1

    int-to-long v3, p4

    cmp-long p4, v1, v3

    if-gez p4, :cond_97

    .line 1512
    new-instance p4, Lcom/yandex/metrica/impl/ob/db;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->D()Lcom/yandex/metrica/impl/ob/dc;

    move-result-object p6

    invoke-direct {p4, p6}, Lcom/yandex/metrica/impl/ob/db;-><init>(Lcom/yandex/metrica/impl/ob/dc;)V

    .line 1513
    new-instance p6, Lcom/yandex/metrica/impl/ob/s;

    invoke-direct {p6, p0, p4}, Lcom/yandex/metrica/impl/ob/s;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V

    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/s;->a()V

    .line 1514
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {p4, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->u(J)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    .line 120
    :cond_97
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->J()Z

    move-result p4

    if-eqz p4, :cond_115

    .line 121
    new-instance p4, Lcom/yandex/metrica/impl/ob/bn;

    iget-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {p6}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p6

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bo;

    move-result-object p6

    invoke-direct {p4, p0, p6}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/ob/bo;)V

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    .line 123
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    const-wide/16 v1, 0x0

    invoke-virtual {p4, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->c(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    .line 124
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {p4, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->d(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/t;->s:J

    .line 125
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    const/4 p6, -0x1

    invoke-virtual {p4, p6}, Lcom/yandex/metrica/impl/ob/ca;->a(I)I

    move-result p4

    iput p4, p0, Lcom/yandex/metrica/impl/ob/t;->t:I

    .line 126
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/yandex/metrica/impl/bk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/t;->u:I

    .line 128
    new-instance p1, Lcom/yandex/metrica/impl/ob/bi;

    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-direct {p1, p0, p4}, Lcom/yandex/metrica/impl/ob/bi;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ca;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    .line 130
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    .line 131
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {p5, p0, p1}, Lcom/yandex/metrica/impl/ob/q;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ca;)Lcom/yandex/metrica/impl/a;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    .line 132
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result p1

    if-eqz p1, :cond_115

    .line 133
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p1

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p5

    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v0

    const/4 p5, 0x1

    iget-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {p6}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object p6

    iget-object p6, p6, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    aput-object p6, p4, p5

    const-string p5, "Read app environment for component %s. Value: %s"

    invoke-virtual {p1, p5, p4}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_115
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "TaskHandler ["

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance p1, Landroid/os/Handler;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    .line 141
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 143
    new-instance p1, Lcom/yandex/metrica/impl/bj;

    invoke-direct {p1, p0, p2}, Lcom/yandex/metrica/impl/bj;-><init>(Lcom/yandex/metrica/impl/ob/t;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bj;

    .line 144
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    if-eqz p1, :cond_156

    .line 146
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/u;)V

    .line 149
    :cond_156
    new-instance p1, Lcom/yandex/metrica/impl/ob/y;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/y;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 150
    new-instance p2, Lcom/yandex/metrica/impl/ob/ab;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    return-void
.end method

.method private J()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private K()V
    .registers 5

    .line 6029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 406
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:J

    .line 407
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->n(J)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    return-void
.end method

.method private b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V
    .registers 5

    .line 226
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 227
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 229
    :cond_11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v1, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;Lcom/yandex/metrica/impl/a$a;)V

    .line 231
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bj;->b()V

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->x()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 436
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->x()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 437
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->J()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 438
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->M()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .registers 2

    .line 442
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->y()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 443
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->K()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 444
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->M()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public C()Lcom/yandex/metrica/impl/ob/by;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public D()Lcom/yandex/metrica/impl/ob/dc;
    .registers 4

    .line 453
    new-instance v0, Lcom/yandex/metrica/impl/ob/dc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public E()Lcom/yandex/metrica/impl/ob/cd;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/cd;

    return-object v0
.end method

.method public F()Lcom/yandex/metrica/impl/ob/ca;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    return-object v0
.end method

.method public G()Z
    .registers 4

    .line 8478
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cc;->a()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 8482
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v0, v2, :cond_16

    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public H()Z
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->w()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/cd;

    .line 491
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->d()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public I()Lcom/yandex/metrica/impl/ob/ca;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    return-object v0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/bi;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    .line 4338
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4339
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 4341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 325
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/cc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cc;->h()V

    :cond_24
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 2

    monitor-enter p0

    .line 235
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 236
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ba;->e(Lcom/yandex/metrica/impl/ob/t;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 237
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/h;)V
    .registers 4

    .line 158
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 159
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const-string v1, "Event received on service"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/j;->a(Lcom/yandex/metrica/impl/h;Ljava/lang/String;)V

    .line 163
    :cond_13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 168
    :cond_20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ba;->c(Lcom/yandex/metrica/impl/ob/t;)V

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;)Z

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V
    .registers 4

    .line 4329
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cd;->e(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    return-void
.end method

.method public b()V
    .registers 7

    .line 241
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bn;->a()J

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->c()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 244
    :goto_15
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 247
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->f()V

    .line 248
    iput-boolean v4, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    :cond_1f
    return-void
.end method

.method public b(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/h;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cc;->h()V

    .line 389
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cd;->s(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 495
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    return-void
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 253
    :try_start_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 256
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 258
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 262
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/yandex/metrica/impl/h;)V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->e()Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    return-void
.end method

.method public d()V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->x:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ad;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Lcom/yandex/metrica/impl/h;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bi;->b(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2333
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bi;->d()Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    goto :goto_45

    .line 211
    :cond_20
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 212
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->d()Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    .line 3333
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->d()Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    return-void

    .line 217
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->v:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->d()Lcom/yandex/metrica/impl/ob/bj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;)V

    return-void
.end method

.method public declared-synchronized e()V
    .registers 2

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 270
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/yandex/metrica/impl/h;)V
    .registers 3

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 347
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->v()V

    return-void
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->a()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 279
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/yandex/metrica/impl/h;)V
    .registers 2

    .line 351
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 352
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->K()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/yandex/metrica/impl/h;)V
    .registers 2

    .line 356
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 357
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->w()V

    return-void
.end method

.method public h()Lcom/yandex/metrica/impl/ba;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/ba;

    return-object v0
.end method

.method public h(Lcom/yandex/metrica/impl/h;)V
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->j()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/a;->a(Landroid/os/Bundle;)V

    .line 370
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/q;->a(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/ca;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 372
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 373
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p1, p1, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Save new app environment for %s. Value: %s"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public i()Lcom/yandex/metrica/impl/ob/bn;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bn;

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/CounterConfiguration;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method public k()Landroid/os/ResultReceiver;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->a()Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/r;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    return-object v0
.end method

.method public m()Landroid/content/Context;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    return-object v0
.end method

.method public n()Landroid/os/Handler;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized o()Z
    .registers 2

    monitor-enter p0

    .line 319
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Lcom/yandex/metrica/impl/utils/j;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->w:Lcom/yandex/metrica/impl/utils/j;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_17

    .line 331
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->s()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 332
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->w:Lcom/yandex/metrica/impl/utils/j;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/j;->a()V

    .line 334
    :cond_17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->w:Lcom/yandex/metrica/impl/utils/j;

    return-object v0
.end method

.method public q()V
    .registers 1

    .line 361
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->K()V

    return-void
.end method

.method public r()V
    .registers 1

    .line 365
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->w()V

    return-void
.end method

.method public s()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->a()V

    .line 380
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/q;->b(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/ca;)V

    return-void
.end method

.method public t()Ljava/lang/String;
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cc;->b()Lcom/yandex/metrica/impl/ob/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cc;->h()V

    return-void
.end method

.method public v()V
    .registers 5

    .line 5029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 401
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    .line 402
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->m(J)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    return-void
.end method

.method w()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:I

    .line 413
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ca;->b(I)Lcom/yandex/metrica/impl/ob/ca;

    return-void
.end method

.method x()Z
    .registers 6

    .line 7029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 422
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/t;->s:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/yandex/metrica/impl/ob/bh;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method y()Z
    .registers 3

    .line 427
    iget v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/t;->u:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .registers 8

    .line 8029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 7417
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/yandex/metrica/impl/ob/bh;->a:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_22

    .line 431
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->M()Z

    move-result v0

    if-eqz v0, :cond_22

    return v4

    :cond_22
    return v5
.end method
