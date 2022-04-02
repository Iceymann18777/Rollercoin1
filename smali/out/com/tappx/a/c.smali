.class public Lcom/tappx/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile f:Lcom/tappx/a/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/l<",
            "Lcom/tappx/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/tappx/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/l<",
            "Lcom/tappx/a/t2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/tappx/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/l<",
            "Lcom/tappx/a/v;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/tappx/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/l<",
            "Lcom/tappx/a/d2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/c;->x()V

    .line 4
    new-instance p1, Lcom/tappx/a/l;

    new-instance v0, Lcom/tappx/a/c$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/c$a;-><init>(Lcom/tappx/a/c;)V

    invoke-direct {p1, v0}, Lcom/tappx/a/l;-><init>(Lcom/tappx/a/l$a;)V

    iput-object p1, p0, Lcom/tappx/a/c;->b:Lcom/tappx/a/l;

    .line 10
    new-instance p1, Lcom/tappx/a/l;

    new-instance v0, Lcom/tappx/a/c$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/c$b;-><init>(Lcom/tappx/a/c;)V

    invoke-direct {p1, v0}, Lcom/tappx/a/l;-><init>(Lcom/tappx/a/l$a;)V

    iput-object p1, p0, Lcom/tappx/a/c;->c:Lcom/tappx/a/l;

    .line 16
    new-instance p1, Lcom/tappx/a/l;

    new-instance v0, Lcom/tappx/a/c$c;

    invoke-direct {v0, p0}, Lcom/tappx/a/c$c;-><init>(Lcom/tappx/a/c;)V

    invoke-direct {p1, v0}, Lcom/tappx/a/l;-><init>(Lcom/tappx/a/l$a;)V

    iput-object p1, p0, Lcom/tappx/a/c;->d:Lcom/tappx/a/l;

    .line 22
    new-instance p1, Lcom/tappx/a/l;

    new-instance v0, Lcom/tappx/a/c$d;

    invoke-direct {v0, p0}, Lcom/tappx/a/c$d;-><init>(Lcom/tappx/a/c;)V

    invoke-direct {p1, v0}, Lcom/tappx/a/l;-><init>(Lcom/tappx/a/l$a;)V

    iput-object p1, p0, Lcom/tappx/a/c;->e:Lcom/tappx/a/l;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/c;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tappx/a/c;
    .registers 3

    .line 2
    sget-object v0, Lcom/tappx/a/c;->f:Lcom/tappx/a/c;

    if-nez v0, :cond_1f

    .line 4
    const-class v1, Lcom/tappx/a/c;

    monitor-enter v1

    .line 5
    :try_start_7
    sget-object v0, Lcom/tappx/a/c;->f:Lcom/tappx/a/c;

    if-nez v0, :cond_1a

    .line 7
    new-instance v0, Lcom/tappx/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tappx/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tappx/a/c;->f:Lcom/tappx/a/c;

    .line 8
    sget-object p0, Lcom/tappx/a/c;->f:Lcom/tappx/a/c;

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

.method static synthetic b(Lcom/tappx/a/c;)Lcom/tappx/a/b0;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c;->q()Lcom/tappx/a/b0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/tappx/a/c;)Lcom/tappx/a/s$a;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c;->v()Lcom/tappx/a/s$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/tappx/a/c;)Lcom/tappx/a/q$a;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c;->u()Lcom/tappx/a/q$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/tappx/a/c;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/tappx/a/c;)Lcom/tappx/a/n2;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c;->s()Lcom/tappx/a/n2;

    move-result-object p0

    return-object p0
.end method

.method private p()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/tappx/a/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/tappx/a/b0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->b:Lcom/tappx/a/l;

    invoke-virtual {v0}, Lcom/tappx/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/b0;

    return-object v0
.end method

.method private r()Lcom/tappx/a/d2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->e:Lcom/tappx/a/l;

    invoke-virtual {v0}, Lcom/tappx/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/d2;

    return-object v0
.end method

.method private s()Lcom/tappx/a/n2;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/tappx/a/j1$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/j1$a;->a(Landroid/content/Context;)Lcom/tappx/a/j1$a;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/tappx/a/q$a;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/q$a;

    invoke-direct {p0}, Lcom/tappx/a/c;->w()Lcom/tappx/a/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/q$a;-><init>(Lcom/tappx/a/x;)V

    return-object v0
.end method

