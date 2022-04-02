.class public Lcom/tappx/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/tappx/a/i;


# instance fields
.field private final a:Lcom/tappx/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/tappx/a/c;->a(Landroid/content/Context;)Lcom/tappx/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/i;->a:Lcom/tappx/a/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tappx/a/i;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/i;->b:Lcom/tappx/a/i;

    if-nez v0, :cond_15

    .line 3
    const-class v1, Lcom/tappx/a/i;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/tappx/a/i;->b:Lcom/tappx/a/i;

    if-nez v0, :cond_10

    .line 6
    new-instance v0, Lcom/tappx/a/i;

    invoke-direct {v0, p0}, Lcom/tappx/a/i;-><init>(Landroid/content/Context;)V

    .line 8
    :cond_10
    monitor-exit v1

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-object v0
.end method

.method private c()Lcom/tappx/a/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i;->a:Lcom/tappx/a/c;

    invoke-virtual {v0}, Lcom/tappx/a/c;->l()Lcom/tappx/a/v;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/tappx/a/t2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i;->a:Lcom/tappx/a/c;

    invoke-virtual {v0}, Lcom/tappx/a/c;->e()Lcom/tappx/a/t2;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tappx/a/d1$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/tappx/a/b1$a;

    invoke-direct {p0}, Lcom/tappx/a/i;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tappx/a/b1$a;-><init>(Lcom/tappx/a/t2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/tappx/a/l1$c;

    invoke-direct {p0}, Lcom/tappx/a/i;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-direct {p0}, Lcom/tappx/a/i;->c()Lcom/tappx/a/v;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tappx/a/l1$c;-><init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/tappx/a/u0$b;

    invoke-direct {p0}, Lcom/tappx/a/i;->d()Lcom/tappx/a/t2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tappx/a/u0$b;-><init>(Lcom/tappx/a/t2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/f3;
    .registers 9

    .line 9
    new-instance v7, Lcom/tappx/a/f3;

    sget-wide v1, Lcom/tappx/a/n$a;->h:J

    sget-wide v3, Lcom/tappx/a/n$a;->i:J

    sget-wide v5, Lcom/tappx/a/n$a;->j:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tappx/a/f3;-><init>(JJJ)V

    return-object v7
.end method

.method public b()Lcom/tappx/a/e1;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/f1;

    invoke-direct {p0}, Lcom/tappx/a/i;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/f1;-><init>(Ljava/util/List;)V

    return-object v0
.end method
