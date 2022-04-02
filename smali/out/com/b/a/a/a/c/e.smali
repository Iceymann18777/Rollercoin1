.class public Lcom/b/a/a/a/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/a/a/c;
.implements Lcom/b/a/a/a/c/b$a;


# static fields
.field private static a:Lcom/b/a/a/a/c/e;


# instance fields
.field private b:F

.field private final c:Lcom/b/a/a/a/a/e;

.field private final d:Lcom/b/a/a/a/a/b;

.field private e:Lcom/b/a/a/a/a/d;

.field private f:Lcom/b/a/a/a/c/a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/a/e;Lcom/b/a/a/a/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/a/c/e;->b:F

    iput-object p1, p0, Lcom/b/a/a/a/c/e;->c:Lcom/b/a/a/a/a/e;

    iput-object p2, p0, Lcom/b/a/a/a/c/e;->d:Lcom/b/a/a/a/a/b;

    return-void
.end method

.method public static a()Lcom/b/a/a/a/c/e;
    .registers 3

    sget-object v0, Lcom/b/a/a/a/c/e;->a:Lcom/b/a/a/a/c/e;

    if-nez v0, :cond_15

    new-instance v0, Lcom/b/a/a/a/a/b;

    invoke-direct {v0}, Lcom/b/a/a/a/a/b;-><init>()V

    new-instance v1, Lcom/b/a/a/a/a/e;

    invoke-direct {v1}, Lcom/b/a/a/a/a/e;-><init>()V

    new-instance v2, Lcom/b/a/a/a/c/e;

    invoke-direct {v2, v1, v0}, Lcom/b/a/a/a/c/e;-><init>(Lcom/b/a/a/a/a/e;Lcom/b/a/a/a/a/b;)V

    sput-object v2, Lcom/b/a/a/a/c/e;->a:Lcom/b/a/a/a/c/e;

    :cond_15
    sget-object v0, Lcom/b/a/a/a/c/e;->a:Lcom/b/a/a/a/c/e;

    return-object v0
.end method

.method private e()Lcom/b/a/a/a/c/a;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/c/e;->f:Lcom/b/a/a/a/c/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/b/a/a/a/c/a;->a()Lcom/b/a/a/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/c/e;->f:Lcom/b/a/a/a/c/a;

    :cond_a
    iget-object v0, p0, Lcom/b/a/a/a/c/e;->f:Lcom/b/a/a/a/c/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 4

    iput p1, p0, Lcom/b/a/a/a/c/e;->b:F

    invoke-direct {p0}, Lcom/b/a/a/a/c/e;->e()Lcom/b/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/a/b/i;

    invoke-virtual {v1}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/b/a/a/a/g/a;->a(F)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/b/a/a/a/c/e;->d:Lcom/b/a/a/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/a/b;->a()Lcom/b/a/a/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/c/e;->c:Lcom/b/a/a/a/a/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/b/a/a/a/a/e;->a(Landroid/os/Handler;Landroid/content/Context;Lcom/b/a/a/a/a/a;Lcom/b/a/a/a/a/c;)Lcom/b/a/a/a/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/a/c/e;->e:Lcom/b/a/a/a/a/d;

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/b/a/a/a/h/a;->a()Lcom/b/a/a/a/h/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/h/a;->b()V

    goto :goto_11

    :cond_a
    invoke-static {}, Lcom/b/a/a/a/h/a;->a()Lcom/b/a/a/a/h/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/h/a;->d()V

    :goto_11
    return-void
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/b/a/a/a/c/b;->a()Lcom/b/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/a/a/c/b;->a(Lcom/b/a/a/a/c/b$a;)V

    invoke-static {}, Lcom/b/a/a/a/c/b;->a()Lcom/b/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c/b;->b()V

    invoke-static {}, Lcom/b/a/a/a/c/b;->a()Lcom/b/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/b/a/a/a/h/a;->a()Lcom/b/a/a/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/h/a;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/b/a/a/a/c/e;->e:Lcom/b/a/a/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/a/a/d;->a()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/b/a/a/a/h/a;->a()Lcom/b/a/a/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/h/a;->c()V

    invoke-static {}, Lcom/b/a/a/a/c/b;->a()Lcom/b/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c/b;->c()V

    iget-object v0, p0, Lcom/b/a/a/a/c/e;->e:Lcom/b/a/a/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/a/a/d;->b()V

    return-void
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/b/a/a/a/c/e;->b:F

    return v0
.end method
