.class public Lcom/tappx/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/tappx/a/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tappx/a/b;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/b;->b:Lcom/tappx/a/b;

    if-nez v0, :cond_1f

    .line 3
    const-class v1, Lcom/tappx/a/b;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/tappx/a/b;->b:Lcom/tappx/a/b;

    if-nez v0, :cond_1a

    .line 6
    new-instance v0, Lcom/tappx/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tappx/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tappx/a/b;->b:Lcom/tappx/a/b;

    .line 7
    sget-object p0, Lcom/tappx/a/b;->b:Lcom/tappx/a/b;

    monitor-exit v1

    return-object p0

    .line 10
    :cond_1a
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private e()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tappx/a/m0$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/tappx/a/z0$a;

    invoke-virtual {p0}, Lcom/tappx/a/b;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tappx/a/z0$a;-><init>(Lcom/tappx/a/t2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/tappx/a/k1$c;

    invoke-virtual {p0}, Lcom/tappx/a/b;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tappx/a/b;->c()Lcom/tappx/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tappx/a/c;->l()Lcom/tappx/a/v;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tappx/a/k1$c;-><init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/tappx/a/t0$b;

    invoke-virtual {p0}, Lcom/tappx/a/b;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tappx/a/t0$b;-><init>(Lcom/tappx/a/t2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/f3;
    .registers 9

    .line 11
    new-instance v7, Lcom/tappx/a/f3;

    sget-wide v1, Lcom/tappx/a/n$a;->e:J

    sget-wide v3, Lcom/tappx/a/n$a;->f:J

    sget-wide v5, Lcom/tappx/a/n$a;->g:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tappx/a/f3;-><init>(JJJ)V

    return-object v7
.end method

.method public b()Lcom/tappx/a/n0;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/o0;

    invoke-direct {p0}, Lcom/tappx/a/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/o0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method c()Lcom/tappx/a/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/c;->a(Landroid/content/Context;)Lcom/tappx/a/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/tappx/a/t2;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/b;->c()Lcom/tappx/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c;->e()Lcom/tappx/a/t2;

    move-result-object v0

    return-object v0
.end method