.method private v()Lcom/tappx/a/s$a;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/s$a;

    invoke-direct {p0}, Lcom/tappx/a/c;->w()Lcom/tappx/a/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/s$a;-><init>(Lcom/tappx/a/x;)V

    return-object v0
.end method

.method private w()Lcom/tappx/a/x;
    .registers 2

    .line 1
    new-instance v0, Lcom/tappx/a/x;

    invoke-direct {v0}, Lcom/tappx/a/x;-><init>()V

    return-object v0
.end method

.method private x()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/p;

    iget-object v1, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tappx/a/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tappx/a/p;->a()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/k0;
    .registers 2

    .line 11
    new-instance v0, Lcom/tappx/a/k0;

    invoke-direct {v0}, Lcom/tappx/a/k0;-><init>()V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c()Lcom/tappx/a/l0$a;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/l0$a;->a(Landroid/content/Context;)Lcom/tappx/a/l0$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/tappx/a/p0$b;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/p0$b;->a(Landroid/content/Context;)Lcom/tappx/a/p0$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/tappx/a/t2;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c;->c:Lcom/tappx/a/l;

    invoke-virtual {v0}, Lcom/tappx/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/t2;

    return-object v0
.end method

.method public f()Lcom/tappx/a/g1$b;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/g1$b;->a(Landroid/content/Context;)Lcom/tappx/a/g1$b;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/tappx/a/h1;
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/h1;

    iget-object v1, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tappx/a/h1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public h()Lcom/tappx/a/i1$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/i1$a;->a(Landroid/content/Context;)Lcom/tappx/a/i1$a;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/tappx/a/u$b;
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/u$b;

    invoke-virtual {p0}, Lcom/tappx/a/c;->k()Lcom/tappx/a/m1$a;

    move-result-object v1

    new-instance v2, Lcom/tappx/a/t;

    invoke-virtual {p0}, Lcom/tappx/a/c;->j()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tappx/a/t;-><init>(Landroid/content/SharedPreferences;)V

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/c;->t()Lcom/tappx/a/j1$a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tappx/a/c;->c()Lcom/tappx/a/l0$a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tappx/a/u$b;-><init>(Lcom/tappx/a/m1$a;Lcom/tappx/a/t;Lcom/tappx/a/j1$a;Lcom/tappx/a/l0$a;)V

    return-object v0
.end method

.method public j()Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    const-string v1, "tappx"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/tappx/a/m1$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/m1$a;->a(Landroid/content/Context;)Lcom/tappx/a/m1$a;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/tappx/a/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->d:Lcom/tappx/a/l;

    invoke-virtual {v0}, Lcom/tappx/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/v;

    return-object v0
.end method

.method public m()Lcom/tappx/a/y2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/z2;->a(Landroid/content/Context;)Lcom/tappx/a/y2;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/tappx/a/y$a;
    .registers 10

    .line 1
    new-instance v8, Lcom/tappx/a/y$a;

    invoke-direct {p0}, Lcom/tappx/a/c;->w()Lcom/tappx/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tappx/a/c;->d()Lcom/tappx/a/p0$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tappx/a/c;->k()Lcom/tappx/a/m1$a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tappx/a/c;->c()Lcom/tappx/a/l0$a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tappx/a/c;->h()Lcom/tappx/a/i1$a;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tappx/a/c;->f()Lcom/tappx/a/g1$b;

    move-result-object v6

    invoke-direct {p0}, Lcom/tappx/a/c;->t()Lcom/tappx/a/j1$a;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tappx/a/y$a;-><init>(Lcom/tappx/a/x;Lcom/tappx/a/p0$b;Lcom/tappx/a/m1$a;Lcom/tappx/a/l0$a;Lcom/tappx/a/i1$a;Lcom/tappx/a/g1$b;Lcom/tappx/a/j1$a;)V

    return-object v8
.end method

.method public o()Lcom/tappx/a/q1;
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/r1;

    invoke-virtual {p0}, Lcom/tappx/a/c;->l()Lcom/tappx/a/v;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tappx/a/c;->a()Lcom/tappx/a/k0;

    move-result-object v2

    invoke-direct {p0}, Lcom/tappx/a/c;->r()Lcom/tappx/a/d2;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tappx/a/r1;-><init>(Lcom/tappx/a/v;Lcom/tappx/a/k0;Lcom/tappx/a/d2;)V

    return-object v0
.end method
